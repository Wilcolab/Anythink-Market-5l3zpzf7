#!/bin/bash

input_file=$1
output_file=$2

grep -i "@amazon.com" "$input_file" | awk -F, '{print $3 " " $2}' | tee "$output_file"