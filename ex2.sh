#!/usr/bin/env bash

number=0
for i in {1..999};
do
    if (( i % 5 == 0 ));
    then
        number=$(( number+i ))
    elif (( i % 3 == 0 ));
    then
        number=$(( number+i ))
    fi
done
echo "$number" # 233168
