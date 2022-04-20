#!/bin/bash

echo "The number of bytes: "
wc -c quotes.txt | awk '{print $1}'

echo "The number of lines: "
wc -l quotes.txt | awk '{print $1}'

echo "The number of words: "
wc -w quotes.txt | awk '{print $1}'

awk '{print "Line No:" NR " - Count of Words:" NF}' quotes.txt

cat quotes.txt | tr ' ' '\n' | sort | uniq -c | awk '{print "Word:" $2 " - Count of repetition:" $1}'

