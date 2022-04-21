#!/bin/bash
# get_ipv4.sh Programa que exibe o ipv4 da maquina, desde que seja um IP com classe C (CIDR 24)
# Utiliza como dependencias o perl e o ip addr
# Por Higor Tavares
# Esse script pode ser utilizado sozinho para obter o IPV4 sem bagunça ./get_ipv4.sh ou  
# pode ser usado em conjunto com outros programas como por exemplo, pode ser passado como 
# parametro para o ipcalc: ipcalc $(./get_ipv4.sh) 255.255.255.0

###
# Constantes
#
# Equivalente a mascara de rede porem simplificada (quantidade de digitos 1)
CIDR="/24" 
# Ipv4 no padrao 192.168.100.30/24 por exemplo, sem imprimir o /24 
REGEX="[0-9.]*(?=$CIDR)" 

###
# Redireciona o resultado do ip addr para o perl que aplica o regex
#
ip addr | perl -nle "print $& if m{$REGEX}"