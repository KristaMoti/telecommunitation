#!/bin/bash 

echo "=== Остановка лабораторной работы ===" 

cd "$(dirname "$0")/../docker" 

docker compose down 

echo "Окружение полностью выключено и ресурсы освобождены." 