#!/bin/bash

echo "enter the number"
read number
if [ $number -eq 1  ]
then 
touch /home/giridhar/Desktop/devops/git/practice/giri-demo/test.txt
elif [ $number -eq 0 ]

then 
rm -rf /home/giridhar/Desktop/devops/git/practice/giri-demo/test.txt
else
echo "enter 1 or 0"
fi

