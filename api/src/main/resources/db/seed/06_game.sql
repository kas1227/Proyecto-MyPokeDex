-- MyPokédex v4 · Juegos
-- Fuente: Diseño del proyecto
-- Archivo generado automáticamente por build_sql.py. No editar a mano.
-- Codificación UTF-8 sin BOM.

SET NAMES utf8mb4;

START TRANSACTION;

-- Cada fila es una versión jugable concreta, no una familia de juegos.
INSERT INTO game (name, slug, generation) VALUES
  ('Pokémon Rojo Fuego', 'rojo-fuego', 3),
  ('Pokémon Verde Hoja', 'verde-hoja', 3)
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    generation = VALUES(generation);
COMMIT;
