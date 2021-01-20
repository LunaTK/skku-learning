#!/bin/bash

for val in bus metro walk
do
    echo $val
done


for ((i = 0;i < 10; i++))
do
    echo $i
done


for file in $(ls)
do
    wc -l $file
done
