#!/bin/bash
######################

MENU(){
OPCAO=$( dialog				\
	--stdout			\
	--title "Gerenciador"		\
	--menu "Escolha abaixo"		\
	0 0 0				\
	1 "Instalar Pacotes"		\
	2 "Listar Pacotes"		\
	3 "Remover Pacotes"		\
	4 "Sair")


case $OPCAO in
	1) IARQ ;;
	2) LARQ ;;
	3) RARQ ;;
	4) clear; exit 0 ;;


esac

}

IARQ(){
VAR=$( dialog						\
	--stdout					\
	--title "Lista de aplicativos"			\
	--inputbox "Digite o que você quer instalar"	\
	0 0)
	DOIS
}

DOIS(){
	dialog				\
	--title ""			\
	--infobox "Só um insante"	\
	0 0
	apt-get install --force-yes $VAR -y
	TRES

}

TRES(){
	dialog					\
	--title ""				\
	--msgbox "$VAR Instalado com sucesso	\
	0 0
	MENU
}

LARQ(){
	apt list --installed > /tmp/aptlist.txt
	cat -n /tmp/aptlist.txt > /tmp/aptlist2.txt
	dialog							\
	--textbox /tmp/aptlist2.txt				\
	0 0
	MENU
}

RARQ(){
VAR=$(	dialog						\
	--stdout					\
	--title "Excluir Arquivo"			\
	--inputbox "Digite o que você deseja excluir"	\
	0 0)
	DUELO
}

DUELO(){
	dialog				\
	--stdout			\
	--title ""			\
	--infobox "Só um instante"	\
	0 0
	apt-get remove -y $VAR		\
	sleep 2
	DUELISTA
}

DUELISTA(){
	apt-get purge -y $VAR
	sleep 1
	GG

}

GG(){
	dialog					\
	--title ""				\
	--msgbox "$VAR excluido com sucesso"	\
	0 0
	MENU

}
MENU
