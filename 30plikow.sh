#!/bin/bash
if  ["$2" = "--logs" ]; then
   if [ -z "$2" ]; then
      echo "Podaj liczbę plików do utworzenia."
      exit 1
   fi

   num_logs=$2

   for ((i=1; i<=$num_logs; i++)); do
      filename="log${i}.txt"
      echo "Nazwa pliku: $filename" > $filename
      echo "Nazwa skryptu: $0" >> $filename
      echo "Data: $(date)" >> $filename
   done
fi

