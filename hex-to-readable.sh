#!/bin/bash
function hex_to_readable () {
    if [ -f clears.txt ]; then
        echo -e '\e[31mBE AWARE -\e[0m you already have a file called clears.txt, this will be altered.'
    fi

    read -e -p "Enter input list: " HEXLIST
    if [ -f "$HEXLIST" ]; then
        while IFS= read -r LINE; do
            grep -m1 '$HEX' <<< "$LINE" | awk -F: '{print $NF}' | sed 's/$HEX//' | cut -d '[' -f2 | cut -d ']' -f1 >> tmp_extract
        done < $HEXLIST
    else
        echo -e "\e[31mFile does not exist, try again\e[0m"; hex_to_readable
    fi

    for LINE in $(cat tmp_extract); do 
        CONV=$(echo HEX: $LINE; echo ' | Plain: '; echo $LINE | xxd -ps -r | iconv -f cp1252 -t utf8; echo -e '\n')
        echo $CONV >> clears.txt
    done
    echo -e "\nResults can be found in \e[32mclears.txt\e[0m\n"
    rm tmp_extract
}

main () {
    hex_to_readable
}

main