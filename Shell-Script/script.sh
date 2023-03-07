#!/bin/bash



if [ ! -d ~/FIELDACADEMY ]; then
    
    echo "Posso criar a pasta para voce com o arquivo .js ? [sim/nao]"
    read RESPOSTA
    test "$RESPOSTA" = "nao" && exit echo "Criando..."
    mkdir -p /home/victor/FIELDACADEMY/
    touch  /home/victor/FIELDACADEMY/helloworld.js
    echo "Digite a mensagem para exibirmos: " 
    read x 
    echo  "console.log(' $x  ')"  >> /home/victor/FIELDACADEMY/helloworld.js 
    
    if [ "$?" -eq "0" ]; then
    echo "Pasta e arquivo .js criados com sucesso !"     
    fi

else 
  
    echo "Pasta e js já existentes, não se preocupe!"
fi
   
   echo "Executando arquivo js..."
   node /home/victor/FIELDACADEMY/helloworld.js

  echo "Criando arquivo zip da pasta..."
  zip -r FIELDACADEMY.zip FIELDACADEMY 
  echo "Apagando a pasta..."
  rm -r /home/victor/FIELDACADEMY
