-- MyPokédex v4 · Región
-- Fuente: PokéAPI region/1
-- Archivo generado automáticamente por build_sql.py. No editar a mano.
-- Codificación UTF-8 sin BOM.

SET NAMES utf8mb4;

START TRANSACTION;

-- Kanto es la única región del MVP.
INSERT INTO region (name) VALUES ('Kanto')
ON DUPLICATE KEY UPDATE name = VALUES(name);
COMMIT;
