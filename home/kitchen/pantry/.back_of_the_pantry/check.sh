#!/bin/bash
#!/bin/bash
cleared=true
echo "-----------------------------------------------------------------"

if [[ ! -d "./rat_kahk_box" ]]; then
    cleared=false
    echo "Make a box (rat_kahk_box) for the rat and put 1 kahk there."
else
    rat_kahks=$(ls "./rat_kahk_box" | wc -l)
    if [[ $rat_kahks -lt 1 ]]; then
        cleared=false
        echo "Give the poor rat a kahk!"
    elif [[ $rat_kahks -gt 1 ]]; then
        echo "$rat_kahks kahks for the rat?"
        echo "You're not this gracious. Take one back!"
        echo ""
        cleared=false
    fi
fi

if [[ ! -d "../../../living_room/kahk_box" ]]; then
    cleared=false
    echo "Take your box (kahk_box) back to the living room."
    #condition 4
else
    kahks=$(ls "../../../living_room/kahk_box" | wc -l)

    if [[ $kahks -lt 19 ]]; then
        cleared=false
        echo "You're supposed to have 19 kahks..."
        echo ""

    fi
fi

if [[ $cleared == false ]]; then
    echo "Finish the remaining tasks and try again..."
    return
fi
echo "Well done!"
cat "../../../.assets/.rat_thank_you"
echo ""
read -p "Ready to enjoy your kahk? [Press any key to continue]" $choice
bash "../../../.assets/.ending_script.sh"
