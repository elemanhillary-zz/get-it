#!/bin/bash
# Download an entire website

if [[ "$OSTYPE" == "linux-gnu" ]]; then
if hash wget 2>/dev/null; then
wget \
     --recursive \
     --no-clobber \
     --page-requisites \
     --html-extension \
     --convert-links \
     --restrict-file-names=windows  $1
else
echo -e "\033[1mcommand wget not found but installing it for, After it will re-run automatically\033[0m"
sudo apt-get install wget
./$0 $1
fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
if hash wget 2>/dev/null; then
wget \
     --recursive \
     --no-clobber \
     --page-requisites \
     --html-extension \
     --convert-links \
     --restrict-file-names=windows  $1
else
echo -e "\033[1mcommand wget not found but installing it for, After it will re-run automatically\033[0m"
brew install wget
./$0 $1
fi
else
echo -e "\033[1mContribute to script to support your OS\033[0m"
fi