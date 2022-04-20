#!/bin/bash
#
# seq.sh - Emulação do comando seq em Bash, por Higor Tavares
#
# O comando seq recebe dois números e mostra na saída padrão todos os números
# existentes entre eles, inclusive. Essa sequência está pronta pra ser usada
# pelo comando FOR. Caso omitido o número inicial é utilizado o1.
#
#
# 	Exemplo 1	Exemplo 2	Exemplo 3
#
#	$ seq 5 10	$ seq 10 5	$ seq 5
#
#	5		10		1
#	6		9		2
#	7		8		3
#	8		7		4
#	9		6		5
#	10		5
#
# Uso em scripts: for i in $(seq 5 10): do comandos: done
#

### Inicializando as variáveis.
operacao=+ #Infelizmente espaçamento causa erro de sintaxa por exemplo: operacao = + 
inicio=1
fim=${1:-1}
[ "$2" ] && {
	inicio=$1
	fim=$2
}

###
# Se o numero inicial for maior que o final a contagem é regressiva
#
[ $inicio -gt $fim ] && operacao = -

###
# Loop de contagem (progressiva ou regressiva)
#
while [ $inicio -ne $fim ]; do
	echo $inicio
	eval "inicio=\$(($inicio $operacao 1))"
done
echo $inicio #Mostra o útimo número.
