#!/usr/bin/env bash
#
# Runs the GENIA tagger on all CADEC files

input_folder=/home/dai031/Desktop/Datasets/CADEC/cadec/text/*
output_folder=/home/dai031/Desktop/Datasets/CADEC/Processed_Data/genia_tagger/

for input_file in $input_folder
do
    filename="${input_file##*/}"
    filenameWithoutExtension="${filename%.*}"
    output_file=$output_folder$filenameWithoutExtension.parse
    ./geniatagger < $input_file > $output_file
done
