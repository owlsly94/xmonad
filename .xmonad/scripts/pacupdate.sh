#!/bin/bash

updates() {
    cupd=$(checkupdates | wc -l)
    if [ $cupd > 0 ]; then 
        echo "  $cupd"
    else
        echo " "
    fi
}

echo "$(updates)"
