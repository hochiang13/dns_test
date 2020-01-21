#!/bin/bash

while true; do
    dig_result=$(dig op.10.62.164.143.xip.io)
    lines=$(echo "${dig_result}" | grep 'ANSWER: 1,'| wc -l)
    if [ $lines == "1" ]; then
        echo "${dig_result}" >> test_output.txt
	echo "-------------" >> test_output.txt
    fi
    sleep 2
done

