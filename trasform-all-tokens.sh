#!/bin/sh

#input folder
INPUTFOLDER="input"

#output folder
OUTPUTFOLDER="output"

#core input file
CORE="01_core"

#semantic input file
SEMANTIC="02_semantic"

#All compoents avalible
COMPONENTS=("button" "canvas" "logo")

npx token-transformer $INPUTFOLDER $OUTPUTFOLDER/core.json $CORE
npx token-transformer $INPUTFOLDER $OUTPUTFOLDER/semantic.json $CORE,$SEMANTIC $CORE
npx token-transformer $INPUTFOLDER $OUTPUTFOLDER/component/${COMPONENTS[0]}.json $CORE,$SEMANTIC,03_component/${COMPONENTS[0]} $CORE,$SEMANTIC
npx token-transformer $INPUTFOLDER $OUTPUTFOLDER/component/${COMPONENTS[1]}.json $CORE,$SEMANTIC,03_component/${COMPONENTS[1]} $CORE,$SEMANTIC
npx token-transformer $INPUTFOLDER $OUTPUTFOLDER/component/${COMPONENTS[2]}.json $CORE,$SEMANTIC,03_component/${COMPONENTS[2]} $CORE,$SEMANTIC
npx token-transformer $INPUTFOLDER $OUTPUTFOLDER/theme/playfull.json $CORE,04_theme/playfull $CORE
npx token-transformer $INPUTFOLDER $OUTPUTFOLDER/theme/playfullDark.json $CORE,04_theme/Playfull-Dark $CORE
npx token-transformer $INPUTFOLDER $OUTPUTFOLDER/theme/seriousDark.json $CORE,04_theme/Serious-Dark $CORE
npx token-transformer $INPUTFOLDER $OUTPUTFOLDER/theme/playfull.json $CORE,04_theme/Playfull $CORE
npx token-transformer $INPUTFOLDER $OUTPUTFOLDER/theme/serious.json $CORE,04_theme/Serious $CORE
npx token-transformer $INPUTFOLDER $OUTPUTFOLDER/brand/a.json $CORE,05_brand/A $CORE
npx token-transformer $INPUTFOLDER $OUTPUTFOLDER/brand/aDark.json $CORE,05_brand/A-Dark $CORE
