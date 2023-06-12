#/bin/bash

Path=$1 #pad naar de orginele afbeelding folder
mkdir -p ~/Github/eos2/Afbeeldingen #nieuw pad aanmaken voor het plaatsen van de afbeeldingen

for file in "$Path"/*.jpg "$Path"/*.png; do #door het pad heen loopen en kijken voor png/jpg afbeeldingen
 if [[ -f "$file" ]]; then #file gevonden
  mv "$file"  ~/Github/eos2/Afbeeldingen/ #verplaatsen van de file
 fi
done

echo "finished" 
