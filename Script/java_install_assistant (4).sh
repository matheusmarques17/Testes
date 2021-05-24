#!/bin/bash

PURPLE='0;35'
NC='\033[0m' 
VERSAO=11
	
echo  "$(tput setaf 10)[SYSIGHT]:$(tput setaf 7) Olá, seja bem-vindo(a) ao instalador da SYSIGHT!;"
echo  "$(tput setaf 10)[SYSIGHT]:$(tput setaf 7)  Vou verificar se você tem o Java 11 instalado em sua máquina, um instante...;"

java -version
if [ $? -eq 0 ]
	then
		echo "$(tput setaf 10)[SYSIGHT]:$(tput setaf 7) : Eba, você tem sim!!"
	else
		echo "$(tput setaf 10)[SYSIGHT]:$(tput setaf 7)  Opa! Não identifiquei nenhuma versão do Java instalado, mas sem problemas, irei resolver isso agora!"
		echo "$(tput setaf 10)[SYSIGHT]:$(tput setaf 7)  Confirme para mim se realmente deseja instalar o Java (S/N)?"
	read inst
	if [ \"$inst\" == \"s\" ]
		then
			echo "$(tput setaf 10)[SYSIGHT]:$(tput setaf 7)  Ok! Instalando java versão 11, aguarde..."
			echo "$(tput setaf 10)[SYSIGHT]:$(tput setaf 7)  Adicionando o repositório!..."
			sleep 2
			sudo add-apt-repository ppa:webupd8team/java -y
			clear
			echo "$(tput setaf 10)[SYSIGHT]:$(tput setaf 7)  Atualizando! Quase lá."
			sleep 2
			sudo apt update -y
			clear
			
			if [ $VERSAO -eq 11 ]
				then
					echo "$(tput setaf 10)[SYSIGHT]:$(tput setaf 7) Preparando para instalar a versão 11 do Java. Confirme a instalação quando solicitado ;D"
					sudo apt install default-jre ; apt install openjdk-11-jre-headless; -y					clear
					echo "$(tput setaf 10)[SYSIGHT]:$(tput setaf 7) Java instalado com sucesso!"
				fi
		else 	
		echo "$(tput setaf 10)[SYSIGHT]:$(tput setaf 7)  Você optou por não instalar o Java por enquanto, até a próxima então!"
	fi
fi
echo "$(tput setaf 10) [SYSIGHT]:$(tput setaf 7) Confirme a instalação da apllicação? (S/N)"
      read inst
      if [ \"$inst\" == \"s\" ] 
	     then 
		      echo "$(tput setaf 10)[SYSIGHT]:$(tput setaf 7) Estou instalando a aplicação e configurando para você, aguarde. :D"
		      sudo apt-get install wget
		      wget https://transfer.sh/get/y70lh/java-swing-1.0-SNAPSHOT-jar-with-dependencies.jar
                      clear
 	       else
		      echo "$(tput setaf 10)[SYSIGHT]:$(tput setaf 7) Ok, finalizando script.."
      fi		     
echo "$(tput setaf 10)[SYSIGHT]:$(tput setaf 7) Ja tem cadastro em nossa plataforma?(S/N)"
        read inst
        if [ \"$inst\" == \"s\" ]
             then
                      echo "$(tput setaf 10)[SYSIGHT]:$(tput setaf 7) Ok, abrindo a aplicação :D"
                      java -jar java-swing-1.0-SNAPSHOT-jar-with-dependencies.jar
               else
                      echo "$(tput setaf 10)[SYSIGHT]:$(tput setaf 7) Ok, vou abrir o formulário de cadastro para você, um instante."
		      google-chrome www.google.com.br
		      echo "$(tput setaf 10)[SYSIGHT]:$(tput setaf 7) Conseguiu finalizar o cadastro?"
		      read inst
        if [ \"$inst\" == \"s\" ]
             then
                      echo "$(tput setaf 10)[SYSIGHT]:$(tput setaf 7) Ok, abrindo a aplicação :D"
                      java -jar java-swing-1.0-SNAPSHOT-jar-with-dependencies.jar
               else
                      echo "$(tput setaf 10)[SYSIGHT]:$(tput setaf 7) Que pena :/ Tente mais tarde."
                      google-chrome www.google.com.br
		fi
        fi

      
      



# ===================================================================
# Todos direitos reservados para o autor: Dra. Profa. Marise Miranda.
# Sob licença Creative Commons @2020
# Podera modificar e reproduzir para uso pessoal.
# Proibida a comercialização e a exclusão da autoria.
# ===================================================================
