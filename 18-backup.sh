#!/bin/bash


R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14} #we are taking by default 14 days

SOURCE_DIR="/home/ec2-user/app-logs"

LOGS_FOLDER="/var/log/shellscript-logs"
LOG_FILE=$(echo $0 | cut -d "." -f1 )
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ... $R FAILURE $N"
        exit 1
    else
        echo -e "$2 ... $G SUCCESS $N"
    fi
}
USAGE(){

    ech0 -e $R USAGE :: $N sh 18-backup.sh <SOURCE_DIR> <DEST_DIR> <DAYS(optinal)>
}

if [ $# -lt 2]
then
    USAGE
fi

echo "Script started executing at: $TIMESTAMP" &>>$LOG_FILE_NAME