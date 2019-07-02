#!/bin/bash

rm -rf ./compiled
mkdir ./compiled
for dsl in ./source/*.dsl; do
    dslname="`basename $dsl .dsl`"
    ./iasl -vw 2095 -vw 2146 -vw 2089 -vw 4089 -vi -vr -p ./compiled/$dslname.aml ./source/$dslname.dsl
done
