#!/usr/bin/env bash
address=8.8.8.8
internet=1
clear
printf "Preparando o pasto..."
while [[ true ]]; do
  ping -c 1 ${address} > /dev/null # 2>&1
  #/tmp/ping.$
  if [[ $? -ne 0 ]]; then
    if [[ ${internet} -eq 0 ]]; then
      clear
      cowsay -t "...CONTINUA SEM INTERNET"
    else
      clear
      cowsay -t "AGORA CAIU... SEM INTERNET"
    fi
    internet=0
  else
    if [[ ${internet} -eq 1 ]]; then
      clear
      cowsay -w "AGORA INTERNET VOLTOU"
    fi
    internet=1
  fi
  # cat /tmp/ping.$ | head -2 | tail -1
  sleep 1;
done
