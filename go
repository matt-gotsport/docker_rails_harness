#!/bin/bash

if (( $# == 1 ))
then
    ./bin/enter $1
else
    echo "./go web OR ./go db OR ./go ion"
fi

