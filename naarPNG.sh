#/bin/bash
cd $1
for image in $1*."jpg";
 do
  convert ${image##*/} -resize 128x128 ${image%.*}.png
done
