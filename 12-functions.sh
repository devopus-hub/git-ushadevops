$!/bin/bash

USERID=$(id -u)
#echo "user id is: $USERID"

CHECK_ROOT(){                                           #its a function to check root user
    if [ $? -ne 0 ]
    then
        echo "Please run this script with root privilages"
        exit 1
    fi
}

VALIDATE () {
    echo "exit status: $1"
}

CHECK_ROOT

dnf list installed git

VALIDATE $?

# if [ $? -ne 0 ]
# then
#     echo "Git is not installed, going to install now..."
#     dnf install git -y
#     if [ $? -ne 0 ]
#     then
#         echo "Git installation is not success....check it..."
#         exit 1
#     else
#         echo "Git installed successfully"
#     fi
# else
#     echo "Git installed already, nothing to do..."
# fi

# dnf list installed mysql

# if [ $? -ne 0 ]
# then
#     echo "Mysql is not installed, going to install now..."
#     dnf install mysql -y
#     if [ $? -ne 0 ]
#     then
#         echo "Mysql installation is not successful....check it"
#         exit 1
#     else
#         echo "Mysql installation is successful"
#     fi
# else    echo "Mysql is installed successfully..nothing to do.."
# fi