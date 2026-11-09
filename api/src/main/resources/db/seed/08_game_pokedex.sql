-- MyPokédex v4 · Pokédex por juego
-- Fuente: Diseño del proyecto
-- Archivo generado automáticamente por build_sql.py. No editar a mano.
-- Codificación UTF-8 sin BOM.

SET NAMES utf8mb4;

START TRANSACTION;

-- Ambos juegos usan la Pokédex de Kanto (regional) y la Nacional.
INSERT INTO game_pokedex (game_id, pokedex_id)
SELECT g.id, d.id
FROM game g
JOIN pokedex d ON d.slug IN ('kanto', 'nacional')
WHERE g.slug IN ('rojo-fuego', 'verde-hoja')
ON DUPLICATE KEY UPDATE game_id = VALUES(game_id);
COMMIT;
