#!/bin/bash
if [ "$#" -eq 1 ]; then 
    python -u main.py --exp $1
elif [ "$2" = "nohup" ]; then
    nohup python -u main.py --exp $1 > ./log_file/$1.log &
else
    echo "If you want to run train with nohup, please insert 'nohup' as 2nd arugment"
fi

