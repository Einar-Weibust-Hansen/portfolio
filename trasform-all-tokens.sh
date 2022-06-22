#!/bin/sh

#input folder
INPUTFOLDER="input"

#core input file
INPUT_CORE="01_core"

#semantic input file
INPUT_SEMANTIC="02_semantic"

#components input folder
INPUT_COMPONENT="03_component"

#Theme input folder
INPUT_THEME="04_theme"

#Brand input folder
INPUT_BRAND="05_brand"



#All compoents avalible
COMPONENTS=("button" "canvas" "logo")

#All themes avalible
THEMES=("playfull" "playfullDark" "serious" "seriousDark")

#All brands avalible
BRANDS=("a" "aDark")



#Output folder themes
OUTPUT_THEME="themes"

#Output folder brands
OUTPUT_BRANDS="brands"

#output folder
OUTPUTFOLDER="output"

#outputcompoent folder
OUTPUTCOMPONENT="component"






#Create Core and Semantic files
npx token-transformer $INPUTFOLDER $OUTPUTFOLDER/core.json $INPUT_CORE
npx token-transformer $INPUTFOLDER $OUTPUTFOLDER/semantic.json $INPUT_CORE,$INPUT_SEMANTIC $INPUT_CORE


#Loop that runs through components
for i in ${!COMPONENTS[@]}; do
  npx token-transformer $INPUTFOLDER $OUTPUTFOLDER/$OUTPUTCOMPONENT/${COMPONENTS[$i]}.json $INPUT_CORE,$INPUT_SEMANTIC,$INPUT_COMPONENT/${COMPONENTS[$i]} $INPUT_CORE,$INPUT_SEMANTIC
done

#Loop that runs through themes
for i in ${!THEMES[@]}; do
  npx token-transformer $INPUTFOLDER $OUTPUTFOLDER/$OUTPUT_THEME/${THEMES[$i]}.json $INPUT_CORE,$INPUT_THEME/${THEMES[$i]} $INPUT_CORE
done

#Loop that runs through brands
for i in ${!BRANDS[@]}; do
  npx token-transformer $INPUTFOLDER $OUTPUTFOLDER/$OUTPUT_BRANDS/${BRANDS[$i]}.json $INPUT_CORE,$INPUT_BRAND/${BRANDS[$i]} $INPUT_CORE
done


