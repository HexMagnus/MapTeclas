#!/bin/bash

while true; do
  read -rsn1 key # lê a entrada do teclado de forma silenciosa (-s) e sem imprimir (-r)
  case "$key" in
    $'\x1b') # tecla de escape (hexadecimal: 0x1b)
      echo "Esc (0x1b)"
      ;;
    $'\x7f') # tecla de backspace (hexadecimal: 0x7f)
      echo "Backspace (0x7f)"
      ;;
    $'\n') # tecla de enter
      echo "Enter (0x0a)"
      ;;
    *) # teclas não reconhecidas
      printf "%s (0x%02x)\n" "$key" "'$key"
      ;;
  esac
done
