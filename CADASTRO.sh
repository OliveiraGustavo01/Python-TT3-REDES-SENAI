#!/bin/bash

clear
NOME(){
	read -p "informe seu nome: " nome
	echo $nome | grep -E '[0-9.-\=_.><?;:!$*@%#"= *+_\]'
		if [ $? == 1 ]; then
			echo " VALIDO "
			echo "Nome: $nome" >> /home/vagrant/dados/nome.txt
			clear
			EMAIL

		else
			echo " INVALIDO "
		NOME
		fi
}
EMAIL(){
	read -p " informe seu email: " email
	echo $email | grep -E '^([a-zA-Z0-9_-.])+@[0-9a-zA-Z.-]+\.[a-z]{2,3}$'
		if [ $? == 0 ]; then
			echo "aceito"
			echo "EMAIL: $email" >> /home/vagrant/dados/email.txt
			clear
			CPF
		else

			echo " invalido"
			EMAIL

 		fi

}
CPF(){
read -p " informe seu cpf: " cpf
	echo $cpf | grep -E '^[0-9]{3}[.][0-9]{3}[.][0-9]{3}[-][0-9]{2}$'
	if [ $? == 0 ]; then
		echo " aceito"
		echo " CPF: $cpf" >> /home/vagrant/dados/cpf.txt
		clear
		DATA
	else
		echo " invalido"
		CPF
		fi

}
DATA() {
read -p "informe sua data de nascimento: " data
echo $data | grep -E '^[0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5](\.[0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5]){3}]$'
	if [ $? == 0 ]; then
		echo " data valida "
		echo " DATA: $data " >> /home/vagrant/dados/data.txt
		clear
		TELEFONE
		else
		echo "data nao valida"
		DATA
		fi



}
TELEFONE() {
read -p " informe seu telefone " tel
	echo $tel | grep -E '^[0-9]{11}$'
	if [ $? == 0 ]; then 
		echo " aceito"
		echo " TELEFONE: $tel " >> /home/vagrant/dados/telefone.txt
		clear
		RG
	else
	echo " invalido"
		TELEFONE
	fi

}
RG() {
read -p " informe seu rg: " rg
echo $rg | grep -E '^[0-9]{2}[.][0-9]{3}[.][0-9]{3}[-][a-zA-Z0-9]{1}$'
	if [ $? == 0 ]; then
		echo " rg valido "
		echo " RG : $rg" >> /home/vagrant/dados/rg.txt
		clear
		IP
		else
		echo " rg invalido"
			RG
	fi
}
IP(){
read -p " informe seu ip: " ip
echo $ip | grep -E '^[1-2]{1}[0-9]{1}[0-9]{0,1}[.][0-2]{1}[0-9]{0,1}[0-9]{0,1}[.][0-2]{1}[0-9]{0,1}[0-9]{0,1}[.][0-2]{1}[0-9]{0,1}[0-4]{0,1}$'
	if [ $? == 0 ]; then
	echo " aceito"
	echo " IP: $ip " >> /home/vagrant/dados/ip.txt
		clear
		MASCARA
	else
	echo "invalido"
		IP
	fi
}
MASCARA(){
read -p "informe sua netmask: " mask
echo $mask | grep -n "$mask" /home/vagrant/mascaraS.sh

	if [ $? == 0 ]; then
		echo " seu cadastro foi concluido com sucesso"
		echo " MASCARA : $mask " >> /home/vagrant/dados/mascara.txt
		exit
		else
		echo " INVALIDO"
		MASCARA
		fi
}
NOME
EMAIL
CPF
DATA
TELEFONE
RG
IP
MASCARA
