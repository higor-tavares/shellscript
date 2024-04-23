#!/bin/bash
echo "Digite o arquivo: "
read FILENAME
test -f "$FILENAME" && echo "$FILENAME é um arquivo" && exit 
test -d "$FILENAME" && echo "$FILENAME é um diretório" && exit
echo "$FILENAME não existe" && exit


