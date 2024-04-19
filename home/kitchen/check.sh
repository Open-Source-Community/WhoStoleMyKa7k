#!/bin/bash
echo "-----------------------------------------------------------------"

cleared=yes

  if [[ -d "trash_bag" ]]; then
          cleared="no"
	  echo "You forgot to take out the trash!"
  fi
if [[ $cleared == "no" ]]; then
  echo "Remove the trash_bag and try again..."
else
  echo "Yay, the trash is gone!"

fi

echo "-----------------------------------------------------------------"


