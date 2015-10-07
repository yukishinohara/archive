#!/bin/bash
read -p "Are you sure? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
  echo ' '
  git pull
else
  echo 'canceled.'
  exit 1
fi

cd ../labs
unzip -o ../archive/labs.zip
RET=$?
cd -

if [ $RET = 0 ]; then
  echo 'done.'
else
  echo 'aborted.'
  exit 1
fi
