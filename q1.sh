#!/bin/bash

awk 'NF' quotes.txt | sort -u > trans.txt
cat trans.txt > quotes.txt
rm trans.txt
