#!/bin/bash

# test 명령어를 통해 참/거짓 판별
if test 1 = 1
then
    echo "1 = 1 is true"
fi

# test 명령어를 [ ] 로 대체 가능
if [ 1 = 1 ]
then
    echo "1 = 1 is true"
fi

if [ ! 1 = 10 ]
then
    echo "1 = 10 is not true"
fi

# 수치 비교
if [ "123" -gt "120" ]
then
    echo '"123" -gt "120" is true'
fi

if [[ 100 > 10  ]]
then
    echo "100 > 10 is true"
fi

if [[ 100 > 10 && 100 < 10 ]]
then
    echo "100 > 10 && 100 < 10 is true"
else
    echo "100 > 10 && 100 < 10 is false"
fi

if [ 100 -gt 10 -a 100 -lt 10 ]
then
    echo "100 -gt 10 -a 100 -lt 10 is true"
else
    echo "100 -gt 10 -a 100 -lt 10 is false"
fi
