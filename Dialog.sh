#!/bin/bash
#########################
clear

echo "O Dialog ja esta instalado em sua maquina? "
read NOME

if [ $NOME == "sim" ]; then
        bash /home/gustavo/testes/login.sh
else
        apt-get install dialog
        bash /home/gustavo/testes/login.sh
fi



