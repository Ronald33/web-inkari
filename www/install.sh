#!/bin/bash

install_npm()
{
    results=$(find . -iname package.json -exec dirname {} \;)

    if [[ -z "$results" ]]; then
        echo "No se encontró nada que instalar."
        exit 1
    fi

    for result in $results; do
        npm install -C $result
    done
}

install_npm
