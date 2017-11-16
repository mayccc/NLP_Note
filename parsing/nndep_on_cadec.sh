#!/usr/bin/env bash
#
# Runs the English Universal Dependencies parser on all CADEC files

input_folder=/home/dai031/Desktop/Datasets/CADEC/cadec/text/*
output_folder=/home/dai031/Desktop/Datasets/CADEC/Processed_Data/stanford_nndep/

for input_file in $input_folder
do
    filename="${input_file##*/}"
    filenameWithoutExtension="${filename%.*}"
    output_file=$output_folder$filenameWithoutExtension.parse
    java -Xmx2g -cp "*" edu.stanford.nlp.parser.nndep.DependencyParser -model edu/stanford/nlp/models/parser/nndep/english_UD.gz -textFile $input_file -outFile $output_file --outputFormat oneline
done
