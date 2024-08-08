#!/bin/bash
usage() {
    echo "Uso: $0 <URL>"
    echo "Exemplo: $0 http://example.com"
    exit 1
}
if [ $# -ne 1 ]; then
    usage
fi
URL="$1"
title=$(curl -s "$URL" | grep -oP '(?<=<!DOCTYPE html><title>).*?(?=</title>)')
server=$(curl -sI "$URL" | grep -i 'Server:' | awk '{print $2}')
language=$(curl -sI "$URL" | grep -i 'X-Powered-By:' | awk '{print $2}')
echo "Título do site: $title"
echo "Servidor web: $server"
echo "Linguagem de programação: $language"
urls=$(curl -s "$URL" | grep -oP '<a\s+(?:[^>]?\s+)?href="([^"])"')
echo "URLs encontradas:"
echo "$urls"
forms=$(curl -s "$URL" | grep -oP '<form.?>(.?)</form>' | grep -oP '<input[^>]*>')
echo "Formulários e inputs de texto encontrados:"
echo "$forms"