#!/bin/bash

echo "Enter Password : "
read password1

echo "Retype Password : "
read password2

while [ $password1 != $password2 ]
do
    echo "Password mismatch Try again "

    echo "Retype Password : "
    read password2
done

echo "Password Matched, Complete"
