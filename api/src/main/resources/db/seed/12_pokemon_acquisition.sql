-- MyPokédex v4 · Adquisiciones
-- Fuente: PokéAPI location-area, encounters y evolution-chain
-- Archivo generado automáticamente por build_sql.py. No editar a mano.
-- Codificación UTF-8 sin BOM.

SET NAMES utf8mb4;

START TRANSACTION;

-- Las adquisiciones no tienen clave natural (location_id puede ser NULL),
-- así que se borran por juego antes de insertar para que el archivo sea
-- repetible sin duplicar filas.
DELETE FROM pokemon_acquisition
WHERE game_id IN (SELECT id FROM game WHERE slug IN ('rojo-fuego', 'verde-hoja'));

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 32, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 37, 37, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 17;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 43;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 35, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 44;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 34, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 48;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 37, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 49;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Hierba, Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 55;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 34, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 96;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 37, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 97;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 35, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 102;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 119;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 29, 32, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 34, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 17;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 31, 31, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 43;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 36, 36, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 44;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 34, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 48;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 31, 31, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 37, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 53;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Hierba, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 117;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 44, 44, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'entrada-del-canon'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 48, 50, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'entrada-del-canon'
WHERE p.national_dex_number = 22;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 41, 41, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'entrada-del-canon'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 47, 50, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'entrada-del-canon'
WHERE p.national_dex_number = 53;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 41, 41, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'entrada-del-canon'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 31, 31, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 36, 36, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 22;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 32, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 43;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 36, 38, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 44;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 31, 31, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 37, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 53;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Hierba, Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Hierba, Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 55;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 61;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azulona'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 40, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azulona'
WHERE p.national_dex_number = 88;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azulona'
WHERE p.national_dex_number = 109;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 35, 'Caña vieja, Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azulona'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 46, 61, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 42;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 49, 64, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 47;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 60, 'Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 40, 65, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 55;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 52, 61, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 57;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 61;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 55, 67, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 64;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 46, 52, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 67;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 60, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 74;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 40, 65, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 75;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 49, 55, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 82;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 58, 64, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 101;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 52, 67, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 132;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-celeste'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-celeste'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-celeste'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 35, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-celeste'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-celeste'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-celeste'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 90;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 117;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 22, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-diglett'
WHERE p.national_dex_number = 50;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 29, 31, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-diglett'
WHERE p.national_dex_number = 51;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-quinta'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-quinta'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-quinta'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-quinta'
WHERE p.national_dex_number = 90;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-quinta'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-quinta'
WHERE p.national_dex_number = 117;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-quinta'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-quinta'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 44, 44, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 48, 50, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 17;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 41, 41, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 47, 50, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 53;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 41, 'Hierba, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 117;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 35, 'Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-cuarta'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-cuarta'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-cuarta'
WHERE p.national_dex_number = 61;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-cuarta'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-cuarta'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-cuarta'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 40, 'Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-fucsia'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-fucsia'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-fucsia'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-fucsia'
WHERE p.national_dex_number = 119;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-fucsia'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-fucsia'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-verde'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-verde'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-verde'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-verde'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-verde'
WHERE p.national_dex_number = 117;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-verde'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-verde'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 40, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 41;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 45, 48, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 42;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 41, 'Hierba, Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 61;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 45, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 45, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 47, 'Hierba, Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 86;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 53, 'Hierba, Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 87;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 90;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 117;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 45, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 131;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'central-electrica'
WHERE p.national_dex_number = 25;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 25, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'central-electrica'
WHERE p.national_dex_number = 81;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 31, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'central-electrica'
WHERE p.national_dex_number = 82;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 25, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'central-electrica'
WHERE p.national_dex_number = 100;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 35, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'central-electrica'
WHERE p.national_dex_number = 125;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 2, 5, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-1'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 2, 4, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-1'
WHERE p.national_dex_number = 19;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 13, 17, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-10'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 11, 17, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-10'
WHERE p.national_dex_number = 23;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-10'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-10'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-10'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 14, 17, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-10'
WHERE p.national_dex_number = 100;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 35, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-10'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-10'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-10'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 13, 17, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-11'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 12, 15, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-11'
WHERE p.national_dex_number = 23;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-11'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-11'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 11, 15, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-11'
WHERE p.national_dex_number = 96;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-11'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 35, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-11'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-11'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-11'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 23, 27, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-12'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-12'
WHERE p.national_dex_number = 43;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 28, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-12'
WHERE p.national_dex_number = 44;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 24, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-12'
WHERE p.national_dex_number = 48;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-12'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-12'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-12'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 35, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-12'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-12'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-12'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 27, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-13'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 29, 29, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-13'
WHERE p.national_dex_number = 17;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-13'
WHERE p.national_dex_number = 43;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 28, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-13'
WHERE p.national_dex_number = 44;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 24, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-13'
WHERE p.national_dex_number = 48;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-13'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-13'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-13'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 35, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-13'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-13'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-13'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 25, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-13'
WHERE p.national_dex_number = 132;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 27, 27, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-14'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 29, 29, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-14'
WHERE p.national_dex_number = 17;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-14'
WHERE p.national_dex_number = 43;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-14'
WHERE p.national_dex_number = 44;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 24, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-14'
WHERE p.national_dex_number = 48;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 23, 23, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-14'
WHERE p.national_dex_number = 132;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 27, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-15'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 29, 29, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-15'
WHERE p.national_dex_number = 17;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-15'
WHERE p.national_dex_number = 43;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 28, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-15'
WHERE p.national_dex_number = 44;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 24, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-15'
WHERE p.national_dex_number = 48;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 25, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-15'
WHERE p.national_dex_number = 132;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 18, 22, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-16'
WHERE p.national_dex_number = 19;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 23, 25, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-16'
WHERE p.national_dex_number = 20;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 22, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-16'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 18, 22, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-16'
WHERE p.national_dex_number = 84;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 22, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-17'
WHERE p.national_dex_number = 19;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 29, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-17'
WHERE p.national_dex_number = 20;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 22, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-17'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 27, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-17'
WHERE p.national_dex_number = 22;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 24, 28, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-17'
WHERE p.national_dex_number = 84;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 22, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-18'
WHERE p.national_dex_number = 19;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 29, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-18'
WHERE p.national_dex_number = 20;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 22, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-18'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 29, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-18'
WHERE p.national_dex_number = 22;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 24, 28, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-18'
WHERE p.national_dex_number = 84;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 4, 5, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-2'
WHERE p.national_dex_number = 10;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 4, 5, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-2'
WHERE p.national_dex_number = 13;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 2, 5, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-2'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 2, 5, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-2'
WHERE p.national_dex_number = 19;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 2, 5, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-22'
WHERE p.national_dex_number = 19;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 3, 5, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-22'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 40, 'Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-22'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 2, 5, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-22'
WHERE p.national_dex_number = 56;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-22'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-22'
WHERE p.national_dex_number = 61;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-22'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-22'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-22'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-23'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 40, 44, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-23'
WHERE p.national_dex_number = 22;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-23'
WHERE p.national_dex_number = 23;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 44, 44, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-23'
WHERE p.national_dex_number = 24;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 40, 'Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-23'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-23'
WHERE p.national_dex_number = 56;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 42, 42, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-23'
WHERE p.national_dex_number = 57;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-23'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-23'
WHERE p.national_dex_number = 61;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-23'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-23'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-23'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 7, 7, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 10;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 8, 8, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 11;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 7, 7, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 13;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 8, 8, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 14;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 11, 13, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 12, 14, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 43;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 8, 12, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 63;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 35, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 8, 8, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 10;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 9, 9, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 11;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 8, 8, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 13;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 9, 9, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 14;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 11, 13, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 12, 14, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 43;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 40, 'Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 61;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 9, 13, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 63;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 6, 7, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-3'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 6, 8, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-3'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 6, 6, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-3'
WHERE p.national_dex_number = 29;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 6, 7, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-3'
WHERE p.national_dex_number = 32;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 3, 7, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-3'
WHERE p.national_dex_number = 39;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 7, 7, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-3'
WHERE p.national_dex_number = 56;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 8, 12, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-4'
WHERE p.national_dex_number = 19;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 8, 12, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-4'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 6, 12, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-4'
WHERE p.national_dex_number = 23;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-4'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 10, 12, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-4'
WHERE p.national_dex_number = 56;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-4'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-4'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 35, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-4'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-4'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-4'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 13, 16, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-5'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 13, 16, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-5'
WHERE p.national_dex_number = 43;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 10, 16, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-5'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 13, 16, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-6'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 13, 16, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-6'
WHERE p.national_dex_number = 43;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 10, 16, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-6'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 40, 'Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-6'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-6'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-6'
WHERE p.national_dex_number = 61;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-6'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-6'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-6'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 19, 22, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-7'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 19, 22, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-7'
WHERE p.national_dex_number = 43;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 17, 20, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-7'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 18, 20, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-7'
WHERE p.national_dex_number = 58;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 18, 20, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-8'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 17, 19, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-8'
WHERE p.national_dex_number = 23;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 18, 20, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-8'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 18, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-8'
WHERE p.national_dex_number = 58;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 14, 17, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-9'
WHERE p.national_dex_number = 19;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 13, 17, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-9'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 11, 17, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-9'
WHERE p.national_dex_number = 23;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 24, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 29;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 31, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 30;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 32;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 33, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 33;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 23, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 46;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 47;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 23, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 48;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 32, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 49;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 40, 'Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 26, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 84;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 23, 27, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 102;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 111;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 23, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 113;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 28, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 115;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 119;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 23, 28, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 123;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 28, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 128;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 147;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 148;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-19'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-19'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-19'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-19'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-19'
WHERE p.national_dex_number = 117;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-19'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-19'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-20'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-20'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-20'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-20'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-20'
WHERE p.national_dex_number = 117;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-20'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-20'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-21'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-21'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-21'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 17, 28, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-21'
WHERE p.national_dex_number = 114;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-21'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-21'
WHERE p.national_dex_number = 117;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-21'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-21'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 44, 46, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'calle-victoria'
WHERE p.national_dex_number = 24;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'calle-victoria'
WHERE p.national_dex_number = 41;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 44, 46, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'calle-victoria'
WHERE p.national_dex_number = 42;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 42, 42, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'calle-victoria'
WHERE p.national_dex_number = 57;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'calle-victoria'
WHERE p.national_dex_number = 66;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 44, 48, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'calle-victoria'
WHERE p.national_dex_number = 67;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'calle-victoria'
WHERE p.national_dex_number = 74;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 40, 48, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'calle-victoria'
WHERE p.national_dex_number = 95;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 44, 48, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'calle-victoria'
WHERE p.national_dex_number = 105;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 32, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 36, 36, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 22;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 31, 31, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 37, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 53;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Hierba, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 31, 'Hierba, Roca'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 74;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 40, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 75;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 31, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 77;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 37, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 78;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 117;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 37, 37, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-perdida'
WHERE p.national_dex_number = 41;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 41, 43, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-perdida'
WHERE p.national_dex_number = 42;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 38, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-perdida'
WHERE p.national_dex_number = 92;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 44, 52, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-perdida'
WHERE p.national_dex_number = 93;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pilar-del-recuerdo'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pilar-del-recuerdo'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pilar-del-recuerdo'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pilar-del-recuerdo'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pilar-del-recuerdo'
WHERE p.national_dex_number = 117;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pilar-del-recuerdo'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pilar-del-recuerdo'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 32, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-ascuas'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 38, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-ascuas'
WHERE p.national_dex_number = 22;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 31, 39, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-ascuas'
WHERE p.national_dex_number = 66;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 38, 42, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-ascuas'
WHERE p.national_dex_number = 67;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 44, 'Hierba, Roca'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-ascuas'
WHERE p.national_dex_number = 74;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 50, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-ascuas'
WHERE p.national_dex_number = 75;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 36, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-ascuas'
WHERE p.national_dex_number = 77;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 39, 42, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-ascuas'
WHERE p.national_dex_number = 78;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 8, 12, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-moon'
WHERE p.national_dex_number = 35;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 7, 11, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-moon'
WHERE p.national_dex_number = 41;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 12, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-moon'
WHERE p.national_dex_number = 46;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 7, 10, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-moon'
WHERE p.national_dex_number = 74;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-prima'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-prima'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-prima'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-prima'
WHERE p.national_dex_number = 90;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-prima'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-prima'
WHERE p.national_dex_number = 117;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-prima'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-prima'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-marginada'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-marginada'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-marginada'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-marginada'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-marginada'
WHERE p.national_dex_number = 117;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-marginada'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-marginada'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pueblo-paleta'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pueblo-paleta'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pueblo-paleta'
WHERE p.national_dex_number = 90;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pueblo-paleta'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pueblo-paleta'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pueblo-paleta'
WHERE p.national_dex_number = 117;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pueblo-paleta'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pueblo-paleta'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 6, 6, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'arbusto-misterioso'
WHERE p.national_dex_number = 10;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 9, 9, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'arbusto-misterioso'
WHERE p.national_dex_number = 11;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 6, 6, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'arbusto-misterioso'
WHERE p.national_dex_number = 13;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 9, 9, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'arbusto-misterioso'
WHERE p.national_dex_number = 14;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 26, 28, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'mansion-pokemon'
WHERE p.national_dex_number = 19;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 38, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'mansion-pokemon'
WHERE p.national_dex_number = 20;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 32, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'mansion-pokemon'
WHERE p.national_dex_number = 58;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 28, 28, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'mansion-pokemon'
WHERE p.national_dex_number = 88;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 28, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'mansion-pokemon'
WHERE p.national_dex_number = 109;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'mansion-pokemon'
WHERE p.national_dex_number = 110;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'mansion-pokemon'
WHERE p.national_dex_number = 132;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 13, 19, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'torre-pokemon'
WHERE p.national_dex_number = 92;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 25, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'torre-pokemon'
WHERE p.national_dex_number = 93;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 19, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'torre-pokemon'
WHERE p.national_dex_number = 104;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'complejo-placer'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'complejo-placer'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'complejo-placer'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'complejo-placer'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'complejo-placer'
WHERE p.national_dex_number = 117;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'complejo-placer'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'complejo-placer'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 16, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'tunel-roca'
WHERE p.national_dex_number = 41;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 16, 17, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'tunel-roca'
WHERE p.national_dex_number = 56;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 16, 17, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'tunel-roca'
WHERE p.national_dex_number = 66;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 30, 'Hierba, Roca'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'tunel-roca'
WHERE p.national_dex_number = 74;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 40, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'tunel-roca'
WHERE p.national_dex_number = 75;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 13, 17, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'tunel-roca'
WHERE p.national_dex_number = 95;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 44, 44, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 49, 49, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 22;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 43, 43, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 49, 52, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 53;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 41, 'Hierba, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 61;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'islas-espuma'
WHERE p.national_dex_number = 41;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 26, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'islas-espuma'
WHERE p.national_dex_number = 42;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 40, 'Hierba, Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'islas-espuma'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 40, 'Hierba, Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'islas-espuma'
WHERE p.national_dex_number = 55;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Hierba, Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'islas-espuma'
WHERE p.national_dex_number = 86;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 40, 'Hierba, Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'islas-espuma'
WHERE p.national_dex_number = 87;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'islas-espuma'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 30, 'Surf, Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'islas-espuma'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'islas-espuma'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'islas-espuma'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 50, 50, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'canon-sevault'
WHERE p.national_dex_number = 22;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 43, 43, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'canon-sevault'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 49, 52, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'canon-sevault'
WHERE p.national_dex_number = 53;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 46, 'Hierba, Roca'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'canon-sevault'
WHERE p.national_dex_number = 74;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 50, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'canon-sevault'
WHERE p.national_dex_number = 75;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 54, 54, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'canon-sevault'
WHERE p.national_dex_number = 95;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 46, 46, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'canon-sevault'
WHERE p.national_dex_number = 104;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 52, 52, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'canon-sevault'
WHERE p.national_dex_number = 105;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ss-anne'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ss-anne'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ss-anne'
WHERE p.national_dex_number = 90;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ss-anne'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 35, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ss-anne'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ss-anne'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ss-anne'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'torre-de-entrenadores'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'torre-de-entrenadores'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'torre-de-entrenadores'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'torre-de-entrenadores'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'torre-de-entrenadores'
WHERE p.national_dex_number = 117;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'torre-de-entrenadores'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'torre-de-entrenadores'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 31, 32, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'playa-tesoro'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 36, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'playa-tesoro'
WHERE p.national_dex_number = 22;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 31, 31, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'playa-tesoro'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 37, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'playa-tesoro'
WHERE p.national_dex_number = 53;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Hierba, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'playa-tesoro'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'playa-tesoro'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'playa-tesoro'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 33, 35, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'playa-tesoro'
WHERE p.national_dex_number = 114;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'playa-tesoro'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'playa-tesoro'
WHERE p.national_dex_number = 117;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'playa-tesoro'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'playa-tesoro'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-carmin'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-carmin'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-carmin'
WHERE p.national_dex_number = 90;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-carmin'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 35, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-carmin'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-carmin'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-carmin'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 40, 'Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-verde'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-verde'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-verde'
WHERE p.national_dex_number = 61;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-verde'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-verde'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-verde'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 3, 5, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-verde'
WHERE p.national_dex_number = 10;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-verde'
WHERE p.national_dex_number = 11;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 3, 5, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-verde'
WHERE p.national_dex_number = 13;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 4, 6, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-verde'
WHERE p.national_dex_number = 14;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 3, 5, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-verde'
WHERE p.national_dex_number = 25;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'laberinto-maritimo'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'laberinto-maritimo'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'laberinto-maritimo'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'laberinto-maritimo'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'laberinto-maritimo'
WHERE p.national_dex_number = 117;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'laberinto-maritimo'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'laberinto-maritimo'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 44, 44, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 48, 50, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 22;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 44, 44, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 43;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 48, 48, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 44;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 41, 41, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 47, 50, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 53;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 41, 'Hierba, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 54;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 117;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 32, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 37, 37, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 17;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 34, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 48;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 37, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 49;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 69;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 35, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 70;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Hierba, Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 80;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 34, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 96;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 37, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 97;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 35, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 102;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 119;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 29, 32, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 34, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 17;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 34, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 48;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 31, 31, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 37, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 53;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 31, 31, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 69;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 36, 36, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 70;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Hierba, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 99;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puente-vinculo'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 44, 44, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'entrada-del-canon'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 48, 50, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'entrada-del-canon'
WHERE p.national_dex_number = 22;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 41, 41, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'entrada-del-canon'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 47, 50, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'entrada-del-canon'
WHERE p.national_dex_number = 53;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 41, 41, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'entrada-del-canon'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 31, 31, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 36, 36, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 22;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 31, 31, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 37, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 53;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 61;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 32, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 69;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 36, 38, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 70;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Hierba, Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Hierba, Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 80;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cabo-extremo'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azulona'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 40, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azulona'
WHERE p.national_dex_number = 88;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azulona'
WHERE p.national_dex_number = 109;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 35, 'Caña vieja, Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azulona'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 46, 61, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 42;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 49, 64, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 47;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 52, 61, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 57;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 61;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 55, 67, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 64;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 46, 52, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 67;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 60, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 74;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 40, 65, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 75;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 60, 'Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 40, 65, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 80;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 49, 55, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 82;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 58, 64, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 101;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 52, 67, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 132;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-celeste'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-celeste'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 35, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-celeste'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-celeste'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-celeste'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-celeste'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 80;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 120;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 22, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-diglett'
WHERE p.national_dex_number = 50;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 29, 31, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-diglett'
WHERE p.national_dex_number = 51;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-quinta'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-quinta'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-quinta'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-quinta'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-quinta'
WHERE p.national_dex_number = 99;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-quinta'
WHERE p.national_dex_number = 120;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-quinta'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-quinta'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 44, 44, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 48, 50, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 17;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 41, 41, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 47, 50, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 53;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 41, 'Hierba, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 99;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-cuarta'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-cuarta'
WHERE p.national_dex_number = 61;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 35, 'Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-cuarta'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-cuarta'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-cuarta'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-cuarta'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-fucsia'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 40, 'Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-fucsia'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-fucsia'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-fucsia'
WHERE p.national_dex_number = 119;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-fucsia'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-fucsia'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-verde'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-verde'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-verde'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-verde'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-verde'
WHERE p.national_dex_number = 99;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-verde'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-verde'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 40, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 41;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 45, 48, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 42;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 61;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 45, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 45, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 41, 'Hierba, Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 47, 'Hierba, Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 86;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 53, 'Hierba, Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 87;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 99;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 120;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 45, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 131;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'central-electrica'
WHERE p.national_dex_number = 25;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 25, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'central-electrica'
WHERE p.national_dex_number = 81;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 31, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'central-electrica'
WHERE p.national_dex_number = 82;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 25, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'central-electrica'
WHERE p.national_dex_number = 100;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 2, 5, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-1'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 2, 4, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-1'
WHERE p.national_dex_number = 19;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 13, 17, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-10'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 11, 17, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-10'
WHERE p.national_dex_number = 27;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-10'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-10'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 35, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-10'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 14, 17, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-10'
WHERE p.national_dex_number = 100;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-10'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-10'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-10'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 13, 17, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-11'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 12, 15, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-11'
WHERE p.national_dex_number = 27;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-11'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-11'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 11, 15, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-11'
WHERE p.national_dex_number = 96;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 35, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-11'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-11'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-11'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-11'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 23, 27, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-12'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 24, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-12'
WHERE p.national_dex_number = 48;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-12'
WHERE p.national_dex_number = 69;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 28, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-12'
WHERE p.national_dex_number = 70;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-12'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-12'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 35, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-12'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-12'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-12'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-12'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 27, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-13'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 29, 29, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-13'
WHERE p.national_dex_number = 17;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 24, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-13'
WHERE p.national_dex_number = 48;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-13'
WHERE p.national_dex_number = 69;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 28, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-13'
WHERE p.national_dex_number = 70;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-13'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-13'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 35, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-13'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-13'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-13'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-13'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 25, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-13'
WHERE p.national_dex_number = 132;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 27, 27, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-14'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 29, 29, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-14'
WHERE p.national_dex_number = 17;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 24, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-14'
WHERE p.national_dex_number = 48;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-14'
WHERE p.national_dex_number = 69;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-14'
WHERE p.national_dex_number = 70;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 23, 23, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-14'
WHERE p.national_dex_number = 132;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 27, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-15'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 29, 29, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-15'
WHERE p.national_dex_number = 17;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 24, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-15'
WHERE p.national_dex_number = 48;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-15'
WHERE p.national_dex_number = 69;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 28, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-15'
WHERE p.national_dex_number = 70;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 25, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-15'
WHERE p.national_dex_number = 132;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 18, 22, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-16'
WHERE p.national_dex_number = 19;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 23, 25, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-16'
WHERE p.national_dex_number = 20;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 22, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-16'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 18, 22, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-16'
WHERE p.national_dex_number = 84;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 22, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-17'
WHERE p.national_dex_number = 19;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 29, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-17'
WHERE p.national_dex_number = 20;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 22, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-17'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 27, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-17'
WHERE p.national_dex_number = 22;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 24, 28, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-17'
WHERE p.national_dex_number = 84;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 22, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-18'
WHERE p.national_dex_number = 19;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 29, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-18'
WHERE p.national_dex_number = 20;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 22, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-18'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 29, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-18'
WHERE p.national_dex_number = 22;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 24, 28, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-18'
WHERE p.national_dex_number = 84;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 4, 5, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-2'
WHERE p.national_dex_number = 10;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 4, 5, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-2'
WHERE p.national_dex_number = 13;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 2, 5, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-2'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 2, 5, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-2'
WHERE p.national_dex_number = 19;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 2, 5, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-22'
WHERE p.national_dex_number = 19;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 3, 5, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-22'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 2, 5, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-22'
WHERE p.national_dex_number = 56;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-22'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-22'
WHERE p.national_dex_number = 61;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 40, 'Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-22'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-22'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-22'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-22'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-23'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 40, 44, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-23'
WHERE p.national_dex_number = 22;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-23'
WHERE p.national_dex_number = 27;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 44, 44, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-23'
WHERE p.national_dex_number = 28;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-23'
WHERE p.national_dex_number = 56;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 42, 42, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-23'
WHERE p.national_dex_number = 57;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-23'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-23'
WHERE p.national_dex_number = 61;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 40, 'Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-23'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-23'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-23'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-23'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 7, 7, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 10;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 8, 8, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 11;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 7, 7, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 13;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 8, 8, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 14;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 11, 13, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 8, 12, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 63;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 12, 14, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 69;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 35, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-24'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 8, 8, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 10;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 9, 9, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 11;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 8, 8, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 13;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 9, 9, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 14;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 11, 13, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 61;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 9, 13, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 63;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 12, 14, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 69;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 40, 'Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-25'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 6, 7, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-3'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 6, 8, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-3'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 6, 7, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-3'
WHERE p.national_dex_number = 29;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 6, 6, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-3'
WHERE p.national_dex_number = 32;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 3, 7, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-3'
WHERE p.national_dex_number = 39;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 7, 7, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-3'
WHERE p.national_dex_number = 56;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 8, 12, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-4'
WHERE p.national_dex_number = 19;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 8, 12, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-4'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 6, 12, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-4'
WHERE p.national_dex_number = 27;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 10, 12, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-4'
WHERE p.national_dex_number = 56;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-4'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-4'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 35, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-4'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-4'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-4'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-4'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 13, 16, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-5'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 10, 16, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-5'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 13, 16, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-5'
WHERE p.national_dex_number = 69;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 13, 16, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-6'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 10, 16, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-6'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-6'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-6'
WHERE p.national_dex_number = 61;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 13, 16, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-6'
WHERE p.national_dex_number = 69;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 40, 'Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-6'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-6'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-6'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-6'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 19, 22, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-7'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 18, 20, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-7'
WHERE p.national_dex_number = 37;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 17, 20, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-7'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 19, 22, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-7'
WHERE p.national_dex_number = 69;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 18, 20, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-8'
WHERE p.national_dex_number = 16;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 17, 19, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-8'
WHERE p.national_dex_number = 27;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 18, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-8'
WHERE p.national_dex_number = 37;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 18, 20, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-8'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 14, 17, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-9'
WHERE p.national_dex_number = 19;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 13, 17, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-9'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 11, 17, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-9'
WHERE p.national_dex_number = 27;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 29;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 33, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 30;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 24, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 32;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 31, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 33;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 23, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 46;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 47;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 23, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 48;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 32, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 49;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 40, 'Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 26, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 84;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 23, 27, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 102;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 111;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 23, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 113;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 28, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 115;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 119;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 23, 28, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 127;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 28, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 128;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 147;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'zona-safari'
WHERE p.national_dex_number = 148;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-19'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-19'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-19'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-19'
WHERE p.national_dex_number = 99;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-19'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-19'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-19'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-20'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-20'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-20'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-20'
WHERE p.national_dex_number = 99;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-20'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-20'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-20'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-21'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-21'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-21'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-21'
WHERE p.national_dex_number = 99;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 17, 28, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-21'
WHERE p.national_dex_number = 114;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-21'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-21'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-21'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 44, 46, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'calle-victoria'
WHERE p.national_dex_number = 28;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'calle-victoria'
WHERE p.national_dex_number = 41;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 44, 46, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'calle-victoria'
WHERE p.national_dex_number = 42;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 42, 42, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'calle-victoria'
WHERE p.national_dex_number = 57;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'calle-victoria'
WHERE p.national_dex_number = 66;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 44, 48, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'calle-victoria'
WHERE p.national_dex_number = 67;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'calle-victoria'
WHERE p.national_dex_number = 74;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 40, 48, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'calle-victoria'
WHERE p.national_dex_number = 95;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 44, 48, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'calle-victoria'
WHERE p.national_dex_number = 105;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 32, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 36, 36, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 22;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 31, 31, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 37, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 53;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 31, 'Hierba, Roca'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 74;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 40, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 75;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 31, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 77;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 37, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 78;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Hierba, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 99;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-ascuas'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 37, 37, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-perdida'
WHERE p.national_dex_number = 41;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 41, 43, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-perdida'
WHERE p.national_dex_number = 42;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 38, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-perdida'
WHERE p.national_dex_number = 92;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 44, 52, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-perdida'
WHERE p.national_dex_number = 93;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pilar-del-recuerdo'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pilar-del-recuerdo'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pilar-del-recuerdo'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pilar-del-recuerdo'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pilar-del-recuerdo'
WHERE p.national_dex_number = 99;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pilar-del-recuerdo'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pilar-del-recuerdo'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 32, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-ascuas'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 38, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-ascuas'
WHERE p.national_dex_number = 22;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 31, 39, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-ascuas'
WHERE p.national_dex_number = 66;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 38, 42, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-ascuas'
WHERE p.national_dex_number = 67;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 44, 'Hierba, Roca'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-ascuas'
WHERE p.national_dex_number = 74;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 50, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-ascuas'
WHERE p.national_dex_number = 75;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 36, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-ascuas'
WHERE p.national_dex_number = 77;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 39, 42, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-ascuas'
WHERE p.national_dex_number = 78;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 38, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-ascuas'
WHERE p.national_dex_number = 126;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 8, 12, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-moon'
WHERE p.national_dex_number = 35;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 7, 11, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-moon'
WHERE p.national_dex_number = 41;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 12, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-moon'
WHERE p.national_dex_number = 46;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 7, 10, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-moon'
WHERE p.national_dex_number = 74;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-prima'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-prima'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-prima'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-prima'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-prima'
WHERE p.national_dex_number = 99;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-prima'
WHERE p.national_dex_number = 120;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-prima'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-prima'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-marginada'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-marginada'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-marginada'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-marginada'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-marginada'
WHERE p.national_dex_number = 99;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-marginada'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-marginada'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pueblo-paleta'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pueblo-paleta'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pueblo-paleta'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pueblo-paleta'
WHERE p.national_dex_number = 99;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pueblo-paleta'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pueblo-paleta'
WHERE p.national_dex_number = 120;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pueblo-paleta'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pueblo-paleta'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 6, 6, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'arbusto-misterioso'
WHERE p.national_dex_number = 10;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 9, 9, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'arbusto-misterioso'
WHERE p.national_dex_number = 11;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 6, 6, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'arbusto-misterioso'
WHERE p.national_dex_number = 13;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 9, 9, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'arbusto-misterioso'
WHERE p.national_dex_number = 14;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 26, 28, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'mansion-pokemon'
WHERE p.national_dex_number = 19;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 38, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'mansion-pokemon'
WHERE p.national_dex_number = 20;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 32, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'mansion-pokemon'
WHERE p.national_dex_number = 37;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 28, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'mansion-pokemon'
WHERE p.national_dex_number = 88;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'mansion-pokemon'
WHERE p.national_dex_number = 89;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 28, 28, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'mansion-pokemon'
WHERE p.national_dex_number = 109;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'mansion-pokemon'
WHERE p.national_dex_number = 132;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 13, 19, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'torre-pokemon'
WHERE p.national_dex_number = 92;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 25, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'torre-pokemon'
WHERE p.national_dex_number = 93;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 19, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'torre-pokemon'
WHERE p.national_dex_number = 104;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'complejo-placer'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'complejo-placer'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'complejo-placer'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'complejo-placer'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'complejo-placer'
WHERE p.national_dex_number = 99;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'complejo-placer'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'complejo-placer'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 16, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'tunel-roca'
WHERE p.national_dex_number = 41;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 16, 17, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'tunel-roca'
WHERE p.national_dex_number = 56;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 16, 17, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'tunel-roca'
WHERE p.national_dex_number = 66;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 30, 'Hierba, Roca'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'tunel-roca'
WHERE p.national_dex_number = 74;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 40, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'tunel-roca'
WHERE p.national_dex_number = 75;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 13, 17, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'tunel-roca'
WHERE p.national_dex_number = 95;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 44, 44, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 49, 49, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 22;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 43, 43, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 49, 52, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 53;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 61;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 41, 'Hierba, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 22, 26, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'islas-espuma'
WHERE p.national_dex_number = 41;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 26, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'islas-espuma'
WHERE p.national_dex_number = 42;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 40, 'Hierba, Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'islas-espuma'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 40, 'Hierba, Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'islas-espuma'
WHERE p.national_dex_number = 80;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Hierba, Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'islas-espuma'
WHERE p.national_dex_number = 86;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 40, 'Hierba, Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'islas-espuma'
WHERE p.national_dex_number = 87;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 30, 'Surf, Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'islas-espuma'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'islas-espuma'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'islas-espuma'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'islas-espuma'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 50, 50, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'canon-sevault'
WHERE p.national_dex_number = 22;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 43, 43, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'canon-sevault'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 49, 52, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'canon-sevault'
WHERE p.national_dex_number = 53;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 46, 'Hierba, Roca'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'canon-sevault'
WHERE p.national_dex_number = 74;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 50, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'canon-sevault'
WHERE p.national_dex_number = 75;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 54, 54, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'canon-sevault'
WHERE p.national_dex_number = 95;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 46, 46, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'canon-sevault'
WHERE p.national_dex_number = 104;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 52, 52, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'canon-sevault'
WHERE p.national_dex_number = 105;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ss-anne'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ss-anne'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 35, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ss-anne'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ss-anne'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ss-anne'
WHERE p.national_dex_number = 120;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ss-anne'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ss-anne'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 35, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'torre-de-entrenadores'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'torre-de-entrenadores'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'torre-de-entrenadores'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'torre-de-entrenadores'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'torre-de-entrenadores'
WHERE p.national_dex_number = 99;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'torre-de-entrenadores'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'torre-de-entrenadores'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 31, 32, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'playa-tesoro'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 36, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'playa-tesoro'
WHERE p.national_dex_number = 22;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 31, 31, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'playa-tesoro'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 37, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'playa-tesoro'
WHERE p.national_dex_number = 53;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'playa-tesoro'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'playa-tesoro'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Hierba, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'playa-tesoro'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'playa-tesoro'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'playa-tesoro'
WHERE p.national_dex_number = 99;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 33, 35, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'playa-tesoro'
WHERE p.national_dex_number = 114;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'playa-tesoro'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'playa-tesoro'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-carmin'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-carmin'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-carmin'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 35, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-carmin'
WHERE p.national_dex_number = 116;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-carmin'
WHERE p.national_dex_number = 120;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-carmin'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-carmin'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-verde'
WHERE p.national_dex_number = 60;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 30, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-verde'
WHERE p.national_dex_number = 61;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 40, 'Surf, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-verde'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-verde'
WHERE p.national_dex_number = 118;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-verde'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-verde'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 3, 5, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-verde'
WHERE p.national_dex_number = 10;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 4, 6, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-verde'
WHERE p.national_dex_number = 11;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 3, 5, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-verde'
WHERE p.national_dex_number = 13;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-verde'
WHERE p.national_dex_number = 14;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 3, 5, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-verde'
WHERE p.national_dex_number = 25;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'laberinto-maritimo'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'laberinto-maritimo'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'laberinto-maritimo'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'laberinto-maritimo'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'laberinto-maritimo'
WHERE p.national_dex_number = 99;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'laberinto-maritimo'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'laberinto-maritimo'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 44, 44, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 21;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 48, 50, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 22;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 41, 41, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 52;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 47, 50, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 53;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 44, 44, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 69;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 48, 48, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 70;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 72;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 73;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 41, 'Hierba, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 79;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 25, 'Caña buena, Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 98;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 99;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 15, 'Caña vieja, Caña buena'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 15, 25, 'Caña super'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 130;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 30, 'Encuentro estático.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'STATIC'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 97;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 8, 8, 'Premio de la Torre Casino.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'GAME_CORNER'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azulona'
WHERE p.national_dex_number = 35;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 9, 9, 'Premio de la Torre Casino.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'GAME_CORNER'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azulona'
WHERE p.national_dex_number = 63;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 25, 'Premio de la Torre Casino.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'GAME_CORNER'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azulona'
WHERE p.national_dex_number = 123;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 25, 'Regalo de un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'GIFT'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azulona'
WHERE p.national_dex_number = 133;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 26, 26, 'Premio de la Torre Casino.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'GAME_CORNER'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azulona'
WHERE p.national_dex_number = 137;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 18, 18, 'Premio de la Torre Casino.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'GAME_CORNER'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azulona'
WHERE p.national_dex_number = 147;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 70, 70, 'Encuentro estático.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'STATIC'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 150;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 20, 'Intercambio con un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'TRADE'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-celeste'
WHERE p.national_dex_number = 124;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Intercambio con un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'TRADE'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 86;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 3, 3, 'Intercambio con un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'TRADE'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 101;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Intercambio con un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'TRADE'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 114;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Fósil revivido en el laboratorio.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'FOSSIL'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 138;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Fósil revivido en el laboratorio.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'FOSSIL'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 140;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Fósil revivido en el laboratorio.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'FOSSIL'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 142;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 34, 34, 'Encuentro estático.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'STATIC'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'central-electrica'
WHERE p.national_dex_number = 101;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 50, 50, 'Encuentro estático.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'STATIC'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'central-electrica'
WHERE p.national_dex_number = 145;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 16, 16, 'Intercambio con un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'TRADE'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-11'
WHERE p.national_dex_number = 30;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 30, 'Encuentro estático.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'STATIC'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-12'
WHERE p.national_dex_number = 143;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 30, 'Encuentro estático.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'STATIC'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-16'
WHERE p.national_dex_number = 143;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 33, 33, 'Intercambio con un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'TRADE'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-18'
WHERE p.national_dex_number = 108;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Intercambio con un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'TRADE'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-2'
WHERE p.national_dex_number = 122;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Regalo de un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'GIFT'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-3'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Regalo de un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'GIFT'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-4'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Intercambio con un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'TRADE'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'paso-subterraneo'
WHERE p.national_dex_number = 29;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 50, 50, 'Encuentro estático.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'STATIC'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-ascuas'
WHERE p.national_dex_number = 146;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Regalo de un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'GIFT'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pueblo-paleta'
WHERE p.national_dex_number = 1;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Regalo de un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'GIFT'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pueblo-paleta'
WHERE p.national_dex_number = 4;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Regalo de un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'GIFT'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pueblo-paleta'
WHERE p.national_dex_number = 7;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 25, 'Regalo de un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'GIFT'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azafran'
WHERE p.national_dex_number = 106;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 25, 'Regalo de un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'GIFT'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azafran'
WHERE p.national_dex_number = 107;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 25, 'Regalo de un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'GIFT'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azafran'
WHERE p.national_dex_number = 131;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 50, 50, 'Encuentro estático.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'STATIC'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'islas-espuma'
WHERE p.national_dex_number = 144;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Intercambio con un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'TRADE'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-carmin'
WHERE p.national_dex_number = 83;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 30, 'Encuentro estático.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'STATIC'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 97;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 12, 12, 'Premio de la Torre Casino.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'GAME_CORNER'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azulona'
WHERE p.national_dex_number = 35;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 7, 7, 'Premio de la Torre Casino.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'GAME_CORNER'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azulona'
WHERE p.national_dex_number = 63;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 18, 18, 'Premio de la Torre Casino.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'GAME_CORNER'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azulona'
WHERE p.national_dex_number = 127;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 25, 'Regalo de un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'GIFT'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azulona'
WHERE p.national_dex_number = 133;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 18, 18, 'Premio de la Torre Casino.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'GAME_CORNER'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azulona'
WHERE p.national_dex_number = 137;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 24, 24, 'Premio de la Torre Casino.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'GAME_CORNER'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azulona'
WHERE p.national_dex_number = 147;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 70, 70, 'Encuentro estático.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'STATIC'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-celeste'
WHERE p.national_dex_number = 150;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 20, 20, 'Intercambio con un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'TRADE'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-celeste'
WHERE p.national_dex_number = 124;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Intercambio con un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'TRADE'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 86;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 3, 3, 'Intercambio con un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'TRADE'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 101;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Intercambio con un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'TRADE'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 114;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Fósil revivido en el laboratorio.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'FOSSIL'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 138;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Fósil revivido en el laboratorio.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'FOSSIL'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 140;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Fósil revivido en el laboratorio.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'FOSSIL'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'isla-canela'
WHERE p.national_dex_number = 142;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 34, 34, 'Encuentro estático.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'STATIC'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'central-electrica'
WHERE p.national_dex_number = 101;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 50, 50, 'Encuentro estático.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'STATIC'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'central-electrica'
WHERE p.national_dex_number = 145;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 16, 16, 'Intercambio con un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'TRADE'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-11'
WHERE p.national_dex_number = 33;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 30, 'Encuentro estático.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'STATIC'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-12'
WHERE p.national_dex_number = 143;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 30, 'Encuentro estático.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'STATIC'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-16'
WHERE p.national_dex_number = 143;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 25, 'Intercambio con un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'TRADE'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-18'
WHERE p.national_dex_number = 108;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Intercambio con un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'TRADE'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-2'
WHERE p.national_dex_number = 122;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Regalo de un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'GIFT'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-3'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Regalo de un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'GIFT'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ruta-4'
WHERE p.national_dex_number = 129;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Intercambio con un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'TRADE'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'paso-subterraneo'
WHERE p.national_dex_number = 32;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 50, 50, 'Encuentro estático.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'STATIC'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'monte-ascuas'
WHERE p.national_dex_number = 146;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Regalo de un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'GIFT'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pueblo-paleta'
WHERE p.national_dex_number = 1;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Regalo de un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'GIFT'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pueblo-paleta'
WHERE p.national_dex_number = 4;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Regalo de un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'GIFT'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pueblo-paleta'
WHERE p.national_dex_number = 7;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 25, 'Regalo de un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'GIFT'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azafran'
WHERE p.national_dex_number = 106;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 25, 'Regalo de un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'GIFT'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azafran'
WHERE p.national_dex_number = 107;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 25, 'Regalo de un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'GIFT'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-azafran'
WHERE p.national_dex_number = 131;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 50, 50, 'Encuentro estático.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'STATIC'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'islas-espuma'
WHERE p.national_dex_number = 144;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 5, 5, 'Intercambio con un NPC.'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'TRADE'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'ciudad-carmin'
WHERE p.national_dex_number = 83;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evento de distribución (no disponible en el juego base).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVENT'
WHERE p.national_dex_number = 151;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evento de distribución (no disponible en el juego base).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVENT'
WHERE p.national_dex_number = 151;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Bulbasaur (nivel 16).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 2;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Ivysaur (nivel 32).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 3;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Charmander (nivel 16).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 5;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Charmeleon (nivel 36).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 6;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Squirtle (nivel 16).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 8;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Wartortle (nivel 36).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 9;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Metapod (nivel 10).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 12;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Kakuna (nivel 10).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 15;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Pidgeotto (nivel 36).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 18;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Pikachu (piedra trueno).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 26;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Nidorina (piedra lunar).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 31;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Nidorino (piedra lunar).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 34;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Clefairy (piedra lunar).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 36;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Jigglypuff (piedra lunar).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 40;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Gloom (piedra hoja).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 45;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Growlithe (piedra fuego).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 59;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Poliwhirl (piedra agua).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 62;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Kadabra (intercambio).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 65;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Machoke (intercambio).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 68;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Graveler (intercambio).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 76;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Doduo (nivel 31).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 85;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Grimer (nivel 38).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 89;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Shellder (piedra agua).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 91;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Haunter (intercambio).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 94;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Krabby (nivel 28).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 99;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Exeggcute (piedra hoja).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 103;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Rhyhorn (nivel 42).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 112;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Eevee (piedra agua).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 134;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Eevee (piedra trueno).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 135;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Eevee (piedra fuego).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 136;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Omanyte (nivel 40).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 139;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Kabuto (nivel 40).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 141;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Dragonair (nivel 55).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 149;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Bulbasaur (nivel 16).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 2;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Ivysaur (nivel 32).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 3;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Charmander (nivel 16).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 5;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Charmeleon (nivel 36).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 6;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Squirtle (nivel 16).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 8;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Wartortle (nivel 36).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 9;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Metapod (nivel 10).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 12;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Kakuna (nivel 10).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 15;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Pidgeotto (nivel 36).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 18;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Pikachu (piedra trueno).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 26;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Nidorina (piedra lunar).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 31;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Nidorino (piedra lunar).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 34;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Clefairy (piedra lunar).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 36;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Vulpix (piedra fuego).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 38;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Jigglypuff (piedra lunar).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 40;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Poliwhirl (piedra agua).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 62;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Kadabra (intercambio).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 65;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Machoke (intercambio).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 68;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Weepinbell (piedra hoja).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 71;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Graveler (intercambio).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 76;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Doduo (nivel 31).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 85;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Haunter (intercambio).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 94;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Exeggcute (piedra hoja).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 103;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Koffing (nivel 35).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 110;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Rhyhorn (nivel 42).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 112;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Horsea (nivel 32).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 117;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Staryu (piedra agua).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 121;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Eevee (piedra agua).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 134;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Eevee (piedra trueno).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 135;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Eevee (piedra fuego).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 136;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Omanyte (nivel 40).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 139;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Kabuto (nivel 40).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 141;
INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Dragonair (nivel 55).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 149;
-- >>> EXPANSION GEN 3
-- Adquisiciones de las especies de Johto presentes en las Islas Sete.

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 32, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 163;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 24, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 163;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 32, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 163;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 24, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 163;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Hoothoot (nivel 20).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 164;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Hoothoot (nivel 20).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 164;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 167;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 28, 32, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'arbusto-misterioso'
WHERE p.national_dex_number = 167;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 167;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 28, 32, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'arbusto-misterioso'
WHERE p.national_dex_number = 167;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Spinarak (nivel 22).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 168;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Spinarak (nivel 22).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 168;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 170;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 170;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Chinchou (nivel 27).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 171;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Chinchou (nivel 27).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 171;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 177;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 35, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'entrada-del-canon'
WHERE p.national_dex_number = 177;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 177;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 35, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'entrada-del-canon'
WHERE p.national_dex_number = 177;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Natu (nivel 25).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 178;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Natu (nivel 25).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 178;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 179;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 28, 33, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-verde'
WHERE p.national_dex_number = 179;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 179;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 28, 33, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-verde'
WHERE p.national_dex_number = 179;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Mareep (nivel 15).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 180;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Mareep (nivel 15).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 180;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 32, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 194;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 28, 35, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'laberinto-maritimo'
WHERE p.national_dex_number = 194;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 32, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 194;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 28, 35, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'laberinto-maritimo'
WHERE p.national_dex_number = 194;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Wooper (nivel 20).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 195;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Wooper (nivel 20).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 195;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 36, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 198;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 38, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-perdida'
WHERE p.national_dex_number = 198;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 36, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 198;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 38, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-perdida'
WHERE p.national_dex_number = 198;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 38, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-perdida'
WHERE p.national_dex_number = 200;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 38, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 200;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 38, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-perdida'
WHERE p.national_dex_number = 200;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 38, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 200;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 40, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-perdida'
WHERE p.national_dex_number = 202;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 40, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-perdida'
WHERE p.national_dex_number = 202;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 36, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 203;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 36, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 203;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 28, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 204;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 35, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'arbusto-misterioso'
WHERE p.national_dex_number = 204;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 28, 34, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 204;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 35, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'arbusto-misterioso'
WHERE p.national_dex_number = 204;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Pineco (nivel 31).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 205;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Pineco (nivel 31).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 205;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 36, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'entrada-del-canon'
WHERE p.national_dex_number = 206;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 36, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'entrada-del-canon'
WHERE p.national_dex_number = 206;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 38, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 207;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 38, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 207;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-verde'
WHERE p.national_dex_number = 209;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 26, 31, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puerto-de-isla-tercera'
WHERE p.national_dex_number = 209;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-verde'
WHERE p.national_dex_number = 209;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 26, 31, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'puerto-de-isla-tercera'
WHERE p.national_dex_number = 209;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Snubbull (nivel 23).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 210;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Snubbull (nivel 23).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 210;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 38, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 211;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 38, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 211;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 38, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'arbusto-misterioso'
WHERE p.national_dex_number = 213;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 38, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'arbusto-misterioso'
WHERE p.national_dex_number = 213;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 38, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'arbusto-misterioso'
WHERE p.national_dex_number = 214;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 38, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 214;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 38, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'arbusto-misterioso'
WHERE p.national_dex_number = 214;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 38, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 214;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 42, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 215;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 215;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 42, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 215;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 215;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 35, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 216;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 36, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'entrada-del-canon'
WHERE p.national_dex_number = 216;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 35, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 216;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 36, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'entrada-del-canon'
WHERE p.national_dex_number = 216;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Teddiursa (nivel 30).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 217;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Teddiursa (nivel 30).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 217;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 36, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 220;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 36, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-perdida'
WHERE p.national_dex_number = 220;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 36, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 220;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 36, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-perdida'
WHERE p.national_dex_number = 220;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Swinub (nivel 33).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 221;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Swinub (nivel 33).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 221;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 223;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 35, 'Surf'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-maritimo'
WHERE p.national_dex_number = 223;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Remoraid (nivel 25).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 224;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Remoraid (nivel 25).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 224;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 38, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 225;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 38, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'canon-sevault'
WHERE p.national_dex_number = 225;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 38, 'Roca'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'cueva-fria'
WHERE p.national_dex_number = 225;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 38, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'canon-sevault'
WHERE p.national_dex_number = 225;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 42, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'canon-sevault'
WHERE p.national_dex_number = 227;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'entrada-del-canon'
WHERE p.national_dex_number = 227;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 42, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'canon-sevault'
WHERE p.national_dex_number = 227;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'entrada-del-canon'
WHERE p.national_dex_number = 227;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 38, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'canon-sevault'
WHERE p.national_dex_number = 228;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 34, 40, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 228;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Houndour (nivel 24).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 229;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 35, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'canon-sevault'
WHERE p.national_dex_number = 231;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 36, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'entrada-del-canon'
WHERE p.national_dex_number = 231;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Phanpy (nivel 25).'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 232;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 32, 38, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'valle-de-las-ruinas'
WHERE p.national_dex_number = 234;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 42, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'canon-sevault'
WHERE p.national_dex_number = 235;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 38, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 241;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 35, 42, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'rojo-fuego'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'canon-sevault'
WHERE p.national_dex_number = 246;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-verde'
WHERE p.national_dex_number = 161;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 27, 32, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 161;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Sentret (nivel 15).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 162;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'arbusto-misterioso'
WHERE p.national_dex_number = 165;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 27, 32, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'camino-verde'
WHERE p.national_dex_number = 165;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Ledyba (nivel 18).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 166;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 25, 30, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'pradera-de-la-isla-quinta'
WHERE p.national_dex_number = 187;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, NULL, NULL, NULL, 'Evoluciona de Hoppip (nivel 18).'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'EVOLUTION'
WHERE p.national_dex_number = 188;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 36, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'bosque-baya'
WHERE p.national_dex_number = 190;

INSERT INTO pokemon_acquisition
    (pokemon_id, game_id, method_id, location_id, min_level, max_level, notes)
SELECT p.id, g.id, m.id, l.id, 30, 36, 'Hierba'
FROM pokemon p
JOIN game g ON g.slug = 'verde-hoja'
JOIN obtain_method m ON m.code = 'WILD'
LEFT JOIN location l ON l.game_id = g.id AND l.slug = 'entrada-del-canon'
WHERE p.national_dex_number = 193;
-- <<< EXPANSION GEN 3 <<<
COMMIT;
