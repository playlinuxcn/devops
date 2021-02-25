#!/bin/bash
set -e

if [ $# -eq 0 ];then
   msg=$(date '+%Y-%m-%d %H:%M:%S')
else
   msg=$@
fi

gitbook build
git add .
git commit -m "$msg"
git push
echo $msg
