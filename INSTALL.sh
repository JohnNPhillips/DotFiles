#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ "$DIR" != ~/.dotfiles ];
then
	echo "Error: Expect folder ($DIR) to be ~/.dotfiles"
	exit 1
fi

DOTFILES=(mybashrc vimrc)

for file in ${DOTFILES[@]}; do
    # If the file exists, back it up
    if [ -f ~/.$file ]; then
        if [ ! -f ~/.$file.bak ]; then
            echo "Backing up ~/.$file to ~/.$file.bak"
            mv ~/.$file ~/.$file.bak
        fi
    fi

    # If the symlink doesn't exist, create it
    if [ ! -h ~/.$file ]; then
        echo "Creating symlink for $file"
        ln -s $DIR/$file ~/.$file
    fi
done

# Special handling for .bashrc
BASHRC_SNIPPET="source ~/.mybashrc"
if [ -f ~/.bashrc ] && ! grep -qF "$BASHRC_SNIPPET" ~/.bashrc; then
    echo "Adding source command to ~/.bashrc"
    echo -e "\n# Load custom bash settings\nif [ -f ~/.mybashrc ]; then\n    $BASHRC_SNIPPET\nfi" >> ~/.bashrc
fi
