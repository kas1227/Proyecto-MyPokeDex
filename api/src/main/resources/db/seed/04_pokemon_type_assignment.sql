-- MyPokédex v4 · Tipos por Pokémon
-- Fuente: PokéAPI pokemon + regla Gen 3
-- Archivo generado automáticamente por build_sql.py. No editar a mano.
-- Codificación UTF-8 sin BOM.

SET NAMES utf8mb4;

START TRANSACTION;

-- Asignaciones de tipo de la generación 3.
-- Se borran las de los 386 para que el archivo sea repetible
-- aunque cambien los tipos entre versiones del seed.
DELETE FROM pokemon_type_assignment
WHERE pokemon_id IN (
    SELECT id FROM pokemon WHERE national_dex_number BETWEEN 1 AND 386
);

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 1;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 1;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 2;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 2;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 3;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 3;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 4;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 5;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 6;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 6;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 7;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 8;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 9;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 10;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 11;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 12;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 12;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 13;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 13;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 14;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 14;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 15;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 15;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 16;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 16;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 17;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 17;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 18;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 18;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 19;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 20;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 21;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 21;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 22;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 22;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 23;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 24;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Eléctrico'
WHERE p.national_dex_number = 25;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Eléctrico'
WHERE p.national_dex_number = 26;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 27;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 28;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 29;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 30;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 31;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 31;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 32;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 33;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 34;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 34;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 35;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 36;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 37;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 38;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 39;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 40;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 41;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 41;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 42;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 42;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 43;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 43;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 44;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 44;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 45;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 45;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 46;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 46;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 47;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 47;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 48;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 48;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 49;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 49;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 50;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 51;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 52;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 53;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 54;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 55;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Lucha'
WHERE p.national_dex_number = 56;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Lucha'
WHERE p.national_dex_number = 57;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 58;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 59;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 60;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 61;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 62;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Lucha'
WHERE p.national_dex_number = 62;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 63;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 64;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 65;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Lucha'
WHERE p.national_dex_number = 66;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Lucha'
WHERE p.national_dex_number = 67;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Lucha'
WHERE p.national_dex_number = 68;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 69;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 69;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 70;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 70;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 71;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 71;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 72;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 72;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 73;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 73;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 74;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 74;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 75;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 75;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 76;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 76;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 77;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 78;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 79;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 79;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 80;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 80;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Eléctrico'
WHERE p.national_dex_number = 81;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Acero'
WHERE p.national_dex_number = 81;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Eléctrico'
WHERE p.national_dex_number = 82;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Acero'
WHERE p.national_dex_number = 82;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 83;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 83;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 84;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 84;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 85;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 85;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 86;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 87;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Hielo'
WHERE p.national_dex_number = 87;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 88;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 89;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 90;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 91;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Hielo'
WHERE p.national_dex_number = 91;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fantasma'
WHERE p.national_dex_number = 92;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 92;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fantasma'
WHERE p.national_dex_number = 93;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 93;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fantasma'
WHERE p.national_dex_number = 94;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 94;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 95;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 95;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 96;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 97;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 98;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 99;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Eléctrico'
WHERE p.national_dex_number = 100;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Eléctrico'
WHERE p.national_dex_number = 101;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 102;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 102;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 103;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 103;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 104;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 105;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Lucha'
WHERE p.national_dex_number = 106;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Lucha'
WHERE p.national_dex_number = 107;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 108;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 109;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 110;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 111;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 111;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 112;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 112;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 113;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 114;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 115;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 116;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 117;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 118;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 119;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 120;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 121;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 121;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 122;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 123;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 123;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Hielo'
WHERE p.national_dex_number = 124;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 124;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Eléctrico'
WHERE p.national_dex_number = 125;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 126;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 127;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 128;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 129;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 130;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 130;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 131;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Hielo'
WHERE p.national_dex_number = 131;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 132;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 133;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 134;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Eléctrico'
WHERE p.national_dex_number = 135;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 136;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 137;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 138;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 138;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 139;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 139;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 140;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 140;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 141;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 141;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 142;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 142;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 143;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Hielo'
WHERE p.national_dex_number = 144;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 144;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Eléctrico'
WHERE p.national_dex_number = 145;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 145;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 146;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 146;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Dragón'
WHERE p.national_dex_number = 147;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Dragón'
WHERE p.national_dex_number = 148;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Dragón'
WHERE p.national_dex_number = 149;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 149;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 150;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 151;
-- >>> EXPANSION GEN 3
-- Asignaciones de tipo de la generación 3 para la Pokédex Nacional.

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 152;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 153;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 154;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 155;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 156;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 157;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 158;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 159;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 160;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 161;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 162;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 163;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 163;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 164;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 164;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 165;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 165;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 166;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 166;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 167;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 167;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 168;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 168;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 169;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 169;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 170;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Eléctrico'
WHERE p.national_dex_number = 170;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 171;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Eléctrico'
WHERE p.national_dex_number = 171;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Eléctrico'
WHERE p.national_dex_number = 172;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 173;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 174;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 175;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 176;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 176;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 177;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 177;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 178;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 178;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Eléctrico'
WHERE p.national_dex_number = 179;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Eléctrico'
WHERE p.national_dex_number = 180;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Eléctrico'
WHERE p.national_dex_number = 181;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 182;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 183;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 184;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 185;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 186;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 187;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 187;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 188;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 188;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 189;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 189;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 190;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 191;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 192;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 193;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 193;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 194;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 194;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 195;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 195;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 196;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Siniestro'
WHERE p.national_dex_number = 197;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Siniestro'
WHERE p.national_dex_number = 198;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 198;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 199;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 199;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fantasma'
WHERE p.national_dex_number = 200;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 201;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 202;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 203;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 203;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 204;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 205;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Acero'
WHERE p.national_dex_number = 205;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 206;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 207;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 207;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Acero'
WHERE p.national_dex_number = 208;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 208;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 209;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 210;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 211;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 211;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 212;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Acero'
WHERE p.national_dex_number = 212;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 213;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 213;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 214;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Lucha'
WHERE p.national_dex_number = 214;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Siniestro'
WHERE p.national_dex_number = 215;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Hielo'
WHERE p.national_dex_number = 215;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 216;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 217;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 218;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 219;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 219;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Hielo'
WHERE p.national_dex_number = 220;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 220;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Hielo'
WHERE p.national_dex_number = 221;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 221;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 222;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 222;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 223;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 224;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Hielo'
WHERE p.national_dex_number = 225;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 225;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 226;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 226;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Acero'
WHERE p.national_dex_number = 227;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 227;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Siniestro'
WHERE p.national_dex_number = 228;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 228;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Siniestro'
WHERE p.national_dex_number = 229;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 229;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 230;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Dragón'
WHERE p.national_dex_number = 230;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 231;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 232;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 233;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 234;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 235;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Lucha'
WHERE p.national_dex_number = 236;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Lucha'
WHERE p.national_dex_number = 237;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Hielo'
WHERE p.national_dex_number = 238;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 238;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Eléctrico'
WHERE p.national_dex_number = 239;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 240;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 241;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 242;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Eléctrico'
WHERE p.national_dex_number = 243;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 244;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 245;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 246;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 246;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 247;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 247;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 248;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Siniestro'
WHERE p.national_dex_number = 248;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 249;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 249;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 250;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 250;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 251;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 251;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 252;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 253;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 254;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 255;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 256;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Lucha'
WHERE p.national_dex_number = 256;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 257;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Lucha'
WHERE p.national_dex_number = 257;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 258;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 259;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 259;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 260;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 260;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Siniestro'
WHERE p.national_dex_number = 261;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Siniestro'
WHERE p.national_dex_number = 262;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 263;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 264;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 265;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 266;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 267;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 267;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 268;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 269;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 269;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 270;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 270;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 271;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 271;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 272;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 272;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 273;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 274;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Siniestro'
WHERE p.national_dex_number = 274;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 275;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Siniestro'
WHERE p.national_dex_number = 275;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 276;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 276;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 277;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 277;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 278;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 278;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 279;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 279;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 280;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 281;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 282;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 283;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 283;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 284;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 284;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 285;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 286;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Lucha'
WHERE p.national_dex_number = 286;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 287;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 288;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 289;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 290;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 290;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 291;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 291;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 292;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fantasma'
WHERE p.national_dex_number = 292;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 293;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 294;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 295;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Lucha'
WHERE p.national_dex_number = 296;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Lucha'
WHERE p.national_dex_number = 297;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 298;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 299;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 300;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 301;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Siniestro'
WHERE p.national_dex_number = 302;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fantasma'
WHERE p.national_dex_number = 302;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Acero'
WHERE p.national_dex_number = 303;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Acero'
WHERE p.national_dex_number = 304;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 304;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Acero'
WHERE p.national_dex_number = 305;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 305;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Acero'
WHERE p.national_dex_number = 306;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 306;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Lucha'
WHERE p.national_dex_number = 307;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 307;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Lucha'
WHERE p.national_dex_number = 308;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 308;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Eléctrico'
WHERE p.national_dex_number = 309;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Eléctrico'
WHERE p.national_dex_number = 310;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Eléctrico'
WHERE p.national_dex_number = 311;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Eléctrico'
WHERE p.national_dex_number = 312;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 313;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 314;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 315;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 315;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 316;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 317;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 318;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Siniestro'
WHERE p.national_dex_number = 318;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 319;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Siniestro'
WHERE p.national_dex_number = 319;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 320;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 321;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 322;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 322;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 323;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 323;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fuego'
WHERE p.national_dex_number = 324;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 325;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 326;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 327;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 328;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 329;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Dragón'
WHERE p.national_dex_number = 329;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 330;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Dragón'
WHERE p.national_dex_number = 330;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 331;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 332;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Siniestro'
WHERE p.national_dex_number = 332;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 333;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 333;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Dragón'
WHERE p.national_dex_number = 334;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 334;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 335;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Veneno'
WHERE p.national_dex_number = 336;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 337;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 337;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 338;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 338;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 339;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 339;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 340;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 340;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 341;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 342;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Siniestro'
WHERE p.national_dex_number = 342;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 343;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 343;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 344;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 344;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 345;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 345;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 346;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 346;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 347;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 347;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 348;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Bicho'
WHERE p.national_dex_number = 348;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 349;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 350;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 351;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Normal'
WHERE p.national_dex_number = 352;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fantasma'
WHERE p.national_dex_number = 353;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fantasma'
WHERE p.national_dex_number = 354;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fantasma'
WHERE p.national_dex_number = 355;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Fantasma'
WHERE p.national_dex_number = 356;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Planta'
WHERE p.national_dex_number = 357;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 357;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 358;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Siniestro'
WHERE p.national_dex_number = 359;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 360;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Hielo'
WHERE p.national_dex_number = 361;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Hielo'
WHERE p.national_dex_number = 362;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Hielo'
WHERE p.national_dex_number = 363;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 363;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Hielo'
WHERE p.national_dex_number = 364;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 364;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Hielo'
WHERE p.national_dex_number = 365;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 365;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 366;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 367;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 368;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 369;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 369;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 370;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Dragón'
WHERE p.national_dex_number = 371;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Dragón'
WHERE p.national_dex_number = 372;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Dragón'
WHERE p.national_dex_number = 373;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 373;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Acero'
WHERE p.national_dex_number = 374;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 374;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Acero'
WHERE p.national_dex_number = 375;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 375;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Acero'
WHERE p.national_dex_number = 376;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 376;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Roca'
WHERE p.national_dex_number = 377;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Hielo'
WHERE p.national_dex_number = 378;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Acero'
WHERE p.national_dex_number = 379;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Dragón'
WHERE p.national_dex_number = 380;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 380;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Dragón'
WHERE p.national_dex_number = 381;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 381;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Agua'
WHERE p.national_dex_number = 382;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Tierra'
WHERE p.national_dex_number = 383;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Dragón'
WHERE p.national_dex_number = 384;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Volador'
WHERE p.national_dex_number = 384;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Acero'
WHERE p.national_dex_number = 385;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 2
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 385;

INSERT INTO pokemon_type_assignment (pokemon_id, pokemon_type_id, slot)
SELECT p.id, t.id, 1
FROM pokemon p
JOIN pokemon_type t ON t.name = 'Psíquico'
WHERE p.national_dex_number = 386;
-- <<< EXPANSION GEN 3 <<<
COMMIT;
