#!/bin/bash

TARGET="web"

if (( $# == 1 ))
then
    TARGET=$1
    ./bin/enter $TARGET
else
    ./bin/run $TARGET
fi

