#! /usr/bin/env bash

for file in ../figure_??/figure_??.pdf
do
    path=$(realpath $file)
    echo $file
    cp $file .
done
