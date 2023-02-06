#!/usr/bin/env bash

input_file=$1

grep -i "@amazon.com" "$input_file" | awk -F, '{print $3 " " $2}' | tee output_names.txt