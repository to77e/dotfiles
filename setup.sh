#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")";

#git pull origin main;

function setup() {
	rsync --exclude "README.md" \
	  --exclude "*.sh" \
	  --exclude ".git/" \
	  --exclude ".idea/" \
	  --exclude ".gitignore" \
	  --exclude ".config/.gitconfig-personal" \
	  --exclude ".config/.gitconfig-professional" \
	  -avh --no-perms . ~
  bash -c "source ~/.profile"
  bash -c "source ~/.bashrc"
}

if [ "$1" = "--force" -o "$1" = "-f" ]; then
	setup
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (Y/n) " -n 1 -r -s
	echo
	if [[ $REPLY =~ ^[Yy]$|^$ ]]; then
		setup
	else
	  echo "Aborted"
	fi
fi

unset setup
