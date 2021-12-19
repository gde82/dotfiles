#!/bin/bash

if [[ ! -d "~/.local/liquidprompt" ]]
    then
        mkdir -p ~/.local/
        git clone --branch stable https://github.com/nojhan/liquidprompt.git ~/.local/liquidprompt 
fi
