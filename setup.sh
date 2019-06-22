#!/bin/bash

# check commands
i=0
if !(type "git" > /dev/null 2>&1); then
	echo "please install git"
	i=1
fi

if !(type "curl" > /dev/null 2>&1); then
	echo "please install curl"
	i=1
fi

if !(type "ctags" > /dev/null 2>&1); then
	echo "please install ctags"
	i=1
fi

if [ $i = 1 ]; then
	exit 0
fi

# install deinvim
echo "start install deinvim"
mkdir -p ~/.cache/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
cp ./.vimrc  ~/.vimrc

PAHT=$HOME
sed -i -e 's/hoge/$PATH/g' .vimrc

# call dein#install()
