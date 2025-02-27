#!/bin/bash/

echo "All Variables passed:$@"
echo "Number of variables:$#"
echo "Script name : $0"
echo "present working directory: $PWD"
echo "Home directory of current user :$HOME"
echo "Which user is running this script :$USER"
echo "process id of current script: $$"
echo "Process id of last command in background:$!" 
sleep 60 &
echo "Process id of last command in background:$!" 