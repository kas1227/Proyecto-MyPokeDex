# MEMORIA — MyPokedex API (v4)

> **Propósito:** este archivo es la guía rápida para cualquier agente IA que entre al proyecto. Debe leerse **antes** de tocar código. Si ha pasado tiempo desde la última consulta, verificar primero este archivo y luego `BITACORA.md` (append-only, historial completo).

---

## 1. ¿Qué es este proyecto?

**MyPokedex v4** es una API REST (Spring Boot 4.1.2, Java 25, MySQL 8.4 LTS en Docker; compatible con MariaDB 10.4 de XAMPP) para hacer *tracking* de Pokémon atrapados por juego, Pokédex regional y ruta. Alcance actual: **solo Pokémon Rojo Fuego / Verde Hoja (Gen 3, Kanto 151 + Nacional 386)**.

- **Repo:** `F:\Jason Molinares\MyGitHub\DesarrolloWeb\Api-proyectos\Proyecto MyPokedex\MyPokeDex_v4\api`
- **BD:** `mypokedexv1` (MySQL 8.4.13 en Docker; también funciona con MariaDB 10.4.32 de XAMPP)
- **Docker (solo BD):** `docker compose up -d` publica MySQL en `127.0.0.1:3306`; la API corre en el host con `./mvnw spring-boot:run`
- **Puerto:** 8080 (Spring Boot por defecto)
- **Prefijo API:** `/api/pokemon`

---

## 2. Reglas de trabajo (leer siempre antes de modificar)

1. **El usuario escribe el código; el agente analiza.** Sin pedido explícito no se crean, editan ni borran archivos de `src/`, `pom.xml` ni configuración.
2. **Excepción:** el agente solo escribe código cuando el usuario lo pide explícitamente (ej. error que no logra resolver).
3. **Modo revisión:** al detectar un error se señala el archivo/línea, se explica la causa y se propone la corrección, **sin aplicarla**.
4. **Primero proponer, después ejecutar** (cuando sí haya autorización).
5. **Documentar sí está permitido:** mantener `BITACORA.md` al día es parte del trabajo (append-only, nunca borrar entradas).
6. **Nunca borrar entradas anteriores** de la bitácora.
7. **Explicar siempre el "por qué"** de cada cambio.
8. **Ejemplos didácticos sí, edición no:** se pueden mostrar fragmentos de código en el chat para enseñar, pero eso no autoriza a modificar el proyecto.
9. **Alcance: solo `MyPokeDex_v4/api`.** `MyPokeDex_v3` y `MyPokeDex/` están fuera de alcance y no se modifican.
10. **Nombres de paquetes y carpetas deben coincidir exactamente** (incluyendo mayúsculas/minúsculas). Java es sensible a esto: `com.mypokedex.api.login` requiere carpeta `login/`, no `Login/`. En Windows, si hay que renombrar, usar un nombre temporal intermedio porque el sistema de archivos no distingue mayúsculas directamente.
11. **`DatosIniciales` debe verificar existencia antes de insertar.** Con `ddl-auto=update`, la tabla no se borra al reiniciar, por lo que `save()` de usuarios existentes causa `Duplicate entry`. Usar `findByUsername().isEmpty()` antes de cada `save()`.

---

## 3. Estructura del código (estado actual)

```
src/main/java/com/mypokedex/api/
├── MypokedexApiApplication.java        (@SpringBootApplication)
├── pokemon/
│   ├── controller/
│   │   └── PokemonController.java      (endpoints REST, compilando OK)
│   ├── service/
│   │   ├── PokemonService.java         (findById, findByNationalDexNumber, searchByName, findAcquisitionsByGameAndPokemon)
│   │   ├── GameService.java            (listGames, listRegionsByGameSlug)
│   │   ├── LocationService.java        (listByGameSlug)
│   │   └── PokedexService.java         (findEntriesByPokedexSlug, findPokedexesByGameSlug)
│   ├── repository/
│   │   ├── PokemonRepository.java      (JpaRepository + findByNationalDexNumber + findByNameContainingIgnoreCase)
│   │   ├── PokemonAcquisitionRepository.java
│   │   ├── GameRepository.java
│   │   ├── LocationRepository.java
│   │   ├── PokedexRepository.java
│   │   └── PokedexEntryRepository.java
│   ├── model/
│   │   ├── entity/
│   │   │   ├── Pokemon.java            (@Entity, nacionalDexNumber unique, typeAssignments, acquisitions)
│   │   │   ├── PokemonType.java
│   │   │   ├── PokemonTypeAssignment.java
│   │   │   ├── PokemonAcquisition.java (pokemon_id, game_id, method_id, location_id?, minLevel, maxLevel, notes)
│   │   │   ├── Pokedex.java            (slug, region_id nullable → Nacional)
│   │   │   ├── PokedexEntry.java       (pokedex_id, pokemon_id, entry_number)
│   │   │   ├── Game.java               (name, slug, generation, regions, pokedexes)
│   │   │   ├── Region.java
│   │   │   ├── Location.java           (game_id, region_id, slug, display_order)
│   │   │   └── ObtainMethod.java       (code UNIQUE, label, category ENUM, display_order)
│   │   ├── enums/
│   │   │   └── MethodCategory.java     (WILD, SPECIAL)
│   │   └── dto/
│   │       ├── PokemonDto.java         (id, nationalDexNumber, name, types, acquisitions)
│   │       ├── AcquisitionDto.java     (gameSlug, methodCode, locationSlug, minLevel, maxLevel, notes)
│   │       ├── GameDto.java            (id, name, slug, generation)
│   │       ├── LocationDto.java        (id, name, slug, displayOrder, gameSlug)
│   │       ├── PokedexDto.java         (id, name, slug)
│   │       ├── PokedexEntryDto.java    (entryNumber, pokemonId, pokemonName, nationalDexNumber)
│   │       └── RegionDto.java          (id, name)
│   └── ...
```

### Convenciones clave del proyecto
- **FKs `LAZY`:** inicializar colecciones dentro del `@Transactional(readOnly = true)` antes de devolver DTOs.
- **`equals`/`hashCode` por `id`** (`@EqualsAndHashCode(onlyExplicitlyIncluded = true)` con solo `@Id` incluido). No incluir relaciones LAZY.
- **`Long` + `IDENTITY`:** persistir entidad antes de añadirla a un `Set`/`Map`.
- **DTOs siempre:** las entidades JPA no salen del servicio.
- **`ddl-auto=update`** en el día a día; `create`/`drop` solo para resets manuales.
- **`spring.jpa.open-in-view=false`:** resolver carga lazy en el servicio, no en el controller.
- **UTF-8 sin BOM** en archivos SQL; `SET NAMES utf8mb4;` + `START TRANSACTION;` / `COMMIT;`.

---

## 4. Endpoints implementados (base `http://localhost:8080/api/pokemon`)

| Método | Ruta | Descripción |
|--------|------|-------------|
| GET | `/{id}` | Pokémon por ID interno |
| GET | `/national/{number}` | Pokémon por número de Pokédex nacional |
| GET | `/search?name=...` | Búsqueda por nombre (contiene, ignore case) |
| GET | `/games/{gameSlug}/pokemon/{nationalDexNumber}/acquisitions` | Cómo conseguir un Pokémon en un juego |
| GET | `/games` | Listado de juegos (rojo-fuego, verde-hoja) |
| GET | `/games/{gameSlug}/locations` | Ubicaciones de un juego |
| GET | `/games/{gameSlug}/regions` | Regiones de un juego |
| GET | `/games/{gameSlug}/pokedexes` | Pokédex de un juego |
| GET | `/pokedex/{slug}/entries` | Entradas de una Pokédex (Kanto o Nacional) |

---

## 5. Estado de la base de datos (`mypokedexv1`)

| Tabla | Filas (verificado) | Notas |
|-------|---------------------|-------|
| `region` | 1 | Kanto |
| `pokemon_type` | 17 | Tipos Gen 3 (sin Hada) |
| `pokemon` | 386 | Gen 3 completa (nombres ES) |
| `pokemon_type_assignment` | 557 | Asignaciones de tipo |
| `pokedex` | 2 | Kanto + Nacional |
| `game` | 2 | Rojo Fuego, Verde Hoja |
| `game_region` | 2 | Ambos → Kanto |
| `game_pokedex` | 4 | Ambos → Kanto y Nacional |
| `pokedex_entry` | 537 | 151 Kanto + 386 Nacional |
| `obtain_method` | 8 | WILD, TRADE, GIFT, STATIC, FOSSIL, GAME_CORNER, EVENT, EVOLUTION |
| `location` | 140 | 70 × 2 juegos (incluye Puerto de Isla Tercera) |
| `pokemon_acquisition` | 1324 | Adquisiciones por juego (662 cada uno) |

**Cobertura por juego:**

| Juego | Especies con adquisición | Adquisiciones totales |
|-------|--------------------------|----------------------|
| `rojo-fuego` | 180 | 662 |
| `verde-hoja` | 180 | 662 |

**Unión y especies sin fuente:**

| Métrica | Valor |
|---------|-------|
| Especies en unión (ambos juegos) | 201 de 386 |
| Especies sin adquisición en ningún juego | 185 (esperado: muchas especies Gen 3 no aparecen en FR/LG) |

**Seed:** 12 archivos SQL en `src/main/resources/db/seed/01…12.sql`, cargados manualmente (no vía `spring.sql.init`). Idempotentes (verificado cargando dos veces).

**Verificación:** conteos comprobados el **2026-11-05** contra MySQL 8.4.13 en Docker. La carga completa se ejecutó dos veces con resultados idénticos, y los 151 de Kanto conservaron sus 215 asignaciones de tipo, 302 entradas y 603 adquisiciones por juego.

---

## 6. Autenticación JWT (implementada)

**Estado:** implementada y compilando. Endpoints disponibles:

| Método | Ruta | Público/Privado | Descripción |
|--------|------|-----------------|-------------|
| `POST` | `/api/auth/login` | Público | Recibe `{username, password}`, devuelve JWT + username + nombre |
| `GET` | `/api/perfil` | Privado (Bearer token) | Devuelve datos del usuario autenticado |

**Usuarios de prueba (creados por `DatosIniciales` al arrancar):**
- `alumno` / `1234` (Alumno de prueba)
- `profe` / `abcd` (Profesor)

**Tablas de autenticación:**
- `usuario`: id, username (UNIQUE), password (BCrypt), nombre

**Faltante por implementar:**
- `POST /api/auth/register` — registro de nuevos usuarios
- Tabla `user_pokemon` para tracking de capturas por usuario

---

## 7. Diseño pendiente: Tracking de usuarios (capturas)

Alcance futuro, discutido con el usuario:

- **Frontend:** Angular.
- **Tablas nuevas en la MISMA BD `mypokedexv1`:**
  - `user_pokemon`: id, user_id FK, pokemon_id FK, game_id FK, status (SEEN/CAUGHT), caught_at, notes; UNIQUE (user_id, pokemon_id, game_id)
- **Endpoints planeados:**
  - `GET /api/tracking/status?game={slug}&pokemonId={id}`
  - `POST /api/tracking/pokemon/{pokemonId}` (marcar CAUGHT/SEEN)
  - `DELETE /api/tracking/pokemon/{pokemonId}`
  - `GET /api/tracking/progress?game={slug}&pokedex={slug}` (total, caught, seen, missing, percent)
  - `GET /api/tracking/missing?game={slug}&pokedex={slug}`

**Regla de seguridad:** los endpoints de tracking filtran siempre por el `userId` del usuario autenticado; nunca aceptar `userId` por parámetro.

---

## 7. Comandos útiles

```powershell
# Compilar
$env:JAVA_HOME="C:\Program Files\Microsoft\jdk-25.0.3.9-hotspot"
& "F:\Jason Molinares\Archivos de programa\IntelliJ IDEA Community Edition 2025.2.6.3\plugins\maven\lib\maven3\bin\mvn.cmd" compile

# Test (arranca Spring, verifica contexto)
& "..."\mvn.cmd test

# MySQL cliente
"C:\xampp\mysql\bin\mysql.exe" -u root --default-character-set=utf8mb4 mypokedexv1

# Cargar seed (PowerShell, usar cmd /c por la redirección <)
cmd /c '"C:\xampp\mysql\bin\mysql.exe" -u root --default-character-set=utf8mb4 mypokedexv1 < "01_region.sql"'
```

---

## 8. Instrucción para agentes futuros

**Cuando inicies una sesión en este proyecto (especialmente si ha pasado tiempo desde la última interacción):**

1. **Lee primero `MEMORIA.md`** (este archivo) para entender el estado actual.
2. **Lee luego `BITACORA.md`** para ver el historial cronológico y las decisiones tomadas.
3. **No asumas** que el código está en un estado determinado; verifica compilando con `mvn compile` antes de proponer cambios.
4. **Respeta las reglas de trabajo** (sección 3): el usuario escribe el código; el agente analiza, explica y propone.
5. **Si vas a modificar algo**, documenta la entrada correspondiente en `BITACORA.md` (append-only, al final).
6. **Re-leer contexto tras inactividad:** si ha pasado un tiempo considerable desde la última consulta al proyecto (nueva sesión de chat, un día o más sin revisar), el agente debe volver a leer `MEMORIA.md` y luego `BITACORA.md` antes de proponer o revisar cualquier cambio. No asumir que el estado del código ni las decisiones pendientes siguen siendo las que se recuerdan; la bitácora es la fuente de verdad del historial y las decisiones tomadas.

---

## 9. Archivos clave del proyecto

| Ruta | Propósito |
|------|-----------|
| `BITACORA.md` | Historial completo de cambios, reglas, decisiones (append-only) |
| `MEMORIA.md` | Este archivo: guía rápida para agentes IA |
| `GUIA_IMPLEMENTACION.md` | Pasos de implementación 0–8 + anexos A–E |
| `pom.xml` | Dependencias Maven (Spring Boot, JPA, MySQL, Lombok, tests) |
| `application.properties` | Configuración BD, JPA, servidor |
| `src/main/resources/db/seed/01…12.sql` | Seed SQL de Rojo Fuego / Verde Hoja |
