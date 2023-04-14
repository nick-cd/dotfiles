.PHONY: all update utils gitconfig vscode essential news

all: vscode news

update:
	apt update && apt upgrade -y && apt autoremove -y

utils: update gitconfig
	apt install -y git stow
	stow --dir="." --target="$(HOME)" git

# Detect host OS
# https://stackoverflow.com/a/12099167/14426824
ifeq ($(OS), WINDOWS_NT)
AUTOCRLF_VALUE = true
else
AUTOCRLF_VALUE = input
endif

gitconfig:
	git config --file=git/.gitconfig.varying core.autocrlf $(AUTOCRLF_VALUE)

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
