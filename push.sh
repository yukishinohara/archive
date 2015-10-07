#!/bin/bash
mv labs.zip labs.zip.tmp && zip -e -r labs.zip ../labs && rm -rf labs.zip.tmp
echo 'done'

