#!/bin/sh

abuild-keygen -a -n -i

cd /aports
git init
git remote add origin \
  https://github.com/alpinelinux/aports.git --no-tags
git config core.sparseCheckout true
echo "main/$2/" >> .git/info/sparse-checkout
git fetch --depth=1 origin $1
git checkout $1
git reset --hard
patch -p 1 -i /APKBUILD.patch
cd main/$2/
abuild -k -r
