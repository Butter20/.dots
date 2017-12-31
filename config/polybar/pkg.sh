#!/bin/bash
pac=$(checkupdates | wc -l)
aur=$(cower -u | wc -l)

check=$((pac + aur))
if [[ "$check" != "1" ]]
then
    echo "$check upd"
else
    echo "$check upd"
fi
