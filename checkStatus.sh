#/bin/bash

dt=$(date '+%d%m%Y-%H%M%S');
dir=$1
command=$2
log="${3}-${dt}"

touch $log

for file in "$dir"/*; do
 if [ -f "$file" ]; then
  $command "$file" > /dev/null 2>&1
  status=$?
  if [ $status -eq 0 ]; then
   echo "Geslaagd: $file" >> "$log"
  else
   echo "mislukt: $file" >> "$log"
  fi
 fi
done
