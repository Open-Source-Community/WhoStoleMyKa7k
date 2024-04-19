#!/bin/bash

echo "-----------------------------------------------------------------"

flowers=$(ls . | wc -l)
flowers=$((flowers - 2))
echo $flowers
flowersinvase=$(ls "../living_room/vase" | wc -l)
flowersinvase=$((flowersinvase - 1))

#condition 1
if [[ $flowers -lt 5 ]]; then
  c1=false
  echo "You accidentally killed a flower! Plant another one in its place."
else
  echo "Your garden looks amazing!"
  c1=true
fi

#condition 2
if [[ $flowersinvase == 0 ]]; then
  c2=false
  echo "You might want to copy some flowers to the vase."
else
  echo "Your vase looks beautifull!"
  c2=true
fi

if [[ $c1 == false || $c2 == false ]]; then
  echo "Finish the remaining tasks and try again..."
else
  echo "Well done!"
  rm "../living_room/vase/READ_ME"
  cp "../../.assets/.new_vase_file" "../living_room/vase/READ_ME"
fi
