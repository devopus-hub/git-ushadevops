$!/bin/bash

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

CHECK_ROOT

dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "MYSQL is not installed, going to install now..."
    dnf install mysql -y"
    VALIDATE $? "Installing MYSQL"
else
    echo "MYSQL is already installed, nothing to do ...."
fi