#!/bin/bash
DOPATH="dotfiles"
DOTFILES_URL="https://github.com/1n5k/dotfiles"

cd ~

if type "git"; then
    git clone --recursive "$DOTFILES_URL" "$DOPATH"

elif type "curl" || has "wget"; then
    tarball="https://github.com/1n5k/dotfiles/archive/master.tar.gz"

    if type "curl"; then
        curl -L "$tarball"
        
    elif type "wget"; then
        wget -o - "$tarball"

    fi | tar vxz

    mv -f dotfiles-master "$DOPATH"

else
    die "This script require 'git' or '(curl|wget)'."

fi

cd ~/dotfiles
if [ $? -ne 0 ]; then
    die "Files not found."
fi


for f in .??*
do
    [[ "$f" == ".git" ]] && continue

    ln -snfv "$DOPATH"/"$f" "$HOME"/"$f"
done

