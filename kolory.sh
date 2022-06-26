#!/bin/bash

GREEN='\e[32m'
RED='\e[31m'
BOLD='\e[1m'
NO_COLOR='\e[0m'

PRINT_INFO="${BOLD}[INFO]${NO_COLOR} "
PRINT_INPUT="${BOLD}[INPUT]${NO_COLOR} "
PRINT_OK="${GREEN}${BOLD}[OK]${NO_COLOR} "
PRINT_ERROR="${RED}${BOLD}[ERROR]${NO_COLOR} "

echo -e "$PRINT_INFO INFO"
echo -e "$PRINT_INPUT INPUT"
echo -e "$PRINT_OK OK"
echo -e "$PRINT_ERROR ERROR"

for x in {0..8}; do
  for i in {30..37}; do
    for a in {40..47}; do
      echo -ne "\e[$x;$i;$a""m\\\\\\e[$x;$i;$a""m\e[0;37;40m "
    done
    echo
  done
done

if test -t 1; then
    # Wyjście standardowe (konsola), ustaw kolory
    GREEN='\e[32m'
    RED='\e[31m'
    BOLD='\e[1m'
    NO_COLOR='\e[0m'
else
    # Wyjście jest do pliku, nie potrzebujemy kolorów
    GREEN="";RED="";BOLD="";NOCOLOR=""
fi
