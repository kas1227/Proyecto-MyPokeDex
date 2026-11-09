# Guía de implementación — MyPokedex v4

> Para el usuario. El código lo escribes tú; el agente revisa, explica y documenta.
> Modelo de referencia: [`BITACORA.md` § 3](BITACORA.md#3-modelo-de-datos-diseño-propuesto).
> Esta guía se actualiza a medida que avanzas; el historial va en la bitácora.

---

## Cómo se trabaja en esta etapa

**Todo se verifica desde Spring Boot: compilar, arrancar y leer la consola.** No se ejecuta SQL a mano ni se configuran tablas manualmente.

Hibernate (`spring.jpa.hibernate.ddl-auto=update`) crea y actualiza **tablas y constraints** a partir de las entidades. La base de datos en sí no la crea Hibernate: si no existiera, el arranque fallaría con `Unknown database`. Como el servidor ya arrancó, ese punto está resuelto.

**Ciclo de cada paso:**

```
escribir la entidad  →  .\mvnw.cmd -q compile  →  .\mvnw.cmd spring-boot:run  →  leer la consola  →  commit
```

---

## Antes de empezar: qué necesitas

| Requisito | Cómo verificarlo | Esperado |
| --- | --- | --- |
| JDK | `java -version` | 25 |
| Maven wrapper | `.\mvnw.cmd -v` | Maven + Java 25 |
| MySQL en ejecución | abrir el servicio / Workbench | el motor responde |
| App arrancando | `.\mvnw.cmd spring-boot:run` | `Started MypokedexApiApplication` |

> **Directorio de trabajo:** todos los comandos se ejecutan desde `MyPokeDex_v4\api`. Los de Git del Paso 0.3 usan `-C ..` para apuntar al repositorio.

**Regla de oro:** un paso = una entidad (o un par relacionadas) = un commit. No sigas al siguiente hasta que el anterior arranque limpio.

---

## Paso 0 — Línea base

La app ya arrancó, así que este paso es solo de orden: dejar el proyecto en un punto conocido antes de modificarlo.

### 0.1 Leer el arranque

```
.\mvnw.cmd spring-boot:run
```

En la consola busca:

- `Started MypokedexApiApplication in ...` → arranque correcto.
- Líneas `Hibernate: create table ...` / `alter table ...` → DDL que aplicó.
- `Table 'mypokedexv1.pokemon' doesn't exist` u otro error de esquema → lo veremos en la revisión.

Si no aparecen las líneas de DDL, agrega temporalmente en `application.properties`:

```properties
logging.level.org.hibernate.tool.schema=DEBUG
```

Es solo para observar; no cambia el modelo.

### 0.2 Limpiar el índice de Git

La carpeta `MyPokeDex/` ya no existe en disco, pero quedó en staging como entrada fantasma:

```powershell
git -C .. rm -r --cached MyPokeDex
```

> Si dice que la ruta no existe en el índice, ya estaba limpia.
> `MyPokeDex_v3` también tiene archivos en staging, pero **no se toca**: está fuera del alcance.

### 0.3 Commit de línea base

```powershell
git -C .. add api
git -C .. commit -m "chore(api): linea base del proyecto v4"
```

**Hecho cuando:** la app arranca, el commit existe y `git status` ya no muestra `MyPokeDex/`.

---

## Paso 1 — `Pokemon` (desbloquea el arranque)

**Archivo:** `src/main/java/com/mypokedex/api/pokemon/model/entity/Pokemon.java`

### Qué cambiar

1. **Quitar** `@GeneratedValue` de `nationalDexnumber` — solo la PK se genera.
2. Renombrar el campo a **`nationalDexNumber`** (camelCase, coherente con `national_dex_number`).
3. `nationalDexNumber` → `@Column(nullable = false, unique = true)`.
4. `name` → `@Column(nullable = false, length = 100)`.
5. Añadir `@Table(name = "pokemon", indexes = @Index(name = "idx_pokemon_name", columnList = "name"))`.
6. Añadir `@EqualsAndHashCode(onlyExplicitlyIncluded = true)` a la clase y `@EqualsAndHashCode.Include` al `id` (ver **Anexo A**, con ejemplo y matices).

### Cómo verificar

```
.\mvnw.cmd -q compile
.\mvnw.cmd spring-boot:run
```

En la consola debe verse la creación/actualización de `pokemon` con `national_dex_number` **unique** y el índice `idx_pokemon_name`.

### Señal de alarma

Si en el DDL `national_dex_number` aparece como `auto_increment`, el `@GeneratedValue` sigue ahí. Es exactamente el bug que este paso elimina.

### Si la tabla `pokemon` ya existía con el nombre viejo

`ddl-auto=update` **no renombra columnas**: al cambiar `nationalDexnumber` por `nationalDexNumber` se agrega la columna nueva y queda la vieja como `NOT NULL`, lo que hará fallar los inserts futuros.

Sin ejecutar SQL, se resuelve una sola vez:

1. Cambia `spring.jpa.hibernate.ddl-auto` a `create`.
2. Arranca la app (Hibernate **borra y recrea** las tablas).
3. Vuelve a dejarlo en `update` y arranca otra vez.

Como el proyecto aún no tiene datos, no se pierde nada. Es la forma de "resetear el esquema" sin salir de Spring.

---

## Paso 2 — `Region`

**Archivo nuevo:** `.../model/entity/Region.java`

### Reglas

- `id` `Long` + `@GeneratedValue(strategy = IDENTITY)`.
- `name` `String` `@Column(nullable = false, length = 30, unique = true)`.
- `@Table(name = "region")`.

### Verificar

Compila y arranca; en el DDL aparece `region` con `name` unique.

> `Region` no depende de nadie: es la raíz del catálogo. Si algo falla aquí, es del entorno o del mapeo, no del modelo.

---

## Paso 3 — Tipos: `PokemonType` + `PokemonTypeAssignment`

**Archivos nuevos:**
- `.../model/entity/PokemonType.java`
- `.../model/entity/PokemonTypeAssignment.java`

**Archivo a editar:** `Pokemon.java` (colección + helper).

### Reglas

`PokemonType`:
- `name` UNIQUE, `length = 30`.

`PokemonTypeAssignment` (entidad intermedia, no un M—N plano):
- `pokemon` y `pokemonType` con `@ManyToOne(fetch = LAZY, optional = false)`.
- `slot` `Integer` `nullable = false` (1 = primario, 2 = secundario).
- `@Table` con UQ(`pokemon_id`, `slot`) y UQ(`pokemon_id`, `pokemon_type_id`).

`Pokemon`:
- `@OneToMany(mappedBy = "pokemon", cascade = ALL, orphanRemoval = true)`, `@OrderBy("slot ASC")`.
- `@Setter(AccessLevel.NONE)` en la lista + método `addTypeAssignment(...)` que mantenga los dos lados.

### Verificar

En el DDL de `pokemon_type_assignment` deben aparecer las dos UNIQUE y las dos FK.

### Por qué así

Un `@ElementCollection` de enums no permite ordenar los dos tipos ni traducir nombres; un `@ManyToMany` plano no puede imponer unicidad por `slot`. La entidad intermedia sí.

---

## Paso 4 — `Game` + `Pokedex` + `game_pokedex`

**Archivos nuevos:** `Game.java`, `Pokedex.java`

### Reglas

`Game`:
- `name` (`length = 50`), `slug` (`length = 50`, **UNIQUE**), `generation` (`Integer`).
- `region` `@ManyToOne(LAZY, optional = false)`.
- `@ManyToMany(LAZY)` hacia `Pokedex` con tabla `game_pokedex` (`game_id`, `pokedex_id`).

`Pokedex` (Pokédex **regional**):
- `name`, `slug` UNIQUE, `region` `@ManyToOne(LAZY)`.

### Verificar

En el DDL debe aparecer `game_pokedex` con PK compuesta o UNIQUE(`game_id`,`pokedex_id`).

> El N—N existe para que Rojo Fuego y Verde Hoja compartan las mismas tres Pokédex sin duplicar entradas.

---

## Paso 5 — `PokedexEntry`

**Archivo nuevo:** `PokedexEntry.java`

### Reglas

- `pokedex` y `pokemon` con `@ManyToOne(LAZY, optional = false)`.
- `entryNumber` `Integer` `nullable = false` (número **regional**).
- UQ(`pokedex_id`, `pokemon_id`) y UQ(`pokedex_id`, `entry_number`).

### Verificar

En el DDL deben verse las dos UNIQUE.

### El error que hay que evitar

No agregues `regionalNumber` a `Pokemon`. El número es relativo a la Pokédex; si lo pones en la especie, Rojo Fuego (3 Pokédex) se rompe.

---

## Paso 6 — `Location`

**Archivo nuevo:** `Location.java`

### Reglas

- `name` (`length = 80`), `slug` (`length = 80`).
- `region` `@ManyToOne(LAZY, optional = false)`.
- UQ(`region_id`, `slug`).

### Verificar

En el DDL aparece `location` con la UNIQUE compuesta.

> **Regla de negocio pendiente:** una `PokemonAcquisition` debe usar una `Location` de la misma región que su `Game`. La BD no lo garantiza con una FK simple; se valida en el servicio, más adelante.

---

## Paso 7 — `ObtainMethod` + `PokemonAcquisition`

**Archivos:** `.../model/enums/ObtainMethod.java`, `.../model/entity/PokemonAcquisition.java`

### Reglas

`ObtainMethod`: `WILD`, `STATIC_ENCOUNTER`, `EVOLUTION`, `GIFT`, `TRADE`, `FOSSIL`, `GAME_CORNER`, `EVENT`.

`PokemonAcquisition`:
- `pokemon`, `game` → `@ManyToOne(LAZY, optional = false)`.
- `location` → `@ManyToOne(LAZY)` **nullable** (regalo, intercambio y evolución no tienen ruta).
- `method` → `@Enumerated(STRING)` `length = 30`, `nullable = false`.
- `minLevel`, `maxLevel` `Integer`; `notes` `length = 255`.
- Índices: (`game_id`, `method`) y (`location_id`).

### Verificar

En el DDL, `location_id` debe ser **nullable** y los índices deben aparecer.

---

## Paso 8 — Tracking: enums + `Trainer` + `Playthrough` + `PokemonStatus`

**Archivos:** `DexStatus.java`, `PlaythroughStatus.java`, `Trainer.java`, `Playthrough.java`, `PokemonStatus.java`

### Reglas

- `DexStatus`: `SEEN`, `CAUGHT`.
- `PlaythroughStatus`: `ACTIVE`, `COMPLETED`, `ABANDONED`.
- `Trainer`: `name`, `slug` UNIQUE (perfil local, **sin login**).
- `Playthrough`: `trainer` y `game` `@ManyToOne(LAZY, optional = false)`, `status` STRING, `nickname`, `startedAt`, `finishedAt` (nullable).
- `PokemonStatus`: `playthrough` y `pokemon` `@ManyToOne(LAZY, optional = false)`, `status` STRING, `caughtAt` (nullable), `notes`; UQ(`playthrough_id`, `pokemon_id`).
- **No** agregues `location_id` aquí: quedó fuera del MVP.

### Verificar

En el DDL aparece `pokemon_status` con la UNIQUE(`playthrough_id`,`pokemon_id`) y sin `location_id`.

### El error que hay que evitar

No pongas `caught` en `PokedexEntry`. El estado es del jugador y de una partida; el catálogo no sabe quién juega.

---

## Verificación al cerrar cada paso (Definition of Done)

Un paso está terminado cuando **las cuatro** se cumplen:

1. `.\mvnw.cmd -q compile` sin errores ni warnings nuevos.
2. `.\mvnw.cmd spring-boot:run` arranca y llega a `Started MypokedexApiApplication`.
3. En la consola se ve el DDL esperado de la tabla (o al menos no hay errores de esquema).
4. Commit: `feat(model): agrega <Entidad>`.

> Las restricciones (UNIQUE, FK) se **prueban de verdad** cuando existan repositorios y tests. En esta etapa se verifican leyendo el DDL que genera Hibernate.

---

## Errores típicos y qué significan

| Síntoma en consola | Causa probable | Qué revisar |
| --- | --- | --- |
| `Unknown database 'mypokedexv1'` | la base no existe | crearla una vez, o agregar `createDatabaseIfNotExist=true` a la URL |
| `Table 'mypokedexv1.x' doesn't exist` | `ddl-auto` no es `update` o el arranque falló antes del DDL | `application.properties` y el primer error del stacktrace |
| `Specified key was too long` | UNIQUE sobre `varchar` muy largo | `length` de la columna |
| `Incorrect string value` | charset de la base no soporta acentos | usar `utf8mb4` en la base (una vez) |
| `Caused by: org.hibernate.AnnotationException` | mapeo inválido (p. ej. `@GeneratedValue` fuera del `@Id`) | la entidad y el mensaje completo |
| `HHH000511: The 5.5.5 version ... is no longer supported` | servidor MySQL 5.5 o MariaDB anunciándose como 5.5.5 | usar `MariaDBDialect` + driver de MariaDB, o actualizar el servidor |
| `Cannot add or update a child row` | FK a un id inexistente | orden de inserción de datos de prueba |
| `LazyInitializationException` (más adelante) | `open-in-view=false` y acceso fuera de la transacción | `@EntityGraph` / *fetch join* |
| `StackOverflowError` o JSON infinito | `toString`/serialización sobre relaciones bidireccionales | `equals`/`hashCode` por id, DTOs |

---

## Cómo pedirme la revisión

Después de cada paso, mándame:

1. **La ruta** del archivo (o los archivos) que tocaste.
2. **El contenido** (o el diff).
3. **Las últimas líneas de la consola** del arranque (donde está `Started ...` y el DDL de la tabla nueva).
4. Si hubo error, **el stacktrace completo** (no solo la última línea).

Reviso contra el checklist de la bitácora (3.10): constraints, FKs, `nullable`, enums STRING, `equals/hashCode`, `LAZY` y anti-patrones. Te devuelvo observaciones **sin modificar nada**; si quieres que lo corrija yo, me lo dices explícitamente.

---

## Plan de sesiones sugerido

| Sesión | Pasos | Resultado |
| --- | --- | --- |
| 1 | 0 – 3 | línea base, `pokemon`, `region` y tipos |
| 2 | 4 – 5 | juegos, Pokédex regionales y entradas con número regional |
| 3 | 6 – 8 | rutas, obtenciones y tracking completo |

Al terminar la sesión 3 el modelo está completo y recién ahí tiene sentido empezar repositorios y servicios.

---

## Anexo A — `equals`/`hashCode` en entidades (ejemplo didáctico)

> Ejemplo de referencia. No se copia a los archivos sin que el usuario lo decida.

### Por qué no dejarlo por defecto

Sin declararlo, una entidad usa la identidad de `Object`: dos objetos que representan **la misma fila** de la BD resultan distintos. Eso rompe en `Set`, en `contains()` y al comparar una entidad *managed* con una *detached* (por ejemplo, un objeto deserializado de un JSON).

### Opción A — Lombok (corta)

```java
import lombok.EqualsAndHashCode;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "pokemon",
       indexes = @Index(name = "idx_pokemon_name", columnList = "name"))
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Pokemon {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private Long id;

    @Column(nullable = false, length = 100)
    private String name;

    @Column(name = "national_dex_number", nullable = false, unique = true)
    private Integer nationalDexNumber;
}
```

Lombok genera, en esencia:

```java
@Override
public boolean equals(Object o) {
    if (o == this) return true;
    if (!(o instanceof Pokemon)) return false;
    Pokemon other = (Pokemon) o;
    if (!other.canEqual(this)) return false;
    return java.util.Objects.equals(this.id, other.id);
}

@Override
public int hashCode() {
    final int PRIME = 59;
    int result = 1;
    result = result * PRIME + (this.id == null ? 43 : this.id.hashCode());
    return result;
}

protected boolean canEqual(Object other) {
    return other instanceof Pokemon;
}
```

**El matiz:** `Objects.equals(null, null)` devuelve `true`. Dos entidades **nuevas** (ambas con `id = null`) se consideran iguales. Con `Set`, una "desaparecería". Para un catálogo que siempre se guarda antes de referenciarse no suele ser problema, pero hay que saberlo.

### Opción B — manual y segura con ids nulos (recomendada aquí)

```java
@Override
public boolean equals(Object o) {
    if (this == o) return true;
    if (!(o instanceof Pokemon other)) return false;
    return id != null && id.equals(other.id);
}

@Override
public int hashCode() {
    return getClass().hashCode();
}
```

Por qué:

- `id != null` evita que dos entidades nuevas sean "iguales".
- El `hashCode` constante evita el otro problema clásico: si el hash se calcula con `id`, cambia de `null` a un valor al guardar, y un objeto que ya estaba en un `HashSet` se "pierde". Un hash constante es correcto (aunque menos eficiente); con colecciones pequeñas no importa.

### Opción C — clave de negocio (`nationalDexNumber`)

```java
@Override
public boolean equals(Object o) {
    if (this == o) return true;
    if (!(o instanceof Pokemon other)) return false;
    return nationalDexNumber != null
            && nationalDexNumber.equals(other.nationalDexNumber);
}

@Override
public int hashCode() {
    return getClass().hashCode();
}
```

Sirve cuando el dato es **inmutable y único**. Aquí `nationalDexNumber` cumple ambas cosas, pero si algún día se corrige un número, la igualdad cambia. Es una alternativa válida, no la predeterminada.

### Reglas que no se negocian

1. **Nunca** incluir relaciones `LAZY` en `equals`/`hashCode`: dispara consultas (o falla fuera de la transacción).
2. **Nunca** comparar por todos los campos: cualquier cambio de dato altera la identidad.
3. `equals` y `hashCode` se escriben **juntos** y con las mismas reglas.
4. No usar `@Data` en entidades: genera ambos métodos con todas las relaciones.
5. Si la entidad participa en `Set` o se compara antes de persistir, usar la Opción B.
6. **Nunca meter una entidad *transient* (sin `id`) en un `Set`/`Map` si `equals`/`hashCode` usan el `id`.** Persistir primero, o cambiar a `@UuidGenerator` / Opción B. Ver "Anexo A bis".

---

## Anexo A bis — `@GeneratedValue` + `equals`/`hashCode` por `id`: cuándo sí y cuándo no

> Con el id autogenerado, el `id` **no existe** hasta el `INSERT`. Eso crea dos fases en la vida de cada entidad: *transient* (`id = null`) y *managed* (`id` asignado).

### Lo que genera Lombok con `@EqualsAndHashCode.Include` en `id`

```java
// equals
return Objects.equals(this.id, other.id);

// hashCode
result = 43;                                  // cuando id == null
result = result * 59 + this.id.hashCode();    // cuando id != null
```

### Consecuencia 1 — dos entidades nuevas son "iguales"

```java
Pokemon a = new Pokemon();
Pokemon b = new Pokemon();
a.equals(b);          // true   ← representan Pokémon distintos
```

En un `Set` eso significa que **una desaparece**:

```java
Set<Pokemon> set = new HashSet<>();
set.add(a);
set.add(b);
set.size();           // 1
```

### Consecuencia 2 — el `hashCode` cambia al persistir

```java
Set<Pokemon> set = new HashSet<>();
Pokemon p = new Pokemon();
p.setName("Bulbasaur");
set.add(p);                      // cubo calculado con id = null
pokemonRepository.save(p);       // INSERT → id = 1
set.contains(p);                 // false  ← el objeto se "perdió"
set.size();                      // 1, pero ya no se encuentra
```

El objeto sigue en el `Set`, pero en un cubo que ya no le corresponde. Es la causa clásica de duplicados silenciosos y de fugas de memoria.

### Lo que sí es seguro

| Escenario | Seguro |
| --- | --- |
| Entidad cargada de la BD (tiene `id`) → se mete en un `Set` | sí |
| Entidad nueva → `save()` → después se mete en un `Set` | sí |
| Entidad nueva → se mete en un `Set` → después `save()` | **no** |
| Dos entidades nuevas comparadas entre sí | **no** (dan `true`) |
| Comparar entidad *managed* con una *detached* de la misma fila | sí (mismo `id`) |
| Comparar entidad *transient* con una *managed* | no (siempre `false`) |

### La alternativa que elimina el problema: `@UuidGenerator`

```java
@Id
@UuidGenerator
@EqualsAndHashCode.Include
private UUID id;
```

El `id` se asigna **antes** del `INSERT`, así que no hay fase *transient*: `equals`/`hashCode` son estables desde el `new`. Coste: PK de 16 bytes en vez de 8, y pierdes el autoincremental legible.

### La alternativa de la Opción B (manual)

```java
@Override
public boolean equals(Object o) {
    if (this == o) return true;
    if (!(o instanceof Pokemon other)) return false;
    return id != null && id.equals(other.id);
}

@Override
public int hashCode() {
    return getClass().hashCode();   // estable para siempre
}
```

Sin fase transitoria falsa y sin `hashCode` cambiante. Coste: un hash constante degrada `HashSet`/`HashMap` a búsqueda lineal (irrelevante con decenas de elementos, relevante con millones).

---

## Anexo B — Entidad intermedia con atributos (`PokemonTypeAssignment`)

> Ejemplo didáctico de una relación N—N que **necesita un dato propio** (`slot`). No se copia a los archivos sin decisión del usuario.

### 1. `PokemonType` (catálogo de tipos)

```java
package com.mypokedex.api.pokemon.model.entity;

import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "pokemon_type")
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class PokemonType {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private Long id;

    @Column(nullable = false, length = 30, unique = true)
    private String name;
}
```

### 2. `PokemonTypeAssignment` (la relación, con `slot`)

```java
package com.mypokedex.api.pokemon.model.entity;

import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(
    name = "pokemon_type_assignment",
    uniqueConstraints = {
        @UniqueConstraint(name = "uk_assignment_pokemon_slot",
                          columnNames = {"pokemon_id", "slot"}),
        @UniqueConstraint(name = "uk_assignment_pokemon_type",
                          columnNames = {"pokemon_id", "pokemon_type_id"})
    }
)
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class PokemonTypeAssignment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "pokemon_id", nullable = false)
    private Pokemon pokemon;            // lado dueño de la FK

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "pokemon_type_id", nullable = false)
    private PokemonType pokemonType;

    @Column(nullable = false)
    private Integer slot;               // 1 = primario, 2 = secundario
}
```

### 3. El lado inverso en `Pokemon`

```java
import java.util.ArrayList;
import java.util.List;
import lombok.AccessLevel;

    @Setter(AccessLevel.NONE)
    @OneToMany(mappedBy = "pokemon",
               cascade = CascadeType.ALL,
               orphanRemoval = true)
    @OrderBy("slot ASC")
    private List<PokemonTypeAssignment> typeAssignments = new ArrayList<>();

    public void addTypeAssignment(PokemonTypeAssignment assignment) {
        typeAssignments.add(assignment);
        assignment.setPokemon(this);    // imprescindible
    }
```

### Cómo se usa

```java
Pokemon bulbasaur = new Pokemon();
bulbasaur.setName("Bulbasaur");
bulbasaur.setNationalDexNumber(1);

PokemonType grass = new PokemonType();
grass.setName("GRASS");
PokemonType poison = new PokemonType();
poison.setName("POISON");

PokemonTypeAssignment primario = new PokemonTypeAssignment();
primario.setPokemonType(grass);
primario.setSlot(1);

PokemonTypeAssignment secundario = new PokemonTypeAssignment();
secundario.setPokemonType(poison);
secundario.setSlot(2);

bulbasaur.addTypeAssignment(primario);
bulbasaur.addTypeAssignment(secundario);

pokemonRepository.save(bulbasaur);  // cascade guarda los tres
```

### DDL esperado (resumen)

```sql
create table pokemon_type (
    id bigint not null auto_increment,
    name varchar(30) not null,
    primary key (id)
);
alter table pokemon_type add constraint UK_... unique (name);

create table pokemon_type_assignment (
    id bigint not null auto_increment,
    slot integer not null,
    pokemon_id bigint not null,
    pokemon_type_id bigint not null,
    primary key (id),
    constraint uk_assignment_pokemon_slot unique (pokemon_id, slot),
    constraint uk_assignment_pokemon_type unique (pokemon_id, pokemon_type_id)
);
alter table pokemon_type_assignment
    add constraint FK_... foreign key (pokemon_id) references pokemon (id);
alter table pokemon_type_assignment
    add constraint FK_... foreign key (pokemon_type_id) references pokemon_type (id);
```

### Errores típicos

| Síntoma | Causa |
| --- | --- |
| `Column 'pokemon_id' cannot be null` | se agregó a la lista sin `assignment.setPokemon(this)` |
| Aparece una tabla extra tipo `pokemon_type_assignments` | falta `mappedBy` en el `@OneToMany` |
| Los tipos no se guardan | falta `cascade = ALL` |
| `Duplicate entry ... for key 'uk_assignment_pokemon_slot'` | dos tipos en el mismo `slot` |
| `Duplicate entry ... uk_assignment_pokemon_type` | el mismo tipo repetido en un Pokémon |
| Muchas consultas al leer Pokémon | `FetchType.EAGER` o acceso a la colección fuera de la transacción |

### Reglas asociadas

- `slot` solo admite `1` o `2`: se valida en el servicio (la BD no lo impone con una FK).
- El `@OrderBy("slot ASC")` da el orden primario/secundario sin depender del id.
- `orphanRemoval = true` hace que quitar un assignment de la lista lo borre de la BD.
- No incluir `typeAssignments` en `equals`/`hashCode` (rompería por `LAZY`).

---

## Anexo C — Relación N—N con `@JoinTable` (`Game` ↔ `Pokedex`)

> Ejemplo didáctico del Paso 4. No se copia a los archivos sin decisión del usuario.

### 1. `Pokedex` (lado inverso)

```java
package com.mypokedex.api.pokemon.model.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.LinkedHashSet;
import java.util.Set;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "pokedex")
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Pokedex {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private Long id;

    @Column(nullable = false, length = 50)
    private String name;

    @Column(nullable = false, length = 50, unique = true)
    private String slug;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "region_id", nullable = false)
    private Region region;

    // lado inverso: NO declara @JoinTable
    @Setter(AccessLevel.NONE)
    @ManyToMany(mappedBy = "pokedexes", fetch = FetchType.LAZY)
    private Set<Game> games = new LinkedHashSet<>();
}
```

### 2. `Game` (lado dueño del `@JoinTable`)

```java
package com.mypokedex.api.pokemon.model.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.LinkedHashSet;
import java.util.Set;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "game")
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Game {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private Long id;

    @Column(nullable = false, length = 50)
    private String name;

    @Column(nullable = false, length = 50, unique = true)
    private String slug;

    @Column(nullable = false)
    private Integer generation;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "region_id", nullable = false)
    private Region region;

    @Setter(AccessLevel.NONE)
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "game_pokedex",
        joinColumns        = @JoinColumn(name = "game_id", nullable = false),
        inverseJoinColumns = @JoinColumn(name = "pokedex_id", nullable = false)
    )
    private Set<Pokedex> pokedexes = new LinkedHashSet<>();

    public void addPokedex(Pokedex pokedex) {
        pokedexes.add(pokedex);
        pokedex.getGames().add(this);   // sincroniza el lado inverso en memoria
    }

    public void removePokedex(Pokedex pokedex) {
        pokedexes.remove(pokedex);
        pokedex.getGames().remove(this);
    }
}
```

### Qué significa cada parte del `@JoinTable`

| Elemento | Qué hace | Si se omite |
| --- | --- | --- |
| `name = "game_pokedex"` | nombre de la tabla de unión | Hibernate inventa `game_pokedexes` o similar |
| `joinColumns` | columna que apunta a **la entidad dueña** (`Game`) | se genera `game_id` por defecto, pero sin control del nombre |
| `inverseJoinColumns` | columna que apunta a **la otra entidad** (`Pokedex`) | idem |
| `mappedBy` (en `Pokedex`) | dice que la tabla la escribe `Game` | si falta, se crean **dos** tablas de unión |

La regla mnemotécnica: **`joinColumns` = mi lado; `inverseJoinColumns` = el lado de enfrente.** Invertirlos compila igual y funciona igual, pero deja `game_id` apuntando a `pokedex` y viceversa: un esquema que miente.

### DDL esperado

```sql
create table pokedex (
    id bigint not null auto_increment,
    name varchar(50) not null,
    slug varchar(50) not null,
    region_id bigint not null,
    primary key (id)
);
alter table pokedex add constraint UK_... unique (slug);
alter table pokedex add constraint FK_... foreign key (region_id) references region (id);

create table game (
    id bigint not null auto_increment,
    name varchar(50) not null,
    slug varchar(50) not null,
    generation integer not null,
    region_id bigint not null,
    primary key (id)
);
alter table game add constraint UK_... unique (slug);
alter table game add constraint FK_... foreign key (region_id) references region (id);

create table game_pokedex (
    game_id bigint not null,
    pokedex_id bigint not null,
    primary key (game_id, pokedex_id)          -- lo genera Hibernate
);
alter table game_pokedex add constraint FK_... foreign key (game_id) references game (id);
alter table game_pokedex add constraint FK_... foreign key (pokedex_id) references pokedex (id);
```

### Decisiones de diseño detrás del ejemplo

| Decisión | Por qué |
| --- | --- |
| `Set` en vez de `List` | con `List`, Hibernate borra y reinserta todas las filas de `game_pokedex` al modificarla; con `Set` solo toca lo que cambia |
| `LinkedHashSet` en vez de `HashSet` | mantiene el orden de inserción al leer, sin coste extra |
| **Sin** `cascade` | `Game` y `Pokedex` son catálogos: guardar uno no debe arrastrar al otro |
| **Sin** `orphanRemoval` | en `@ManyToMany` es inválido: Hibernate lanza excepción al arrancar |
| `region` obligatoria en `Pokedex` | una Pokédex regional siempre pertenece a una región; la Nacional no es una `Pokedex` |
| Colecciones fuera de `equals`/`hashCode` | son `LAZY`; incluirlas dispara consultas y puede fallar fuera de la transacción |

### Errores típicos

| Síntoma | Causa |
| --- | --- |
| Aparecen `game_pokedex` y `pokedex_game` | los dos lados declaran `@JoinTable`; uno debe llevar `mappedBy` |
| `game_pokedexes` en vez de `game_pokedex` | falta `name` en `@JoinTable` |
| `game_id` referencia `pokedex` | `joinColumns` e `inverseJoinColumns` invertidos |
| `HHH000179: ... orphan removal` o excepción al arrancar | `orphanRemoval = true` en un `@ManyToMany` |
| Borrados y reinserciones masivas en `game_pokedex` | colección `List` en vez de `Set` |
| `MultipleBagFetchException` al hacer `join fetch` | dos `List` cargadas con `fetch join` a la vez |
| `LazyInitializationException` al serializar | `open-in-view=false` y la entidad se usa fuera de la transacción: hay que resolver la carga en el servicio |

---

## Anexo D — Relación con dato propio y clave natural (`PokedexEntry`)

> Ejemplo didáctico del Paso 5. No se copia a los archivos sin decisión del usuario.

### Por qué existe esta tabla

`Pokemon` ↔ `Pokedex` es una N—N **con un dato propio**: el número regional. Sin entidad intermedia habría que poner `regionalNumber` en `Pokemon`, y eso es falso: el mismo Pokémon tiene números distintos en Pokédex distintas.

```text
Pokemon #1 Bulbasaur
  → Pokédex Kanto    : número 001
  → Pokédex Seteñas  : número 001 (otra numeración, coincidencia)
  → Pokédex Nacional : número 001
```

El número pertenece al **par** (Pokédex, Pokémon), no a la especie.

### 1. Entidad

```java
package com.mypokedex.api.pokemon.model.entity;

import jakarta.persistence.*;
import lombok.*;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(
    name = "pokedex_entry",
    uniqueConstraints = {
        @UniqueConstraint(name = "uk_pokedex_entry_pokemon",
                          columnNames = {"pokedex_id", "pokemon_id"}),
        @UniqueConstraint(name = "uk_pokedex_entry_number",
                          columnNames = {"pokedex_id", "entry_number"})
    }
)
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class PokedexEntry {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "pokedex_id", nullable = false)
    private Pokedex pokedex;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "pokemon_id", nullable = false)
    private Pokemon pokemon;

    @Column(name = "entry_number", nullable = false)
    private Integer entryNumber;
}
```

### Las dos UNIQUE no son redundantes

| Constraint | Regla que impone | Qué error produce si se viola |
| --- | --- | --- |
| `uk_pokedex_entry_pokemon` (`pokedex_id`, `pokemon_id`) | un Pokémon aparece **una sola vez** en una Pokédex | `Duplicate entry '3-25' for key 'uk_pokedex_entry_pokemon'` |
| `uk_pokedex_entry_number` (`pokedex_id`, `entry_number`) | un número **no se repite** dentro de la misma Pokédex | `Duplicate entry '3-25' for key 'uk_pokedex_entry_number'` |

Cubren cosas distintas: la primera impide duplicar a Pikachu, la segunda impide dos Pokémon con el número 25.

### DDL esperado

```sql
create table pokedex_entry (
    id bigint not null auto_increment,
    entry_number integer not null,
    pokemon_id bigint not null,
    pokedex_id bigint not null,
    primary key (id),
    constraint uk_pokedex_entry_pokemon unique (pokedex_id, pokemon_id),
    constraint uk_pokedex_entry_number  unique (pokedex_id, entry_number)
);
alter table pokedex_entry add constraint FK_... foreign key (pokemon_id) references pokemon (id);
alter table pokedex_entry add constraint FK_... foreign key (pokedex_id) references pokedex (id);
```

**Detalle de rendimiento gratis:** las dos UNIQUE empiezan por `pokedex_id`, así que sirven como índice para "todas las entradas de esta Pokédex". No hace falta crear un índice extra sobre `pokedex_id`.

### Cómo se usa (en el servicio)

```java
// 1. La Pokédex y el Pokémon deben existir ya.
Pokedex kanto = pokedexRepository.findBySlug("kanto").orElseThrow();
Pokemon bulbasaur = pokemonRepository.findById(1L).orElseThrow();

// 2. La entrada une los dos con su número regional.
PokedexEntry entrada = new PokedexEntry();
entrada.setPokedex(kanto);
entrada.setPokemon(bulbasaur);
entrada.setEntryNumber(1);

pokedexEntryRepository.save(entrada);
```

Sin `cascade`: `PokedexEntry` no es dueño de sus extremos. Si pusieras `cascade = ALL` y guardaras una entrada con una `Pokedex` recién creada, Hibernate intentaría guardar la Pokédex **desde la entrada**, lo cual confunde responsabilidades y puede duplicar filas.

### Query típica: qué falta en una Pokédex

```java
// Todas las entradas, en orden de número regional
List<PokedexEntry> findByPokedexSlugOrderByEntryNumberAsc(String slug);
```

```sql
-- equivalente en JPQL
select e from PokedexEntry e
where e.pokedex.slug = :slug
order by e.entryNumber asc
```

Cada entrada trae `pokemon` en `LAZY`. Para evitar el N+1:

```java
@Query("""
        select e from PokedexEntry e
        join fetch e.pokemon
        where e.pokedex.slug = :slug
        order by e.entryNumber asc
        """)
List<PokedexEntry> findWithPokemonByPokedexSlug(String slug);
```

### ¿Por qué `id` y no PK compuesta (`pokedex_id`, `pokemon_id`)?

| Opción | A favor | En contra |
| --- | --- | --- |
| `id` sustituto (elegida) | simple, `save()`/`findById()` sin ceremonias, FK de una columna si algún día otra tabla la referencia | permite dos filas con el mismo par… salvo que la UNIQUE lo impide |
| `@EmbeddedId` / `@IdClass` | la PK *es* la regla de negocio | cada `find` necesita un objeto clave, más código, más fricción con Spring Data |

Con la UNIQUE, el `id` sustituto no sacrifica ninguna garantía. La clave natural se puede añadir después si aparece la necesidad real.

### Errores típicos

| Síntoma | Causa |
| --- | --- |
| `Duplicate entry ... uk_pokedex_entry_number` | dos Pokémon con el mismo número en la misma Pokédex (revisar la numeración) |
| `Duplicate entry ... uk_pokedex_entry_pokemon` | se intentó registrar el mismo Pokémon dos veces en una Pokédex |
| `Column 'pokemon_id' cannot be null` | se guardó sin setear `pokemon` (o con `null` de un `findById`) |
| `TransientObjectException` | se asignó una entidad **sin guardar** sin `cascade` |
| N+1 consultas al listar entradas | `pokemon` en `LAZY` y acceso dentro de un bucle: usar `join fetch` |
| Un Pokémon aparece con dos números | se puso el número en `Pokemon` o se duplicó la fila |

### Reglas asociadas

- El número regional **nunca** vive en `Pokemon`.
- `entryNumber` es `Integer` (no `int`) para distinguir "sin dato" de "cero", aunque la columna sea `NOT NULL`.
- No añadir `cascade` en estas relaciones: la entrada no posee ni a la Pokédex ni al Pokémon.
- Las entradas se crean **después** de la Pokédex y del Pokémon: es un catálogo derivado, no autónomo.

---

## Anexo E — `game_region`, `Location`, `ObtainMethod` y `PokemonAcquisition`

> Ejemplo didáctico del bloque final de catálogo. No se copia a los archivos sin decisión del usuario.

### E.1 `Game` — pierde `region`, gana `regions` y `pokedexes`

```java
package com.mypokedex.api.pokemon.model.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.LinkedHashSet;
import java.util.Set;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "game")
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Game {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private Long id;

    @Column(nullable = false, length = 50)
    private String name;

    @Column(nullable = false, length = 50, unique = true)
    private String slug;

    @Column(nullable = false)
    private Integer generation;

    // Regiones que cubre el juego (Oro/Plata: Johto + Kanto)
    @Setter(AccessLevel.NONE)
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "game_region",
        joinColumns        = @JoinColumn(name = "game_id"),
        inverseJoinColumns = @JoinColumn(name = "region_id")
    )
    private Set<Region> regions = new LinkedHashSet<>();

    // Pokédex que usa el juego (Rojo Fuego: Kanto, Seteñas, Nacional)
    @Setter(AccessLevel.NONE)
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "game_pokedex",
        joinColumns        = @JoinColumn(name = "game_id"),
        inverseJoinColumns = @JoinColumn(name = "pokedex_id")
    )
    private Set<Pokedex> pokedexes = new LinkedHashSet<>();

    public void addRegion(Region region)    { regions.add(region); }
    public void removeRegion(Region region) { regions.remove(region); }

    public void addPokedex(Pokedex pokedex) {
        pokedexes.add(pokedex);
        pokedex.getGames().add(this);   // lado inverso de Pokedex
    }

    public void removePokedex(Pokedex pokedex) {
        pokedexes.remove(pokedex);
        pokedex.getGames().remove(this);
    }
}
```

**Nota:** `regions` es **unidireccional** (no existe `Region.games`). Solo se mapea la colección inversa cuando de verdad se recorre; aquí el recorrido útil es *juego → regiones*, no al revés. `pokedexes` sí es bidireccional porque `Pokedex.games` ya existe.

### E.2 `Region` — solo falta `equals`/`hashCode`

```java
@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "region")
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Region {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private Long id;

    @Column(nullable = false, length = 30, unique = true)
    private String name;
}
```

Ninguna colección nueva: `game_region` es propiedad de `Game`.

### E.3 `Location`

```java
package com.mypokedex.api.pokemon.model.entity;

import jakarta.persistence.*;
import lombok.*;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(
    name = "location",
    uniqueConstraints = @UniqueConstraint(name = "uk_location_game_slug",
                                          columnNames = {"game_id", "slug"})
)
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Location {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private Long id;

    @Column(nullable = false, length = 60)
    private String name;    // "Ruta 1"

    @Column(nullable = false, length = 60)
    private String slug;    // "ruta-1"

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "game_id", nullable = false)
    private Game game;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "region_id", nullable = false)
    private Region region;
}
```

**Sin índice extra en `game_id`:** la UNIQUE (`game_id`, `slug`) ya empieza por `game_id` y sirve como índice para "rutas de este juego". Un índice adicional sería redundante.

### E.4 `ObtainMethod` + `MethodCategory`

```java
package com.mypokedex.api.pokemon.model.entity;

import jakarta.persistence.*;
import lombok.*;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "obtain_method")
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class ObtainMethod {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private Long id;

    @Column(nullable = false, length = 30, unique = true)
    private String code;      // WILD, GIFT, EVOLUTION...

    @Column(nullable = false, length = 50)
    private String label;     // "Encuentro salvaje"

    @Enumerated(EnumType.STRING)
    @Column(nullable = false, length = 20)
    private MethodCategory category;   // WILD | SPECIAL

    @Column(name = "display_order", nullable = false)
    private Integer displayOrder;
}
```

```java
package com.mypokedex.api.pokemon.model.entity;

public enum MethodCategory {
    WILD,       // se consigue recorriendo el mapa
    SPECIAL     // evolución, intercambio, regalo, evento...
}
```

Seed sugerido (filas, no código):

| code | label | category | display_order |
| --- | --- | --- | --- |
| `WILD` | Encuentro salvaje | `WILD` | 1 |
| `STATIC` | Encuentro estático | `WILD` | 2 |
| `GIFT` | Regalo | `SPECIAL` | 3 |
| `EVOLUTION` | Evolución | `SPECIAL` | 4 |
| `TRADE` | Intercambio | `SPECIAL` | 5 |
| `FOSSIL` | Fósil | `SPECIAL` | 6 |
| `GAME_CORNER` | Casino | `SPECIAL` | 7 |
| `EVENT` | Evento | `SPECIAL` | 8 |

### E.5 `PokemonAcquisition`

```java
package com.mypokedex.api.pokemon.model.entity;

import jakarta.persistence.*;
import lombok.*;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(
    name = "pokemon_acquisition",
    indexes = {
        @Index(name = "idx_acquisition_game_method", columnList = "game_id, method_id"),
        @Index(name = "idx_acquisition_location", columnList = "location_id")
    }
)
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class PokemonAcquisition {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "pokemon_id", nullable = false)
    private Pokemon pokemon;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "game_id", nullable = false)
    private Game game;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "method_id", nullable = false)
    private ObtainMethod method;

    // nullable: evolución e intercambio no ocurren en una ruta
    @ManyToOne(fetch = FetchType.LAZY, optional = true)
    @JoinColumn(name = "location_id", nullable = true)
    private Location location;

    @Column(name = "min_level")
    private Integer minLevel;

    @Column(name = "max_level")
    private Integer maxLevel;

    @Column(length = 255)
    private String notes;
}
```

### E.6 Consultas que habilita

```java
// Pokémon de una ruta concreta de un juego concreto
select a from PokemonAcquisition a
join fetch a.pokemon
where a.location.slug = :routeSlug and a.location.game.slug = :gameSlug
order by a.pokemon.nationalDexNumber

// Qué se obtiene por regalo en Rojo Fuego
select a from PokemonAcquisition a
where a.game.slug = :gameSlug and a.method.code = 'GIFT'

// Qué NO se consigue en ruta (categoría)
select a from PokemonAcquisition a
where a.game.slug = :gameSlug and a.method.category = 'SPECIAL'
```

### E.7 DDL esperado

```sql
create table game_region (
    game_id bigint not null,
    region_id bigint not null,
    primary key (game_id, region_id)
);

create table location (
    id bigint not null auto_increment,
    name varchar(60) not null,
    slug varchar(60) not null,
    game_id bigint not null,
    region_id bigint not null,
    primary key (id),
    constraint uk_location_game_slug unique (game_id, slug),
    constraint FK_... foreign key (game_id)   references game (id),
    constraint FK_... foreign key (region_id) references region (id)
);

create table obtain_method (
    id bigint not null auto_increment,
    code varchar(30) not null,
    label varchar(50) not null,
    category varchar(20) not null,
    display_order integer not null,
    primary key (id),
    constraint UK_... unique (code)
);

create table pokemon_acquisition (
    id bigint not null auto_increment,
    min_level integer,
    max_level integer,
    notes varchar(255),
    game_id bigint not null,
    location_id bigint,
    method_id bigint not null,
    pokemon_id bigint not null,
    primary key (id)
);
```

### E.8 Errores típicos

| Síntoma | Causa |
| --- | --- |
| `Field 'region_id' doesn't have a default value` al insertar un `Game` | la columna vieja `game.region_id` sigue en la tabla: `update` no borra columnas |
| Aparece `game_regions` además de `game_region` | falta `name = "game_region"` en `@JoinTable` |
| `region_id` no existe en `game` | correcto: ahora vive en `game_region` |
| `Column 'location_id' cannot be null` con método `EVOLUTION` | `optional = true` está bien; el error viene de la tabla: la FK se creó `NOT NULL` y hay que resetear el esquema |
| Ruta de Kanto asignada a un juego de Paldea | falta la FK compuesta (`game_id`,`region_id`) → `game_region`; mientras no exista, se valida en el servicio |
| `MultipleBagFetchException` | intentar hacer `join fetch` de dos `Set` a la vez; usar `@EntityGraph` o consultas separadas |

### E.9 Reglas asociadas

- `Location` es **por juego**: `uk_location_game_slug` permite que "ruta-1" exista en varios juegos.
- `Location.region` no se deriva de `Game.region` (que ya no existe): un juego puede cubrir varias regiones.
- `ObtainMethod.category` es lo que permite el filtro "no se consiguen en ruta"; `location_id IS NULL` **no** sirve (Eevee de regalo tiene ubicación).
- `PokemonAcquisition.game` se mantiene además de `location.game` porque las obtenciones especiales no tienen ubicación; la coherencia entre ambos se valida en el servicio.
- Sin `cascade`: son catálogos. Guardar una obtención no debe crear Pokémon, juegos ni métodos.
