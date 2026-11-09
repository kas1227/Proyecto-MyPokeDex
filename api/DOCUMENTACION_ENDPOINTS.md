# Documentación de Endpoints — MyPokedex API (v4)

**Base URL:** `http://localhost:8080/api/pokemon`  
**Estado:** API en desarrollo, endpoints implementados y compilando correctamente. Los endpoints de `/api/pokemon` requieren JWT; solo el login es público.  
**Formato de respuesta:** JSON (UTF-8). Devuelven `200 OK` si hay datos, `404 Not Found` si no existen y `401 Unauthorized` si falta el token o es inválido.

---

## Tabla resumen de endpoints

| # | Método | Ruta completa | Descripción breve |
|---|--------|---------------|-------------------|
| 1 | `GET` | `/api/pokemon/{id}` | Detalle de un Pokémon por su ID interno |
| 2 | `GET` | `/api/pokemon/national/{number}` | Detalle de un Pokémon por número de Pokédex Nacional |
| 3 | `GET` | `/api/pokemon/search?name=...` | Búsqueda de Pokémon por nombre (contiene, ignora mayúsculas) |
| 4 | `GET` | `/api/pokemon/games/{gameSlug}/pokemon/{nationalDexNumber}/acquisitions` | Cómo se consigue un Pokémon en un juego concreto |
| 5 | `GET` | `/api/pokemon/games` | Listado de juegos disponibles |
| 6 | `GET` | `/api/pokemon/games/{gameSlug}/locations` | Ubicaciones de un juego, ordenadas por número de ruta |
| 7 | `GET` | `/api/pokemon/games/{gameSlug}/regions` | Regiones que cubre un juego |
| 8 | `GET` | `/api/pokemon/games/{gameSlug}/pokedexes` | Pokédex que usa un juego |
| 9 | `GET` | `/api/pokemon/pokedex/{slug}/entries` | Entradas de una Pokédex concreta con su número de entrada |
| 10 | `POST` | `/api/auth/login` | Obtener un token JWT (público) |

---

## Autenticación (JWT)

Los endpoints de `/api/pokemon` están protegidos. Primero se obtiene un token con el login:

**Método:** `POST`  
**URL:** `http://localhost:8080/api/auth/login`  
**Cuerpo:**
```json
{ "username": "alumno", "password": "1234" }
```

**Respuesta:**
```json
{
  "token": "eyJhbGciOi...",
  "username": "alumno",
  "nombre": "Alumno de prueba"
}
```

Después se envía el token en cada petición:

```
Authorization: Bearer <token>
```

**Usuarios de prueba** creados automáticamente al arrancar: `alumno` / `1234` y `profe` / `abcd`.

---

## Detalle de cada endpoint

### 1. Detalle de Pokémon por ID

**Método:** `GET`  
**URL:** `http://localhost:8080/api/pokemon/{id}`  
**Parámetros de ruta:** `id` (Long) — identificador interno de la tabla `pokemon`.

**Para qué sirve:** Devuelve la información completa de un Pokémon: su número nacional, nombre, tipos y todas las formas en que se puede conseguir en cada juego.

**Ejemplo de llamada:**  
`GET http://localhost:8080/api/pokemon/1`

**Ejemplo de respuesta:**
```json
{
  "id": 1,
  "nationalDexNumber": 1,
  "name": "Bulbasaur",
  "types": ["Planta", "Veneno"],
  "acquisitions": [
    {
      "gameSlug": "rojo-fuego",
      "methodCode": "WILD",
      "locationSlug": "ruta-1",
      "minLevel": 3,
      "maxLevel": 5,
      "notes": "Hierba"
    },
    {
      "gameSlug": "rojo-fuego",
      "methodCode": "STATIC",
      "locationSlug": "pueblo-paleta",
      "minLevel": 5,
      "maxLevel": 5,
      "notes": "Regalo del profesor Oak"
    },
    {
      "gameSlug": "verde-hoja",
      "methodCode": "WILD",
      "locationSlug": "ruta-1",
      "minLevel": 3,
      "maxLevel": 5,
      "notes": "Hierba"
    },
    {
      "gameSlug": "verde-hoja",
      "methodCode": "STATIC",
      "locationSlug": "pueblo-paleta",
      "minLevel": 5,
      "maxLevel": 5,
      "notes": "Regalo del profesor Oak"
    }
  ]
}
```

---

### 2. Detalle de Pokémon por número nacional de Pokédex

**Método:** `GET`  
**URL:** `http://localhost:8080/api/pokemon/national/{number}`  
**Parámetros de ruta:** `number` (Integer) — número nacional de la Pokédex (1–386 en la Gen 3).

**Para qué sirve:** Busca un Pokémon por su número oficial de la Pokédex Nacional. Útil para pantallas de búsqueda por número (ej. "#025 Pikachu").

**Ejemplo de llamada:**  
`GET http://localhost:8080/api/pokemon/national/25`

**Ejemplo de respuesta:**
```json
{
  "id": 26,
  "nationalDexNumber": 25,
  "name": "Pikachu",
  "types": ["Eléctrico"],
  "acquisitions": [
    {
      "gameSlug": "rojo-fuego",
      "methodCode": "STATIC",
      "locationSlug": "bosque-verde",
      "minLevel": 3,
      "maxLevel": 7,
      "notes": "Encuentro estático en hierba"
    },
    {
      "gameSlug": "verde-hoja",
      "methodCode": "STATIC",
      "locationSlug": "bosque-verde",
      "minLevel": 3,
      "maxLevel": 7,
      "notes": "Encuentro estático en hierba"
    }
  ]
}
```

---

### 3. Búsqueda de Pokémon por nombre

**Método:** `GET`  
**URL:** `http://localhost:8080/api/pokemon/search?name={texto}`  
**Parámetros de consulta:** `name` (String) — fragmento de nombre. Búsqueda "contiene", ignorando mayúsculas y minúsculas.

**Para qué sirve:** Buscador de Pokémon por nombre. Devuelve una lista de coincidencias parciales.

**Ejemplo de llamada:**  
`GET http://localhost:8080/api/pokemon/search?name=char`

**Ejemplo de respuesta:**
```json
[
  {
    "id": 5,
    "nationalDexNumber": 4,
    "name": "Charmander",
    "types": ["Fuego"],
    "acquisitions": []
  },
  {
    "id": 6,
    "nationalDexNumber": 5,
    "name": "Charmeleon",
    "types": ["Fuego"],
    "acquisitions": []
  },
  {
    "id": 7,
    "nationalDexNumber": 6,
    "name": "Charizard",
    "types": ["Fuego", "Volador"],
    "acquisitions": []
  }
]
```

---

### 4. Adquisiciones de un Pokémon en un juego

**Método:** `GET`  
**URL:** `http://localhost:8080/api/pokemon/games/{gameSlug}/pokemon/{nationalDexNumber}/acquisitions`  
**Parámetros de ruta:**  
- `gameSlug` (String) — slug del juego: `rojo-fuego` o `verde-hoja`.  
- `nationalDexNumber` (Integer) — número nacional del Pokémon.

**Para qué sirve:** Devuelve todas las formas en que se puede obtener un Pokémon específico en un juego concreto (método, ubicación, nivel y notas).

**Ejemplo de llamada:**  
`GET http://localhost:8080/api/pokemon/games/rojo-fuego/pokemon/25/acquisitions`

**Ejemplo de respuesta:**
```json
[
  {
    "gameSlug": "rojo-fuego",
    "methodCode": "STATIC",
    "locationSlug": "bosque-verde",
    "minLevel": 3,
    "maxLevel": 7,
    "notes": "Encuentro estático en hierba"
  },
  {
    "gameSlug": "rojo-fuego",
    "methodCode": "EVOLUTION",
    "locationSlug": null,
    "minLevel": null,
    "maxLevel": null,
    "notes": "Evoluciona de Pichu (felicidad)."
  }
]
```

---

### 5. Listado de juegos

**Método:** `GET`  
**URL:** `http://localhost:8080/api/pokemon/games`  
**Parámetros:** ninguno.

**Para qué sirve:** Devuelve el catálogo de juegos disponibles en la API. Actualmente solo Rojo Fuego y Verde Hoja.

**Ejemplo de llamada:**  
`GET http://localhost:8080/api/pokemon/games`

**Ejemplo de respuesta:**
```json
[
  {
    "id": 1,
    "name": "Pokémon Rojo Fuego",
    "slug": "rojo-fuego",
    "generation": 3
  },
  {
    "id": 2,
    "name": "Pokémon Verde Hoja",
    "slug": "verde-hoja",
    "generation": 3
  }
]
```

---

### 6. Ubicaciones de un juego

**Método:** `GET`  
**URL:** `http://localhost:8080/api/pokemon/games/{gameSlug}/locations`  
**Parámetros de ruta:** `gameSlug` (String) — `rojo-fuego` o `verde-hoja`.

**Para qué sirve:** Lista todas las ubicaciones de captura de un juego, ordenadas por `display_order` (ruta 1, ruta 2, etc.). Útil para mostrar el mapa de rutas del juego.

**Ejemplo de llamada:**  
`GET http://localhost:8080/api/pokemon/games/rojo-fuego/locations`

**Ejemplo de respuesta:**
```json
[
  {
    "id": 1,
    "name": "Pueblo Paleta",
    "slug": "pueblo-paleta",
    "displayOrder": 1,
    "gameSlug": "rojo-fuego"
  },
  {
    "id": 2,
    "name": "Ruta 1",
    "slug": "ruta-1",
    "displayOrder": 2,
    "gameSlug": "rojo-fuego"
  },
  {
    "id": 3,
    "name": "Ruta 2",
    "slug": "ruta-2",
    "displayOrder": 3,
    "gameSlug": "rojo-fuego"
  }
]
```

---

### 7. Regiones de un juego

**Método:** `GET`  
**URL:** `http://localhost:8080/api/pokemon/games/{gameSlug}/regions`  
**Parámetros de ruta:** `gameSlug` (String).

**Para qué sirve:** Devuelve las regiones que cubre un juego. Actualmente ambos juegos cubren solo Kanto.

**Ejemplo de llamada:**  
`GET http://localhost:8080/api/pokemon/games/rojo-fuego/regions`

**Ejemplo de respuesta:**
```json
[
  {
    "id": 1,
    "name": "Kanto"
  }
]
```

---

### 8. Pokédex de un juego

**Método:** `GET`  
**URL:** `http://localhost:8080/api/pokemon/games/{gameSlug}/pokedexes`  
**Parámetros de ruta:** `gameSlug` (String).

**Para qué sirve:** Devuelve las Pokédex que utiliza un juego (regional y/o nacional).

**Ejemplo de llamada:**  
`GET http://localhost:8080/api/pokemon/games/rojo-fuego/pokedexes`

**Ejemplo de respuesta:**
```json
[
  {
    "id": 1,
    "name": "Pokédex de Kanto",
    "slug": "kanto"
  },
  {
    "id": 2,
    "name": "Pokédex Nacional",
    "slug": "nacional"
  }
]
```

---

### 9. Entradas de una Pokédex

**Método:** `GET`  
**URL:** `http://localhost:8080/api/pokemon/pokedex/{slug}/entries`  
**Parámetros de ruta:** `slug` (String) — `kanto` o `nacional`.

**Para qué sirve:** Lista todos los Pokémon que aparecen en una Pokédex concreta, con su número de entrada dentro de esa Pokédex. Ordenado por número de entrada ascendente.

**Ejemplo de llamada:**  
`GET http://localhost:8080/api/pokemon/pokedex/kanto/entries`

**Ejemplo de respuesta:**
```json
[
  {
    "entryNumber": 1,
    "pokemonId": 1,
    "pokemonName": "Bulbasaur",
    "nationalDexNumber": 1
  },
  {
    "entryNumber": 2,
    "pokemonId": 2,
    "pokemonName": "Ivysaur",
    "nationalDexNumber": 2
  },
  {
    "entryNumber": 3,
    "pokemonId": 3,
    "pokemonName": "Venusaur",
    "nationalDexNumber": 3
  }
]
```

**Ejemplo para la Nacional:**
`GET http://localhost:8080/api/pokemon/pokedex/nacional/entries`  
Devuelve 386 entradas, numeradas del 1 al 386.

---

## Códigos de método de obtención (`methodCode`)

| Código | Significado | Categoría |
|--------|-------------|-----------|
| `WILD` | Encuentro salvaje (hierba, surf, caña) | WILD |
| `TRADE` | Intercambio con un NPC | SPECIAL |
| `GIFT` | Regalo de un NPC (incluye huevo regalo) | SPECIAL |
| `STATIC` | Encuentro estático (legendario, inicial, fósil) | SPECIAL |
| `FOSSIL` | Fósil revivido en el laboratorio | SPECIAL |
| `GAME_CORNER` | Premio de la Torre Casino | SPECIAL |
| `EVENT` | Evento (ej. Mew) | SPECIAL |
| `EVOLUTION` | Evolución de otra especie | SPECIAL |

---

## Notas importantes

- **Base de datos:** Los datos provienen de la base de datos `mypokedexv1` (MySQL 8.4 en Docker; compatible con MariaDB 10.4 de XAMPP) con el seed cargado de Rojo Fuego / Verde Hoja (386 Pokémon, 151 de Kanto regional, 386 Nacional).
- **Codificación:** Todos los archivos y respuestas usan UTF-8. Nombres como `Nidoran♀`, `Nidoran♂`, `Farfetch’d` se devuelven correctamente.
- **Relaciones LAZY:** El servicio inicializa las colecciones necesarias antes de devolver el DTO, por lo que no hay errores de `LazyInitializationException` al serializar a JSON.
- **Autenticación JWT:** todos los endpoints de `/api/pokemon` requieren `Authorization: Bearer <token>`. El login (`POST /api/auth/login`) es público. Sin token, la API responde `401 Unauthorized`. El tracking de Pokémon atrapados por usuario sigue siendo alcance futuro.
