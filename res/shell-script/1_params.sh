#!/bin/bash

# set -v  # 실행하는 커맨드 출력
# set -e  # 에러 발생시 스크립트 종료

echo "###############################"
echo "Parameters"
echo "\$# : $#"     # Number of Parameter 
echo "\$@ : $@"     # All Parameters
echo "\$0 : $0"     # Name of the Script
echo "\$1 : $1"     # N'th Parameter
echo "###############################"


cat not_existing_file.txt

echo $?
