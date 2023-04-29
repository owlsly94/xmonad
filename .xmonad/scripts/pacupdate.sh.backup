#!/bin/bash

updates() {
    cupd=$(checkupdates | wc -l)
    available=$cupd
    if [ $available == 0 ]; then 
        echo "  0"
    else
        echo "  $available"
    fi
}

echo "$(updates)"


