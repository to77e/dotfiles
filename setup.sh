#!/usr/bin/env zsh

cd "$(dirname "${BASH_SOURCE[0]}")";

git pull origin main;

function setup() {
	rsync --exclude "README.md" \
	--exclude "*.sh" \
	--exclude "*.terminal" \
	--exclude ".git/" \
	--exclude ".gitignore" \
	--exclude ".DS_STORE" \
	--exclude ".DS_Store" \
	-avh --no-perms . ~;
	rsync -avh --no-perms ./vscode/*.json ~/Library/Application\ Support/Code/User/;
	source ~/.zshrc;
}

if [ "$1" = "--force" -o "$1" = "-f" ]; then
	setup;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		setup;
	fi;
fi;
unset setup;
