#!/bin/bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin main;

function setup() {
	rsync --exclude "README.md" \
	--exclude "*.sh" \
	--exclude "*.terminal" \
	--exclude ".git/" \
	-avh --no-perms . ~;
	source ~/.profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	setup;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		setup;
	fi;
fi;
unset setup;
