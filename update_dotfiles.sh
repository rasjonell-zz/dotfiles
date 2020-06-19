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
cp ~/.vim_runtime/my_configs.vim .vimrc
git add .vimrc
git commit -m "[Vim] update .vimrc" > /dev/null

echo "Updating Picom..."
cp ~/.config/picom.conf .config/
git add .config/picom.conf
git commit -m "[Picom] update picom configs" > /dev/null

echo "\nPushing to master\n"
git push origin master
