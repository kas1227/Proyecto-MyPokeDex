-- MyPokédex v4 · Métodos de obtención
-- Fuente: Diseño del proyecto
-- Archivo generado automáticamente por build_sql.py. No editar a mano.
-- Codificación UTF-8 sin BOM.

SET NAMES utf8mb4;

START TRANSACTION;

-- Catálogo de métodos. La categoría decide si se muestra como
-- encuentro salvaje o como método especial.
INSERT INTO obtain_method (code, label, category, display_order) VALUES
  ('WILD', 'Salvaje', 'WILD', 1),
  ('STATIC', 'Estático', 'WILD', 2),
  ('GIFT', 'Regalo', 'SPECIAL', 3),
  ('TRADE', 'Intercambio', 'SPECIAL', 4),
  ('FOSSIL', 'Fósil', 'SPECIAL', 5),
  ('GAME_CORNER', 'Casino', 'SPECIAL', 6),
  ('EVENT', 'Evento', 'SPECIAL', 7),
  ('EVOLUTION', 'Evolución', 'SPECIAL', 8)
ON DUPLICATE KEY UPDATE
    label = VALUES(label),
    category = VALUES(category),
    display_order = VALUES(display_order);
COMMIT;
