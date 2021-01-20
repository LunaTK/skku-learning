#!/bin/bash

# 앞에가 True이면 뒤 실행
[ 10 -gt 5 ] && echo "10 > 5 is true"

# 앞에가 False이면 뒤 실행
[ 10 -gt 100 ] || echo "10 > 100 is false"

echo

[ 10 -gt 50 ] || [ 10 -lt 100 ] && echo "10 > 50 or 10 < 100"

echo

[ -f /bin/bash ] && {
    echo "/bin/bash exists"
    echo "do something with /bin/bash"
}

echo

[ -f /bin/bash ] && { echo "hi"; echo "bye"; }


