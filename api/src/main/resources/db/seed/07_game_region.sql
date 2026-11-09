-- MyPokédex v4 · Regiones por juego
-- Fuente: Diseño del proyecto
-- Archivo generado automáticamente por build_sql.py. No editar a mano.
-- Codificación UTF-8 sin BOM.

SET NAMES utf8mb4;

START TRANSACTION;

-- Rojo Fuego y Verde Hoja pertenecen a la región de Kanto.
INSERT INTO game_region (game_id, region_id)
SELECT g.id, r.id
FROM game g
JOIN region r ON r.name = 'Kanto'
WHERE g.slug IN ('rojo-fuego', 'verde-hoja')
ON DUPLICATE KEY UPDATE game_id = VALUES(game_id);
COMMIT;
