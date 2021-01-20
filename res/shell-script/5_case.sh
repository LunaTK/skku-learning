#!/bin/bash

value="개"

case $value in
    "dog" | "개"     ) echo "멍멍";;
    "cat" | "고양이" ) echo "야옹";;
    * ) echo "??";;
esac
