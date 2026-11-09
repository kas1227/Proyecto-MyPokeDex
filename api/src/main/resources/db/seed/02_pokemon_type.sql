-- MyPokédex v4 · Tipos de Pokémon
-- Fuente: PokéAPI + tipos de Gen 3
-- Archivo generado automáticamente por build_sql.py. No editar a mano.
-- Codificación UTF-8 sin BOM.

SET NAMES utf8mb4;

START TRANSACTION;

-- Tipos vigentes en la generación 3 (sin Hada).
INSERT INTO pokemon_type (name) VALUES
  ('Normal'),
  ('Fuego'),
  ('Agua'),
  ('Planta'),
  ('Eléctrico'),
  ('Hielo'),
  ('Lucha'),
  ('Veneno'),
  ('Tierra'),
  ('Volador'),
  ('Psíquico'),
  ('Bicho'),
  ('Roca'),
  ('Fantasma'),
  ('Dragón'),
  ('Siniestro'),
  ('Acero')
ON DUPLICATE KEY UPDATE name = VALUES(name);
COMMIT;
