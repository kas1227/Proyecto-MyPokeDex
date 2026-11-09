#!/usr/bin/env bash
# Carga el seed SQL de MyPokedex v4 en el contenedor MySQL.
#
# El seed solo contiene INSERT: las tablas las crea Hibernate al arrancar
# la aplicación (spring.jpa.hibernate.ddl-auto=update). Por eso este script:
#   1. levanta el contenedor,
#   2. arranca la app una vez para crear el esquema,
#   3. carga los 12 archivos en orden numérico,
#   4. imprime los conteos.
#
# Uso:
#   ./scripts/cargar_seed.sh
#
# Si tu usuario acaba de entrar al grupo docker, ejecútalo así:
#   sg docker -c ./scripts/cargar_seed.sh

set -euo pipefail

API_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$API_DIR"

DB_NAME="mypokedexv1"
SEED_DIR="src/main/resources/db/seed"
APP_LOG="$(mktemp -t mypokedex-app.XXXXXX.log)"

if ! docker compose config >/dev/null 2>&1; then
  echo "ERROR: Docker no puede leer docker-compose.yml."
  echo "Si usas el snap, ejecuta una vez:"
  echo "  sudo snap connect docker:removable-media"
  exit 1
fi

echo "==> Levantando MySQL..."
docker compose up -d

echo "==> Esperando a que MySQL acepte conexiones..."
for i in $(seq 1 60); do
  if docker compose exec -T db mysqladmin ping -h 127.0.0.1 -uroot --silent >/dev/null 2>&1; then
    break
  fi
  if [ "$i" -eq 60 ]; then
    echo "ERROR: MySQL no respondió a tiempo."
    docker compose logs --tail=40 db
    exit 1
  fi
  sleep 2
done

table_exists() {
  docker compose exec -T db mysql -uroot "$DB_NAME" -Nse \
    "SELECT 1 FROM information_schema.tables
      WHERE table_schema='$DB_NAME' AND table_name='pokemon' LIMIT 1;" \
    2>/dev/null | grep -qx 1
}

if ! table_exists; then
  echo "==> Creando el esquema con Hibernate (primer arranque de la app)..."
  ./mvnw -B -Dspring-boot.run.fork=false spring-boot:run >"$APP_LOG" 2>&1 &
  APP_PID=$!

  cleanup() {
    kill "$APP_PID" 2>/dev/null || true
    pkill -f 'com.mypokedex.api.MypokedexApiApplication' 2>/dev/null || true
  }
  trap cleanup EXIT

  for i in $(seq 1 90); do
    if grep -q "Started MypokedexApiApplication" "$APP_LOG"; then
      break
    fi
    if ! kill -0 "$APP_PID" 2>/dev/null; then
      echo "ERROR: la aplicación terminó antes de arrancar. Log:"
      tail -80 "$APP_LOG"
      exit 1
    fi
    sleep 2
  done

  if ! grep -q "Started MypokedexApiApplication" "$APP_LOG"; then
    echo "ERROR: timeout esperando a la aplicación. Log:"
    tail -80 "$APP_LOG"
    exit 1
  fi

  cleanup
  trap - EXIT
  sleep 2
  echo "    Esquema creado."
fi

echo "==> Cargando los 12 archivos del seed en orden..."
for f in "$SEED_DIR"/*.sql; do
  echo "    - $(basename "$f")"
  docker compose exec -T db mysql -uroot "$DB_NAME" < "$f"
done

echo
echo "==> Conteos finales:"
docker compose exec -T db mysql -uroot "$DB_NAME" -t -e "
SELECT 'region'                  AS tabla, COUNT(*) AS filas FROM region
UNION ALL SELECT 'pokemon_type',            COUNT(*) FROM pokemon_type
UNION ALL SELECT 'pokemon',                 COUNT(*) FROM pokemon
UNION ALL SELECT 'pokemon_type_assignment', COUNT(*) FROM pokemon_type_assignment
UNION ALL SELECT 'pokedex',                 COUNT(*) FROM pokedex
UNION ALL SELECT 'game',                    COUNT(*) FROM game
UNION ALL SELECT 'game_region',             COUNT(*) FROM game_region
UNION ALL SELECT 'game_pokedex',            COUNT(*) FROM game_pokedex
UNION ALL SELECT 'pokedex_entry',           COUNT(*) FROM pokedex_entry
UNION ALL SELECT 'obtain_method',           COUNT(*) FROM obtain_method
UNION ALL SELECT 'location',                COUNT(*) FROM location
UNION ALL SELECT 'pokemon_acquisition',     COUNT(*) FROM pokemon_acquisition;"

rm -f "$APP_LOG"
echo "==> Listo."
