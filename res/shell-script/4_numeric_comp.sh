#!/bin/bash

set -v
value="123"

[ $value -ge 10 ] && echo "\$value -ge 10 is true"

[[ $value > 10 ]] && echo "\$value > 10 is true"

(( value > 10 )) && echo "(( value > 10 )) is true"

(( value < 10 )) || echo "(( value < 10 )) is false"

value=$((value + 1000))
echo $value
