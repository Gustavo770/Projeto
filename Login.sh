#!/bin/bash
######################################
USUARIO=gustavo
SENHA=123
N=0
LOGIN(){
        USER=$( dialog --stdout --title "Login" --inputbox "Digite o seu usua$
        PASS=$( dialog --stdout --title "Login" --passwordbox "Digite o sua s$
}

while (( $N != 5 )); do
        if [ $USER == $USUARIO -a $PASS == $SENHA ]; then
                bash /home/gustavo/testes/menus.sh
        else
                let N=($N+1)
                LOGIN
        fi
done
LOGIN
