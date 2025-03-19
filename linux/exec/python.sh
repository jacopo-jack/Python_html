#!/bin/bash

echo "Seleziona la tua distribuzione:"
echo "1) Debian e derivate (Ubuntu, Linux Mint, ecc.)"
echo "2) Red Hat e CentOS"
echo "3) Alpine Linux"
echo "4) FreeBSD e OpenBSD"
read -p "Inserisci il numero della tua scelta: " scelta

case $scelta in
  1)
    sudo apt update
    sudo apt install -y python3 python3-pip
    sudo apt install idle
    ;;
  2)
    sudo yum install -y python3 python3-pip
    sudo dnf install python3-idle
    ;;
  3)
    sudo apk add --no-cache python3 py3-pip
    sudo apk add python3-idle
    ;;
  4)
    sudo pkg install -y python3 py3-pip
    ;;
  *)
    echo "Scelta non valida."
    exit 1
    ;;
esac

echo "Installazione di Python completata."

# Ritorno alla shell bash
bash