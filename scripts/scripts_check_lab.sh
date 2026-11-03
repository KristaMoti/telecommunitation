#!/bin/bash
echo "=== Проверка связи между узлами сети ==="

if docker exec ueransim ping -c 3 10.5.0.4 > /dev/null 2>&1; then
    echo "[OK] Связь есть: Вышка (ueransim) видит Ядро (10.5.0.4)!"
else
    echo "[ОШИБКА] Связи нет. Проверьте запуск контейнеров!"
fi