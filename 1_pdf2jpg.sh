#!/bin/bash   

echo "Inicializando el proceso de creacion de ocr..."

#En este paso se creara un folder por cada pdf y dentro se pondra las imagenes jpg
dir=$(pwd)
mkdir images
#cd Manual
cd pdfs
for file in *
	do 
	mkdir "$dir/images/$file"
	cd "$dir/images/$file"
	echo "Convirtiendo $file a imagenes jpg"
	convert -density 200 -quality 20 -limit memory 5000MiB "$dir/pdfs/$file" "$(basename "$file" .pdf)-%03d.jpg"
done

#convert source.png -compress zip source.pdf para cambiar a pdf de vuelta
#convert -density 200 -limit memory 4000MiB -strip "J10_160_2012.pdf" "img.jpg"
#strip parece no servir
#convert -density 200 -quality 20 -limit memory 5000MiB "J10_160_2012.pdf" "img.jpg"
