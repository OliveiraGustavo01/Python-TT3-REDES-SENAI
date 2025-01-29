#!/bin/usr/python
#-*- coding: utf8 -*-
import os, getpass, re

os.system("clear")
print ("Ola,este sera seu cadastro!")

def nome():
    Nome = raw_input("Informe o seu nome: ")
    match = re.match ('^[a-zA-Z ]+$', Nome)
    if match:
        print 'Nome Válido!'
        os.system("clear")
    else:
        print 'Nome Inválido!'
        os.system("clear")
        print 'Tente novamente: '
        nome()
nome()

def email():
    Email = raw_input("Informe seu e-mail: ")
    match = re.match ('^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$', Email)
    if match:
        print 'E-mail aceito!'
        os.system("clear")
    else:
        print 'E-mail Inválido!'
        os.system("clear")
        print 'Informe novamente: '
        email()
email()
def fixo():
        Fixo = raw_input("Informe o número de telefone: ")
        match = re.match ('^[0-9]{2}-([0-9]{8}|[0-9]{9})+$' , Fixo)
        if match:
             print 'Número aceito!'
             os.system("clear")
        else:
             print 'Número  inválido!'
             os.system("clear")
             print 'Informe novamente: '
             fixo()
fixo()

def rg():
        RG = raw_input("Informe seu RG: ")
        match = re.match ('^[0-9]{2}\.[0-9]{3}\.[0-9]{3}[-][a-zA-Z0-9]$' , RG)
        if match:
            print ' RG válido!'
            os.system("clear")
        else:
            print ' RG inválido!'
            os.system("clear")
            print 'Informe novamente: '
            rg()
rg()

def cpf():
        CPF = raw_input("Informe seu CPF: ")
        match = re.match ('^[0-9]{3}\.[0-9]{3}\.[0-9]{3}[-][0-9]{2}$', CPF)
        if match:
            print ' CPF valido!'
            os.system("clear")
        else:
            print 'CPf invalido!'
            os.system("clear")
            print 'Informe novamente: '
            cpf()
cpf()

def data():
        DATA = raw_input("Informe a sua data de nascimento: ")
        match = re.match ('^(0[1-9]|[12][0-9]|3[0-1])/?(0[1-9]|1[0-2])/?(200[0-9]|201[0-8]|19[0-9]{2})$' , DATA)
        if match:
            print  'Data de nascimeto Aceita!'
            os.system("clear")
        else:
            print 'Data de nascimento inexistente'
            os.system("clear")
            print 'Informe  novamente: '
            data()
data()

def ip():
        IP = raw_input("Informe o seu IP: ")
          match = re.match ('^[0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5](\.[0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5]){3}+$', IP)
        if match:
            print 'Ip válido!'
            os.system("clear")
        else:
            print 'IP não valido!'
            os.system("clear")
            print 'Informe novamente: '
            ip()
ip()
def mascara():
        Mascara = raw_input("Informe sua Mascara: ")
        match = re.search(r'^(255)(.0){3}$|^255(.255|.254|.252|.248|.240|.224|.192|.128|.0){3}$', Mascara)
        if match:
            print 'Cadastro aceito'
            os.system("clear")
        else:
            print 'Mascara inválida'
            os.system("clear")
            print 'Informe novamente: '
            mascara()
mascara()
