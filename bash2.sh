#!/bin/bash
echo -n "Enter folder name: "
read foldername
mkdir "$foldername"
cd "$foldername"
echo -n "Directory was changed to: "
pwd
touch file
base64 /dev/urandom | head -10 > file
echo "Content of created file:"
cat file
cd ..
rm -rf "$foldername"
