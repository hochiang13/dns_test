#!/bin/bash

while true; do
    dig_result=$(dig op.10.62.164.143.xip.io @10.36.3.192)
    echo "${dig_result}" >> test_output.txt
    echo "-------------" >> test_output.txt
    sleep 1
done

