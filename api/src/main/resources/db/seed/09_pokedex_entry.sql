-- MyPokédex v4 · Entradas de Pokédex
-- Fuente: PokéAPI pokedex/2 + Pokédex Nacional
-- Archivo generado automáticamente por build_sql.py. No editar a mano.
-- Codificación UTF-8 sin BOM.

SET NAMES utf8mb4;

START TRANSACTION;

-- Kanto contiene los 151 regionales; la Nacional, las 386 especies de la Gen 3.
-- En Kanto el número regional coincide con el nacional (1-151).
DELETE FROM pokedex_entry
WHERE pokedex_id IN (SELECT id FROM pokedex WHERE slug IN ('kanto', 'nacional'));

INSERT INTO pokedex_entry (pokedex_id, pokemon_id, entry_number)
SELECT d.id, p.id, p.national_dex_number
FROM pokedex d
JOIN pokemon p ON p.national_dex_number BETWEEN 1
    AND CASE WHEN d.slug = 'kanto' THEN 151 ELSE 386 END
WHERE d.slug IN ('kanto', 'nacional');
COMMIT;
