#!/bin/bash 

#iam writeing a progarm for install the ansible .

ID=$(id -u )


if [ $ID -ne 0 ]
then 
    echo "error :: please run your script with root user"
else
    echo "your a root user"
fi 

for PACKAGE in $@
do 
  yum list installed $PACKAGE

if [ $? -ne 0 ]
then 
   yum install -y $PACKAGE
else 
   echo "package is already installed"
fi
done 