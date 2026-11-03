#!/bin/bash
set -e

echo "=== [1/3] Запуск учебного телеком-окружения ==="

cd "$(dirname "$0")/../docker"

docker compose up -d --build

echo "=== [2/3] Контейнеры успешно созданы и запущены! ==="
echo "Список активных узлов сети:"
docker ps --filter "name=open5gs-core" --filter "name=ueransim"

echo "=== [3/3] Окружение готово к выполнению работы ==="