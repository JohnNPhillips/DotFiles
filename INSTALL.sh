#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ "$DIR" != ~/.dotfiles ];
then
	echo "Error: Expect folder ($DIR) to be ~/.dotfiles"
	exit 1
fi

mv ~/.mybashrc ~/.mybashrc.bak
mv ~/.vimrc ~/.vimrc.bak
ln -s $DIR/mybashrc ~/.mybashrc
ln -s $DIR/vimrc ~/.vimrc

