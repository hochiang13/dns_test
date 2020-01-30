#!/bin/bash

while true; do
    dig_result=$(dig op.10.62.164.143.xip.io @10.36.3.192)
    lines=$(echo "${dig_result}" | grep 'ANSWER: 0,'| wc -l)
    echo "${dig_result}"
    if [ $lines == "1" ]; then
        echo "${dig_result}" >> test_output.txt
	echo "-------------" >> test_output.txt
    fi
    sleep 2
done

