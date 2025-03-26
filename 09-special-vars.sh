#!/bin/bash

echo "Total variables passed to the script: $@"
echo "No.of variables passed: $#"
echo "Script name: $0"
echo "current working direcoty: $PWD"
echo "Home directory of current user: $HOME"
echo "PID of the script executing now: $$"
sleep 30 &
echo "PID of last background command: $!"

#we may or may not give space before variable value like $@, $# etc..
#If we want to run sleep command don't put & symbol (sleep 30)
#If we put & symbol it won't sleep and run next command