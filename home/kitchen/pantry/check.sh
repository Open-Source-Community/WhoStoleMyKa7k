#!/bin/bash
echo "-----------------------------------------------------------------"

files=("./kitchen/cheese" "./kitchen/chocolate")

found=yes

for filename in "${files[@]}"
do
  if [[ ! -f "$filename" ]]; then
          found=no
	  echo "You forgot to throw $( basename $filename )!"
  fi
done
if [[ $found == "no" ]]; then
  echo "throw all expired items and try again..."
else
  echo "Well done! All expired items are throw"

fi

echo "-----------------------------------------------------------------"


