#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
   
   echo "ERROR:: please run the script with root access only"
   exit 1
fi

yum install postfix -y

if [ $? -ne 0 ]
then 
   
   echo "install of maven is error"
   exit 1

else
  echo "install of maven is success"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
   
   echo "install of mysql is error"
   exit 1

else
   echo "install of mysql is success"
fi

