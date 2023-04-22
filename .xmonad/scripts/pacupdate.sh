#!/bin/bash

updates() {
    cupd=$(checkupdates | wc -l)
    available=$cupd
    if [ $available == 0 ]; then 
        echo " "
    else
        echo "  $available"
    fi
}

echo "$(updates)"


