#!/bin/bash
mv labs.zip labs.zip.tmp
cd ../labs
zip -e -r ../archive/labs.zip *
RET=$?
cd ../archive
rm -rf labs.zip.tmp

if [ $RET = 0 ]; then
  git add -A . && git commit && git push -u origin master && echo 'done.'
else
  echo 'aborted.'
fi

