#!/bin/bash

if [[ "$2" == "" ]]; then
    echo "use: $0 [java package] [app name]"
    exit 1
fi

echo "packge name:      $1"
echo "application name: $2"

echo "setting package to $1 ..."
find . -type f -exec sed -i "s/com\.fillumina\.innova\.amzbridgegw/${1}/g" {} \;

echo "setting app name to $2 ..."
find . -type f -exec sed -i "s/amzbridgegw/${2}/g" {} \;

echo "modify custom directory with $2 ..."
find . -type d -exec rename "s/amzbridgegw/${2}/g" {} \;

echo "modify custom files with $2 ..."
find . -type f -exec rename -d "s/amzbridgegw/${2}/g" {} \;

