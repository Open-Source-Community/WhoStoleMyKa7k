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
  echo "Well done! Your pantry is a lot tidier now..."
  echo "Wait a second..."
  echo "You can now see something in the back, but its hidden from your sight!"
  echo "(Hint: use ls with a certain option!)"
fi

echo "-----------------------------------------------------------------"


