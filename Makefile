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
	curl -sS -L https://github.com/git-lfs/git-lfs/releases/download/v3.3.0/git-lfs-linux-amd64-v3.3.0.tar.gz --output git-lfs.tar.gz
# Remove designated output directory to avoid possible conflicts in the
# following command sequence
	rm -rf git-lfs
# Change extraction output directory
# https://stackoverflow.com/a/66449935/14426824
	mkdir git-lfs
	tar -zxf git-lfs.tar.gz -C git-lfs --strip-components=1
	cd git-lfs/ && sudo ./install.sh
# Cleanup residual files
	rm git-lfs.tar.gz
	rm -r git-lfs

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
