.PHONY: all update utils vscode essential news

all: vscode news

update:
	apt update && apt upgrade -y && apt autoremove -y

utils: update
	apt install -y git stow
	stow --dir="." --target="$(HOME)" git

vscode: utils
	apt install -y ctags neovim
	rm -f $(HOME)/.profile
	stow --dir="." --target="$(HOME)" sh
	rm -f $(HOME)/.bash* $(HOME)/.inputrc
	stow --dir="." --target="$(HOME)" bash
	stow --dir="." --target="$(HOME)" nvim

news: utils
	apt install -y newsboat
	stow --dir="." --target="$(HOME)" newsboat
