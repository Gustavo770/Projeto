#!/bin/bash
# Gerenciador de Arquivos
#########################################

clear

MENU(){
OPCAO=$( dialog                                 \
        --stdout                                \
        --menu "Gerenciador de Arquivos"        \
        0 0 0                                   \
        1 "Criar Arquivo"                       \
        2 "Apagar Arquivos"                     \
        3 "Criar Diretorio"                     \
        4 "Apagar Diretorio"                    \
        5 "listar Arquivos"                     \
        6 "Compactar Arquivo"                   \
        7 "Descompactar Arquivos"               \
        8 "Voltar")
case $OPCAO in
        1) CARQ ;;
        2) AARQ ;;
        3) CDIR ;;
        4) ADIR ;;
        5) LARQ ;;
        6) OARQ ;;
        7) DARQ ;;
        8) bash /home/gustavo/testes/menus.sh ;;
esac

}

CARQ(){
        NOME=$( dialog --stdout --inputbox " Digite o nome do Arquivo" 0 0 )
        LOCAL=$( dialog --stdout --inputbox " Digite o Local do Arquivo" 0 0 )
        > $LOCAL/$NOME
        PRESSIONE
        MENU
}

AARQ(){
        NOME=$( dialog --stdout --inputbox " Digite o nome do Arquivo" 0 0 )
        LOCAL=$( dialog --stdout --inputbox " Digite o Local do Arquivo" 0 0 )
        rm -rf $LOCAL/$NOME
        PRESSIONE
        MENU

}
CDIR(){
        NOME=$( dialog --stdout --inputbox " Digite o nome do Arquivo" 0 0 )
        LOCAL=$( dialog --stdout --inputbox " Digite o Local do Arquivo" 0 0 )
        > $LOCAL/$NOME
        PRESSIONE
        MENU

}

ADIR(){
        NOME=$( dialog --stdout --inputbox " Digite o nome do Arquivo" 0 0 )
        LOCAL=$( dialog --stdout --inputbox " Digite o Local do Arquivo" 0 0 )
        mkdir $LOCAL/$NOME
        PRESSIONE
        MENU
}

LARQ(){
        NOME=$( dialog --stdout --inputbox " Digite o nome do Arquivo" 0 0 )
        LOCAL=$( dialog --stdout --inputbox " Digite o Local do Arquivo" 0 0 )
        rm -rf $LOCAL/$NOME
        PRESSIONE
        MENU
}

OARQ(){
        dialog  --title "" --msgbox "Em Construção" 0 0
}

PRESSIONE(){
        dialog --msgbox "Pressione [ENTER] para finalizar" 0 0
}

MENU
