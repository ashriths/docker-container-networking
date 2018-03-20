#!/bin/bash

function execute_command {
    echo "Executing: $@"
    eval $@ | tee -a "$1.output"
    rc=$?
    echo "Done"
    echo
    return $rc
}

NAME=$0;
COUNT=$1;
shift;
i=0
while [ "$i" -le "$COUNT" ];
do
    echo "$i"
    execute_command $@
    i=$(($i + 1))
    sleep 1
done
    