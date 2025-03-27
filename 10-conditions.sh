#!/bin/bash

NUMBER=$1
if [ $NUMBER -gt 40 ]    #gt, lt, ne, eq, ge, le
then
    echo "Given number : $NUMBER is greater than 40"
else
    echo "Given number : $NUMBER is leass than 40"
fi