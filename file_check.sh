#!/bin/bash

#chicking for file name is passed as an argument
if [ -z "$1" ]; then
    echo "useage: $0 <file>"
    exit  1

fi

#checking if the file exists
if [ -e "$1" ]; then
    echo "File '$1' exists."
    else
    echo "File '$1' does not exists."
fi