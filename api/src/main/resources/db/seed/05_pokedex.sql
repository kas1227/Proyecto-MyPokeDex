-- MyPokédex v4 · Pokédex
-- Fuente: Diseño del proyecto
-- Archivo generado automáticamente por build_sql.py. No editar a mano.
-- Codificación UTF-8 sin BOM.

SET NAMES utf8mb4;

START TRANSACTION;

-- Pokédex de Kanto (regional) y Pokédex Nacional (sin región).
INSERT INTO pokedex (name, slug, display_order, region_id)
SELECT 'Pokédex de Kanto', 'kanto', 1, r.id
FROM region r WHERE r.name = 'Kanto'
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);

INSERT INTO pokedex (name, slug, display_order, region_id)
VALUES ('Pokédex Nacional', 'nacional', 2, NULL)
ON DUPLICATE KEY UPDATE
    name = VALUES(name),
    display_order = VALUES(display_order),
    region_id = VALUES(region_id);
COMMIT;
