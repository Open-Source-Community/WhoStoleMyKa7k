#!/bin/bash
echo "-----------------------------------------------------------------"

files=("./cheese" "./chocolate")

cleared=yes

for filename in "${files[@]}"
do
  if [[ -f "$filename" ]]; then
          cleared="no"
	  echo "You forgot to throw $( basename $filename )!"
  fi
done
if [[ $cleared == "no" ]]; then
  echo "Throw all expired items and try again..."
else
  echo "Well done! You can now eat worry-free.."

fi

echo "-----------------------------------------------------------------"


