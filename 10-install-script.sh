#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
   echo "ERROR :: you must have sudo access to excute this script"
  exit 1 #other than 0
fi

dnf install mysqll -y

if [ $? -ne 0 ]
  then 
      echo "installing MYSQL ... FAILURE"
      exit 1
else
   echo " installing MYSQL ... SUCCESS"

fi
dnf install git -y

if [ $? -ne 0 ]
  then 
      echo "installing GIT ... FAILURE"
      exit 1
else
   echo " installing GIT9 ... SUCCESS"

fi