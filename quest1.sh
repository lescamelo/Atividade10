#!/bin/bash


arquivo=$1

sed -r '/^[\n]*$/d' ${arquivo} > arquivo2.txt
cat arquivo2.txt


