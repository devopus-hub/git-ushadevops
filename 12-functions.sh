#!/bin/bash

USERID=$(id -u)
#echo "user id is: $USERID"

CHECK_ROOT(){                                           #it's a function to check root user
    if [ $USERID -ne 0 ]
    then
        echo "Please run this script with root privilages"
        exit 1
    fi
}

VALIDATE () {
    if [ $1 -ne 0 ]
    then
        echo "$2 is ..... Failed"
    else
        echo "$2 is ..... Success"
    fi
}

PACKAGE () {
    dnf list installed $1
}

PROCESS () {
    if [ $1 -ne 0 ]
    then
        echo "$2 is not installed, going to install now..."
        dnf install $2 -y
        VALIDATE $1 "Installing $2"
    else
        echo "$2 is already installed, nothing to do ...."
    fi
}

CHECK_ROOT

PACKAGE $? "git"

PROCESS "git"

PACKAGE "mysql"

PROCESS $1 "mysql"