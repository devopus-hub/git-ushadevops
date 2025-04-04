#!/bin/bash

USERID=$(id -u)
CHECK_ROOT () {
    if [ $USERID -ne 0 ]
    then 
        echo "Please run this script with root privilages"
        exit 1
    fi
}

VALIDATE () {
    if [ $1 -ne 0 ]
    then
        echo "$2 is .... Failed"
        exit 1
    else
        echo "$2 is ..... Success"
    fi
}


CHECK_ROOT
dnf list installed git

if [ $? -ne 0 ]
then
    echo "Git is not installed, going to install now..."
    dnf install git -y
    VALIDATE $? "installing Git"
else
    echo "Git installed already, nothing to do..."
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "Mysql is not installed, going to install now..."
    dnf install mysql -y
    VALIDATE $? "installing MYSQL"
else
    echo "Mysql is installed successfully..nothing to do.."
fi