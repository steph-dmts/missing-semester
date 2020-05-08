#!/bin/bash

counter=0
failure=0
while [ $failure -ne 1 ]
do
    if ! ./random.sh
        then ((failure++))
    echo 
    else ((counter++))
    fi
done

echo "The program random.sh ran $counter times before failing."
exit