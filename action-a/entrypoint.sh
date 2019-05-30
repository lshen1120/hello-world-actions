#!/bin/sh -l

sh -c "echo $*"

echo '222' > 222.txt
ls -a
echo 'pwd'
pwd

echo 'env list'
env