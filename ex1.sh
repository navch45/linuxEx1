#!/usr/bin/env bash

ipAddress="216.58.214"
for i in {0..255};
do
    timeout 0.25 ping -c 1 "$ipAddress.$i" &>/dev/null
    
    if [ $? -eq 0 ];
        then
            echo "$ipAddress.$i was Succesfull"
        else
            echo "$ipAddress.$i is OFFLINE.."
    fi
done

