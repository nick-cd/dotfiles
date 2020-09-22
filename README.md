# My Dotfiles

These are my configuration files for the main software that I use.
These configurations that I have for this version provide sane defaults to
software that I use often. In it's current state it's simply a compilation of
basic config file ideas that people have shared

## Configurations
#### main git configurations

* I set **gpgSign** to true. This will make git sign all commits I make (I
  recommend to keep this one!)
* I set **commit.verbose** to true. This will always show verbose output when I
  commit staged work from the index. Useful to serve as a reminder as to what
  you
  have staged and are about to commit.
* Added a global .gitignore file (**core.excludesFile** to be precise). This
  file will apply to **all** git projects locally. This ignore file contains:
  * *~
  * .DS_Store
  * .*.swp  
  Which all should be helpful for various working environments.
* Aliases: **unstage** (unstages a file) and **discard** (removes file from
  working tree, **_potentially dangerous_**)  
**Note**: You'll have to change the **name** and **email** values and possibly
the **editor** value as well (if you don't like vim or nvim!)

#### bash configurations

* The **.bashrc** and the .bash_logout files has been left unchanged from a
fresh install of linux mint 20 "Ulyana"
* The **.bash_aliases** file has an alias to always include the **_parents_**
option (-p) to the mkdir command
* The **.inputrc** file set set the **editing-mode** to **vi** - if you don't
like vi/vim/nvim, you can remove this line

#### zsh configurations

* zsh configurations mostly taken from [Luke Smith's voidrice repository](https://github.com/LukeSmithxyz/voidrice). The **'$'** in the prompt however, will be green or red depending on the success
  of the last command.
* Forget what was said in version 2.0, I now use the
  [Antibody ZSH plugin manager](https://getantibody.github.io/). I never came
  across this manager before, **it's fast**. This manager simply managers a
  text file that sources my plugins for me. In my **.zshrc**, I now only have
  the line:  
  **_source "${ZSHPLUGS}"_**  
  And that's it!!! (ZSHPLUGS is defined in **.zshenv**)
* Additionally, the **vcs_info** framework that comes with zsh by default is
  being used in the right prompt (will show the repository name and the current 
  branch when currently within a local repository). Thanks to offical
  [git-scm website](https://git-scm.com/book/en/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Zsh) to help set this up!

#### (new!) General Shell configs

This version (3.0), adds a new sh directory containing generic configurations
for both zsh and bash shells. I put my aliases and custom functions in there.

The aliases file contains aliases that were previously in **.bash_aliases**.

In the functions script I have two functions:
* lfcd - taken straight from: https://github.com/gokcehan/lf
* mkpaths - combines the functionality of "mkdir -p" and "touch" commands.

#### tmux configurations

**Note:** there was a delay when pressing the escape key in tmux, this version
fixes this.

Small change: when a new pane/window is made, it now uses the pwd of the
current pane.

Most configurations were taken from Ham Vocke's 
[Making tmux Pretty and Usable - A Guide to Customizing your tmux.conf](https://www.hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/).
All changes made are very well documented especially on his blog!

#### Last but not least: nvim configurations!!!

Here are my configurations:
* For all file types related to web development, tabs are 2 spaces (instead of
  the default 8). This is typical in web development
* Added [vim-plug](https://github.com/junegunn/vim-plug) with two plugins:
* [vim-airline](https://github.com/vim-airline/vim-airline) - for a _fancy_
  status line! **It's a must have** 
  (I did no further configurations with this plugin, only a fresh install)
* [rename.vim](https://github.com/danro/rename.vim) - to be able to rename a
  file within vim (simpler one, but useful)
##### new stuff
* [vim-instant-markdown](https://github.com/suan/vim-instant-markdown) - to be
  able to view markdown code on a web browser.
* Nvim now checks for vim-plug and installs it if necessary _this deprecates
  the need for ```getvimplug.sh```_.  
  This is also
  [XDG-BASE-DIRECTORY](https://wiki.archlinux.org/index.php/XDG_Base_Directory) compliant.
* Nvim will now jump to the last position when reopening a file.
* Nvim now has split behaviour that makes sense (horizontal splits to the
  bottom and vertical splits to the right).


###### (new!) Vim compatibility

I added a symlink for **~/.vimrc** to point to ~/.config/nvim/init.vim. This is
to add compatibility with vim in case I am on a system without neovim.

#### (new!) custom scripts

I added a custom scripts directory to be stowed to the local bin directory of
the user. Currently, I have ```getpass.sh```. This script was taken from the
official repository for the [gopass](https://github.com/gopasspw/gopass). It
is a dmenu wrapper script for selecting what password to copy to the clipboard.
This is useful to bind a key to.

## How to use

To effectively use this repository you should use
[GNU stow](https://www.gnu.org/software/stow/) as the official documentations
states:

> GNU Stow is a symlink farm manager which takes distinct packages of software
> and/or data located in separate directories on the filesystem, and makes them
> appear to be installed in the same place.

The documentation also states that:
> It [can also facilitate a more controlled approach to management of configuration files in the user's home directory](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html)


##### Quick instructions:
1. ```git clone https://github.com/NicholasDefranco/dotfiles/``` the repository
2. ```stow --dir=path --target="~" package``` 
  * Where _path_ is the path to the root directory of the cloned repository
  * Where _package_ is the directory containing the configuration files you want (within my repository)

**Done!** All the dotfiles you're using are organized in the repository while 
the location where the application expects the dotfile(s) to appear will be
symlinked to the appropriate file in the repository.
