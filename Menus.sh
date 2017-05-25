#!/bin/bash
# Autor: Gustavo Aires Cavalcanti Moreira
# Data de Criação: 20/04/2017
# Data de Modificação: 21/04/2017 as 01:21
##############################################################

MENU(){
OPCAO=$( dialog                                 \
                --stdout                        \
                --title "MENU"                  \
                --menu "Gerenciador"            \
                0 0 0                           \
                1 "Gerenciar Arquivos"          \
                2 "Gerenciar Usuarios"          \
                3 "Gerenciar Pacotes"           \
                4 "Sair")
case $OPCAO in

        1) Gerenciar_Arquivos ;;
        2) Gerenciar_Usuarios ;;
      3) Gerenciar_Pacotes ;;
        4) clear; exit 0 ;;
        *) echo "opção invalida. Digite Novamente:"; PRESSIONE ;;
esac

}

Gerenciar_Arquivos(){
        bash /home/gustavo/testes/arquivos.sh
}

Gerenciar_Usuarios(){
        bash /home/gustavo/testes/usuarios.sh
}

Gerenciar_Pacotes(){
        bash /home/gustavo/testes/pacotes.sh
}

PRESSIONE(){
        dialog --msgbox "Pressione [ENTER] para Finalizar" 0 0
}

MENU
