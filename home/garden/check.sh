#!/bin/bash
echo "-----------------------------------------------------------------"

flowers=("./garden")
folwersinvase=$(ls -A "./linving_room/vase"| wc -l)
c1=false
c2=false
no_flower=$(ls -A $flowers | wc -l)

if [[ $no_flower -le 5 ]];
then
  c1=true
  echo "You accidentally kill a flower, plant another one in its place"
else 
  echo "Your garden is amazing!"
fi
if [[ $folwersinvase == 0 ]];
then
  c1=true
  echo "put some flowers in vasa"
else 
  echo "Your vase looks beautifull!"
fi

What a beautiful vase of flowers!
       , .-.-,_,
      )`-.>'` (
     /     `\  |
     |       | |
      \     / /
      `=(\ /.=`
       `-;`.-' 
         `)|     ,
          ||  .-'|
        ,_||  \_,/
  ,      \|| .'
  |\|\  , ||/
 ,_\` |/| |Y_,
  '-.'-._\||/
     >_.-`Y|
     ` .-"||"-.
       \'----'/
        |:.  |
        |::. |
       /::::  \
     .:::'     '.
    /:::         \
   ;:::'          ;
   |:::           |
   |:::           |
   |:::           |
   ;:::           ;
   \:::.          /
    ':::..      .'
     `""-----""`
[art by: joan stark]
