#!/bin/bash

DOPATH="dotfiles"
cd "$HOME"/"$DOPATH"
git pull
for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == "*.sh" ]] && continue
    sudo rm "$HOME"/"$f"
    ln -snfv "$DOPATH"/"$f" "$HOME"/"$f"
done
