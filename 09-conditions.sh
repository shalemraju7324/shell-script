#!/bin/bash

NUMBER=$1

if [$NUMBER -gt 100]
then
    echo "Given number is greater then 100"
else
   echo "Given number is less then 100"
fi