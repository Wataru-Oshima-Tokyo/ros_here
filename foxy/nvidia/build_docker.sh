#!/bin/bash
distro="$1"
if [ -z "$1" ]
    then
        echo "No argument given, you want make a specific docker please put the name such as limo or mg400,,, , please provide it as an argument."
        echo "in this case , since no argument is given, I will create a general one"
        distro="general"
fi

docker build -f ${distro}_foxy -t general_foxy .
