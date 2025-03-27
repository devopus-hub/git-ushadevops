#!/bin/bash

USERID=$(id -u)
#echo "user id is: $USERID"

# if [ $USERID -ne 0 ]
# then 
#     echo "Please run this script with root privilages"
# else
#     dnf install mysql -y
# fi

#or-------

# if [ $USERID -ne 0 ]
# then 
#     echo "Please run this script with root privilages"
#     exit 1
# fi
# dnf install mysql -y

#If we don't mention exit 1 (exit status), shell script will run next command even the before command failed. So we should give exit status.
#In 1st script i gave else condition to install mysql, hence it doesn't proceed with installation when it fails.

if [ $USERID -ne 0 ]
then 
    echo "Please run this script with root privilages"
    exit 1
fi

dnf list installed git

if [ $? -ne 0 ]
then
    echo "Git is not installed, going to install now..."
    dnf install git -y
else
    echo "Git installed already, nothing to do..."
fi