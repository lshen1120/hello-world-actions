#!/bin/sh -l

sh -c "echo $*"

echo '111' > 111.txt
echo 'bbb' >> result.txt
echo 'bbb' > result-1.txt

sleep 10
rm -rf new-dir