#!/bin/bash
echo "Deseja verificar informações do sistema? [s/n]"
read RESPOSTA
test "$RESPOSTA" = "n" && exit
echo "Data e Horário:"
date
echo
echo "Utilização do disco:"
df
echo
echo "Usuários conectados:"
w
