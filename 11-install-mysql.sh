#!/bin/bash

USERID=$(id -u)
echo "user id is: $USERID"

if [ $USERID -ne 0 ]
then 
    echo "Please run this script with root privilages"
else
    dnf install mysql -y
fi