#!/bin/bash

# Fazendo o shell interagir com o usuario

echo "Posso executar a atualização do sistema, verificar pacotes quebrados e atualizar o Grub?[sn] "

read RESPOSTA

test "$RESPOSTA" = "n" && exit echo "Update e Upgrade:"

# O comando read leu o que o usuario digitou e guardou na variavel RESPOSTA e o comando "test" verificou se o conteudo dessa variável era "n". 
Se afirmativo, o comando "exit" foi chamado e o script foi finalizado.

sudo apt update && sudo apt upgrade -y

echo "Verificando pacotes quebrados"

sudo apt install -f

echo "Corrigindo DPKG"

sudo dpkg --configure -a

echo "Atualizando o Grub"

sudo update-grub
