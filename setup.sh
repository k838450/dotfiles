#!/bin/bash

# check commands
if !(type "git" > /dev/null 2>&1); then
	echo "please install git"
	i = 1
fi

if !(type "curl" > /dev/null 2&1); then
	echo "please install curl"
	i = 1
fi

if [i = 1]; then
	exit 0
fi

# install deinvim
echo "start install deinvim"
mkdir -p ~/.cache/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
sed -i -e '0,10' ./tmp.txt
sed -i -e '1,10d' test.txt
sed -i -e '36,39d' test.txt
cp ./.vimrc  ~/.vimrc
echo "success"
