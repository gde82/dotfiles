#!/bin/bash

if [[ ! -d "~/.local/liquidprompt" && "command -v git" ]]
    then
        mkdir -p ~/.local/
        git clone --branch stable https://github.com/nojhan/liquidprompt.git ~/.local/liquidprompt 
fi
