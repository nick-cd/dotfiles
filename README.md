# My Dotfiles

These are my configuration files for the main software that I use.
These configurations that I have for this version provide sane defaults to
software that I use often. In it's current state it's simply a compilation of
basic config file ideas that people have shared

## Configurations
#### main git configurations

* I set **gpgSign** to true. This will make git sign all commits I make (I
recommed to keep this one!)
* I set **commit.verbose** to true. This will always show verbose output when I
commit staged work from the index. Useful to serve as a reminder as to what you
have staged and are about to commit.
* Added a global .gitignore file (**core.excludesFile** to be precise). This
file will apply to **all** git projects locally. This ignore file contains:
  * *~
  * .DS_Store
  * .*.swp  
  Which all should be helpful for various working environments.
* Aliases: **unstage** (unstages a file) and **discard** (removes file from work
ing tree, **_potentially dangerous_**)  
**Note**: You'll have to change the **name** and **email** values and possibly
the **editor** value as well (if you don't like vim or nvim!)

#### bash configurations

* The **.bashrc** and the .bash_logout files has been left unchanged from a
fresh install of linux mint 20 "Ulyana"
* The **.bash_aliases** file has an alias to always include the **_parents_**
option (-p) to the mkdir command
* The **.inputrc** file set set the **editing-mode** to **vi** - if you don't
like vi/vim/nvim, you can remove this line

#### (new!) zsh configurations

* zsh configurations mostly taken from [Luke Smith's voidrice repository](https://github.com/LukeSmithxyz/voidrice). The **'$'** in the prompt however, will be green or red depending on the success
  of the last command.
* However, plugins are handled slightly differently. I made a **_ZSHPLUGS_**
  variable in .zshenv holding the path to where plugins should be stored. The
  .zshrc will check to see if **_ZSHPLUGS_** exists. The .zshrc file will then
  source the main plugin source file (if it exists). This system allows more
  freedom as plugin managers for zsh always seem to force things on their
  users as well as slow down the startup time of a new interactive session 
  ~~(don't buy their speed comparisons, they're lying, my startup time took
  forever for each of them)~~.
* Additionally, the **vcs_info** framework that comes with zsh by default is
  being used in the right prompt (will show the repository name and the current 
  branch when currently within a local repository). Thanks to offical
  [git-scm website](https://git-scm.com/book/en/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Zsh) to help set this up!

#### tmux configurations

All configurations were taken from Ham Vocke's 
[Making tmux Pretty and Usable - A Guide to Customizing your tmux.conf](https://www.hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/).
All changes made are very well documented especially on his blog! **However,
mouse support has been removed**

#### Last but not least: nvim configurations!!!

The configurations to nvim were mostly taken from [The Missing Semester of your CS Education](https://missing.csail.mit.edu/) 
class at MIT within the [third class's lecture notes](https://missing.csail.mit.edu/2020/files/vimrc). All configurations made are documented very well.
**Recently, mouse support has been removed**

Here are my additional configurations:
* For all file types related to web devlopment, tabs are 2 spaces (instead of
the default 8). This is typical in web development
* Added [vim-plug](https://github.com/junegunn/vim-plug) with two plugins:
  * [vim-airline](https://github.com/vim-airline/vim-airline) - for a _fancy_
  status line! **It's a must have** 
  (I did no futher configurations with this plugin, only a fresh install)
  * [rename.vim](https://github.com/danro/rename.vim) - to be able to rename a
  file within vim (simpler one, but useful)
  
To use vim-plug you must install it, you must install it, follow the 
[install and usage instructions](https://github.com/junegunn/vim-plug/wiki/tutorial) on the offical repository. 

If you already know vim-plug, you can use the getvimplug.sh script to download vim-plug (for linux/unix) to save some time 
getting the install command from the offical website.

## How to use

To effectively use this repository you should use [GNU stow](https://www.gnu.org/software/stow/) as the offical documentations states:

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
