#!/bin/bash
echo "-----------------------------------------------------------------"

files=("./clothes/dress" "./clothes/pants" "./clothes/shirt" "./toys/ball" "./toys/rubix_cube" "./toys/teddy_bear" "./shoes/boots" "./shoes/sneakers")

tidy=yes

for filename in "${files[@]}"
do
  # Check if the file exists using the `-f` flag
  if [[ ! -f "$filename" ]]; then
          tidy=no
	  echo "You forgot the $( basename $filename )!"
  fi
done
if [[ $tidy == "no" ]]; then
  echo "Finish tidying and try again..."
else
  echo "Well done! All tidy"

fi

echo "-----------------------------------------------------------------"
