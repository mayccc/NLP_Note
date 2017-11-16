#!/usr/bin/env bash
#
# Runs the English PCFG parser on all CADEC files

input_folder=/home/dai031/Desktop/Datasets/CADEC/cadec/text/*
output_folder=/home/dai031/Desktop/Datasets/CADEC/Processed_Data/stanford_lexparser/

for input_file in $input_folder
do
    filename="${input_file##*/}"
    filenameWithoutExtension="${filename%.*}"
    output_file=$output_folder$filenameWithoutExtension.parse
    java -Xmx2g -cp "*" edu.stanford.nlp.parser.lexparser.LexicalizedParser -outputFormat "penn" edu/stanford/nlp/models/lexparser/englishPCFG.ser.gz $input_file > $output_file
done
