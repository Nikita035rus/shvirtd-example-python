#!/bin/bash

# Ожидание доступности БД
while ! nc -z db 3306; do
  echo "Ждем, пока БД будет доступна..."
  sleep 1
done

# Запуск приложения
exec python main.py