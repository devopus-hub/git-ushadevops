#!/bin/bash

echo "Total variables passed to the script: $@"
echo "No.of variables passed: $#"
echo "Script name: $0"
echo "current working direcoty: $PWD"
echo "Home directory of current user: $HOME"
echo "PID of the script executing now: $$"

sleep 100
echo "PID of last background command:$!"