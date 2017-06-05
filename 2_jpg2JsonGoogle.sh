#!/bin/bash   
echo "Hola. Introduce tu llave de acceso a google cloud vision"
read varkey
echo "Enviando fotos a google cloud vision"

for dir in $(pwd)/images/*
#for dir in $(pwd)/test/ 
do
	for file in "$dir"/*.jpg
	do
		echo "$file"
		$(pwd)/Sources/gcvocr.sh "$file" $varkey 
		#python3 $(pwd)/Sources/cloudvisreq_api_google_v.2.py $varkey "$file" 
                #Probablemente sea mejor cambiar el programa conversor
	done
done

#se debe chmod 700 nombredeejecutable.sh



