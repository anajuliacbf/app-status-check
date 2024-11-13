#!/bin/bash  declara que é um script bash
# Usa o curl para verificar o status da aplicação
STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" http://localhost:8080)
if [ $STATUS -eq 200 ]; then
    echo "Application is up and running."
else
    echo "Application is down. Status code: $STATUS"
fi

