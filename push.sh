#!/bin/bash
set -e

if [ $# -eq 0 ];then
   msg=$(date '+%Y-%m-%d %H:%M:%S')
else
   msg=$@
fi

git add .
git commit -m "$msg"
git push
echo "Push devops repo success."
