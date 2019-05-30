#!/bin/sh -l

sh -c "echo $*"

echo '222' > 222.txt
echo 'aaa' >> result.txt
echo 'aaa' > result-1.txt
ls -a
echo 'pwd'
pwd

echo 'env list'
env

mkdir aaa