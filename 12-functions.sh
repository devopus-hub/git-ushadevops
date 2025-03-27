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

dnf list installed git

if [ $? -ne 0 ]
then
    echo "Git is not installed, going to install now..."
    dnf install git -y"
    VALIDATE $? "Installing Git"
else
    echo "Git is already installed, nothing to do ...."

# if [ $USERID -ne 0 ]
# then 
#     echo "Please run this script with root privilages"
#     exit 1
# fi

# dnf list installed git

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
# else    
#     echo "Mysql is installed successfully..nothing to do.."
# fi