#!/bin/bash

if [[ $1 == "" ]]; then
    echo "missing domain."
    exit 1
fi

if [[ $2 == "" ]]; then
    echo "missing dns server location."
    exit 1
fi

while true; do
    dig_result=$(dig $1 @$2)
    echo "${dig_result}" >> test_output.txt
    echo "-------------" >> test_output.txt
    sleep 1
done

