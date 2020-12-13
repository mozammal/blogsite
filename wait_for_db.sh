#!/bin/sh

echo "waiting for MySQL to come online"

while ! nc -z db 3306; do
   sleep 1
done

echo "MySQL strated"