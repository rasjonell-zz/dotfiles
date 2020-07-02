#!/bin/sh

echo "Updating fish configs..."
cp -r ~/.config/fish .config/
git add .config/fish
git commit -m "[Fish] Update fish configs" > /dev/null

echo "Updating ranger configs..."
cp -r ~/.config/ranger .config/
git add .config/ranger
git commit -m "[Ranger] Update ranger configs" > /dev/null

echo "Updating i3 configs"
cp -r ~/.i3/* .config/i3
git add .config/i3
git commit -m "[i3] Update i3 configs" > /dev/null

echo "Updating i3-scrot configs"
cp ~/.config/i3-scrot.conf .config/
git add .config/i3-scrot.conf
git commit -m "[i3-scrot] Update i3-scrot configs"

echo "Updating Vim..."
cp ~/.vim_runtime/my_configs.vim my_configs.vim
cp ~/.vimrc .
git add .vimrc
git add my_configs.vim
git commit -m "[Vim] Update .vimrc" > /dev/null

echo "Updating Picom..."
cp ~/.config/picom.conf .config/
git add .config/picom.conf
git commit -m "[Picom] Update picom configs" > /dev/null

echo "Updating Xinit"
cp ~/.xinitrc .
git add .xinitrc
git commit -m "[Xinit] Update .xinitrc" > /dev/null

if [[ `git cherry -v` ]]; then
  echo "Pushing the following commits to master..."

  git show $(git cherry -v | awk 'print $2')

  read -p "Proceed? [Y/n] " -n 1 -r
  echo    # (optional) move to a new line
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    git push origin master
  else
    echo "Aborting"
  fi
else
  echo "Already Up To Date. Nothing To Commit."
fi
