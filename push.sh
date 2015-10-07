#!/bin/bash
mv labs.zip labs.zip.tmp
cd ../labs
zip -e -r ../archive/labs.zip *
RET=$?
cd ../archive
rm -rf labs.zip.tmp

if [ $RET = 0 ]; then
  echo 'zipped.'
else
  echo 'aborted.'
  exit 1
fi

git add -A . && git commit
RET=$?
if [ $RET = 0 ]; then
  echo 'git committed.'
else
  echo 'aborted.'
  exit 1
fi

git push -u origin master && echo 'done.'


