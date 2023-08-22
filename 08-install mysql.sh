#!/bin/bash

# this task main gol is install my sql but log files store some where

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGfile=/tmp/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

# this function should validate the previous command status

VALIDATE(){

  if [ $1 -ne 0 ]
  then

     echo -e "$2 ...$R FAILURE $N"
     exit 1
  else

    echo -e "$2 ...$G SUCESS $N"
  fi

}

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR must run the script ROOT user"
    exit 1
else

  echo "INFO:: your root user"
fi

yum install maven -y >>LOGfile


VALIDATE $? "Installing maven"

yum install mysql -y >>LOGfile

VALIDATE $? "Installing mysql"