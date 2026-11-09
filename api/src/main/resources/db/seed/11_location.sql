-- MyPokédex v4 · Localizaciones
-- Fuente: PokéAPI region/1 + nombres en español
-- Archivo generado automáticamente por build_sql.py. No editar a mano.
-- Codificación UTF-8 sin BOM.

SET NAMES utf8mb4;

START TRANSACTION;

-- 70 localizaciones con datos de Rojo Fuego / Verde Hoja para los 151
-- de Kanto. Se repiten por juego porque una captura pertenece a una partida.
-- Quedan fuera las zonas de evento/demo y las que PokéAPI no documenta
-- para FR/VH (Rutas 26-28 y Calle Victoria 1).

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Pueblo Paleta', 'pueblo-paleta', 1, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Pueblo Paleta', 'pueblo-paleta', 1, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 1', 'ruta-1', 2, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 1', 'ruta-1', 2, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ciudad Verde', 'ciudad-verde', 3, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ciudad Verde', 'ciudad-verde', 3, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 2', 'ruta-2', 4, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 2', 'ruta-2', 4, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Bosque Verde', 'bosque-verde', 5, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Bosque Verde', 'bosque-verde', 5, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 3', 'ruta-3', 6, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 3', 'ruta-3', 6, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Monte Moon', 'monte-moon', 7, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Monte Moon', 'monte-moon', 7, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 4', 'ruta-4', 8, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 4', 'ruta-4', 8, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ciudad Celeste', 'ciudad-celeste', 9, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ciudad Celeste', 'ciudad-celeste', 9, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 24', 'ruta-24', 10, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 24', 'ruta-24', 10, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 25', 'ruta-25', 11, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 25', 'ruta-25', 11, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 5', 'ruta-5', 12, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 5', 'ruta-5', 12, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 6', 'ruta-6', 13, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 6', 'ruta-6', 13, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ciudad Carmín', 'ciudad-carmin', 14, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ciudad Carmín', 'ciudad-carmin', 14, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'S.S. Anne', 'ss-anne', 15, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'S.S. Anne', 'ss-anne', 15, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 11', 'ruta-11', 16, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 11', 'ruta-11', 16, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Cueva Diglett', 'cueva-diglett', 17, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Cueva Diglett', 'cueva-diglett', 17, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 9', 'ruta-9', 18, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 9', 'ruta-9', 18, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 10', 'ruta-10', 19, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 10', 'ruta-10', 19, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Central Eléctrica', 'central-electrica', 20, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Central Eléctrica', 'central-electrica', 20, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Túnel Roca', 'tunel-roca', 21, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Túnel Roca', 'tunel-roca', 21, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Torre Pokémon', 'torre-pokemon', 22, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Torre Pokémon', 'torre-pokemon', 22, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 8', 'ruta-8', 23, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 8', 'ruta-8', 23, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 7', 'ruta-7', 24, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 7', 'ruta-7', 24, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ciudad Azulona', 'ciudad-azulona', 25, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ciudad Azulona', 'ciudad-azulona', 25, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ciudad Azafrán', 'ciudad-azafran', 26, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ciudad Azafrán', 'ciudad-azafran', 26, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Paso Subterráneo', 'paso-subterraneo', 27, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Paso Subterráneo', 'paso-subterraneo', 27, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 16', 'ruta-16', 28, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 16', 'ruta-16', 28, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 17', 'ruta-17', 29, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 17', 'ruta-17', 29, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 18', 'ruta-18', 30, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 18', 'ruta-18', 30, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ciudad Fucsia', 'ciudad-fucsia', 31, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ciudad Fucsia', 'ciudad-fucsia', 31, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Zona Safari', 'zona-safari', 32, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Zona Safari', 'zona-safari', 32, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 12', 'ruta-12', 33, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 12', 'ruta-12', 33, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 13', 'ruta-13', 34, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 13', 'ruta-13', 34, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 14', 'ruta-14', 35, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 14', 'ruta-14', 35, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 15', 'ruta-15', 36, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 15', 'ruta-15', 36, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 19', 'ruta-19', 37, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 19', 'ruta-19', 37, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 20', 'ruta-20', 38, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 20', 'ruta-20', 38, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Islas Espuma', 'islas-espuma', 39, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Islas Espuma', 'islas-espuma', 39, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Isla Canela', 'isla-canela', 40, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Isla Canela', 'isla-canela', 40, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Mansión Pokémon', 'mansion-pokemon', 41, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Mansión Pokémon', 'mansion-pokemon', 41, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 21', 'ruta-21', 42, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 21', 'ruta-21', 42, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 22', 'ruta-22', 43, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 22', 'ruta-22', 43, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 23', 'ruta-23', 44, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Ruta 23', 'ruta-23', 44, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Calle Victoria', 'calle-victoria', 45, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Calle Victoria', 'calle-victoria', 45, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Cueva Celeste', 'cueva-celeste', 46, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Cueva Celeste', 'cueva-celeste', 46, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Isla Prima', 'isla-prima', 47, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Isla Prima', 'isla-prima', 47, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Camino Ascuas', 'camino-ascuas', 48, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Camino Ascuas', 'camino-ascuas', 48, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Monte Ascuas', 'monte-ascuas', 49, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Monte Ascuas', 'monte-ascuas', 49, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Playa Tesoro', 'playa-tesoro', 50, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Playa Tesoro', 'playa-tesoro', 50, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Cabo Extremo', 'cabo-extremo', 51, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Cabo Extremo', 'cabo-extremo', 51, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Puente Vínculo', 'puente-vinculo', 52, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Puente Vínculo', 'puente-vinculo', 52, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Isla Cuarta', 'isla-cuarta', 53, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Isla Cuarta', 'isla-cuarta', 53, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Complejo Placer', 'complejo-placer', 54, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Complejo Placer', 'complejo-placer', 54, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Cueva Fría', 'cueva-fria', 55, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Cueva Fría', 'cueva-fria', 55, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Isla Quinta', 'isla-quinta', 56, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Isla Quinta', 'isla-quinta', 56, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Pradera de la Isla Quinta', 'pradera-de-la-isla-quinta', 57, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Pradera de la Isla Quinta', 'pradera-de-la-isla-quinta', 57, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Pilar del Recuerdo', 'pilar-del-recuerdo', 58, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Pilar del Recuerdo', 'pilar-del-recuerdo', 58, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Laberinto Marítimo', 'laberinto-maritimo', 59, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Laberinto Marítimo', 'laberinto-maritimo', 59, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Camino Verde', 'camino-verde', 60, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Camino Verde', 'camino-verde', 60, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Isla Marginada', 'isla-marginada', 61, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Isla Marginada', 'isla-marginada', 61, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Camino Marítimo', 'camino-maritimo', 62, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Camino Marítimo', 'camino-maritimo', 62, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Arbusto Misterioso', 'arbusto-misterioso', 63, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Arbusto Misterioso', 'arbusto-misterioso', 63, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Valle de las Ruinas', 'valle-de-las-ruinas', 64, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Valle de las Ruinas', 'valle-de-las-ruinas', 64, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Entrada del Cañón', 'entrada-del-canon', 65, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Entrada del Cañón', 'entrada-del-canon', 65, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Cañón Sevault', 'canon-sevault', 66, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Cañón Sevault', 'canon-sevault', 66, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Torre de Entrenadores', 'torre-de-entrenadores', 67, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Torre de Entrenadores', 'torre-de-entrenadores', 67, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Bosque Baya', 'bosque-baya', 68, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Bosque Baya', 'bosque-baya', 68, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Cueva Perdida', 'cueva-perdida', 69, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Cueva Perdida', 'cueva-perdida', 69, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);
-- >>> EXPANSION GEN 3
-- Puerto de Isla Tercera (Islas Sete) para completar 70 por juego.

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Puerto de Isla Tercera', 'puerto-de-isla-tercera', 70, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'rojo-fuego'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO location (name, slug, display_order, game_id, region_id)
SELECT 'Puerto de Isla Tercera', 'puerto-de-isla-tercera', 70, g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug = 'verde-hoja'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);
-- <<< EXPANSION GEN 3 <<<
COMMIT;
