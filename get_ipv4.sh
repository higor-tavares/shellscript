#!/bin/bash
# get_ipv4.sh Programa que exibe o ipv4 da maquina, desde que seja um IP com classe C (CIDR 24)
# Utiliza como dependencias o perl e o ip addr
# Por Higor Tavares
CIDR="/24"
REGEX="[1-9.]*(?=$CIDR)"
ip addr | perl -nle "print $& if m{$REGEX}"
