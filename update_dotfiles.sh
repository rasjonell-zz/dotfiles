#!/bin/sh

echo "Updating fish configs..."
cp -r ~/.config/fish .config/
git add .config/fish
git commit -m "[Fish] update fish configs" > /dev/null

echo "Updating ranger configs..."
cp -r ~/.config/ranger .config/
git add .config/ranger
git commit -m "[Ranger] update ranger configs" > /dev/null

echo "Updating i3 configs"
cp -r ~/.i3/* .config/i3
git add .config/i3
git commit -m "[i3] update i3 configs" > /dev/null

echo "Updating Vim..."
cp ~/.vim_runtime/my_configs.vim my_configs.vim
cp ~/.vimrc .
git add .vimrc
git add my_configs.vim
git commit -m "[Vim] update .vimrc" > /dev/null

echo "Updating Picom..."
cp ~/.config/picom.conf .config/
git add .config/picom.conf
git commit -m "[Picom] update picom configs" > /dev/null

echo "Updating Xinit"
cp ~/.xinitrc .
git add .xinitrc
git commit -m "[Xinit] update .xinitrc" > /dev/null

if [[ `git cherry -v` ]]; then
  echo "Pushing the following commits to master..."
  git cherry -v
  git push origin master
else
  echo "Already Up To Date. Nothing To Commit."
fi
