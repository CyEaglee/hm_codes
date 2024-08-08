#!/bin/bash
echo " " > apresentacao.txt
echo "=== INFORMAÇÕES DO SISTEMA ===" >> apresentacao.txt
echo "Sistema Operacional: $(cat /etc/issue)" >> apresentacao.txt
echo "CPU: $(cat /proc/cpuinfo | grep -n ^ | grep -n ^5)" >> apresentacao.txt
echo "$(cat /proc/meminfo | head -n1)" >> apresentacao.txt
echo "Espaço em disco total:" >> apresentacao.txt
echo "$(df -h)" >> apresentacao.txt
echo " " >> apresentacao.txt
echo "=== INFORMAÇÕES DO USUÁRIO ===" >> apresentacao.txt
echo "Nome do usuário: $(whoami)" >> apresentacao.txt
echo "Diretorio home: $(cd) $(pwd)" >> apresentacao.txt
echo "Diretorio atual: $(pwd)" >> apresentacao.txt
echo "Usuários logados: $(users)" >> apresentacao.txt
echo " " >> apresentacao.txt
cat apresentacao.txt