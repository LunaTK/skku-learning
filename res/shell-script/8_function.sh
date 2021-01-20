#!/bin/bash

echo "\$@ : $@"
echo "\$1 : $1"
echo "\$2 : $2"

some_function() {
    echo "\$@ : $@"
    echo "\$1 : $1"
    echo "\$2 : $2"
}

some_function arg1 arg2 arg3




return_example() {
    echo "result of something"
}


ret=$(return_example)

echo $ret
