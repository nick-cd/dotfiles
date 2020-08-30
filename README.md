# My Dotfiles

These are my configuration files for the main software that I use.
These configurations that I have for this version provide sane defaults to software that I use often. 
In it's current state it's simply a compilation of basic config file ideas that people have shared

## Configurations
#### main git configurations

* I set **gpgSign** to true. This will make git sign all commits I make (I recommed to keep this one!)
* Aliases: **unstage** (unstages a file) and **discard** (removes file from working tree, **_potentially dangerous_**)  
**Note**: You'll have to change the **name** and **email** values and possibly the **editor** value as well (if you don't like vim or nvim!)

#### bash configurations

* The **.bashrc** and the .bash_logout files has been left unchanged from a fresh install of linux mint 20 "Ulyana"
* The **.bash_aliases** file has an alias to always include the **_parents_** option (-p) to the mkdir command
* The **.inputrc** file set set the **editing-mode** to **vi** - if you don't like vi/vim/nvim, you can remove this line

#### tmux configurations

All configurations were taken from Ham Vocke's 
[Making tmux Pretty and Usable - A Guide to Customizing your tmux.conf](https://www.hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/).
All changes made are very well documented especially on his blog!

#### Last but not least: nvim configurations!!!

The configurations to nvim were mostly taken from [The Missing Semester of your CS Education](https://missing.csail.mit.edu/) 
class at MIT within the [third class's lecture notes](https://missing.csail.mit.edu/2020/files/vimrc). All configurations 
made are documented very well.

Here are my additional configurations:
* For all file types related to web devlopment, tabs are 2 spaces (instead of the default 8). This is typical in web development
* Added [vim-plug](https://github.com/junegunn/vim-plug) with two plugins:
  * [vim-airline](https://github.com/vim-airline/vim-airline) - for a _fancy_ status line! **It's a must have** 
  (I did no futher configurations with this plugin, only a fresh install)
  * [rename.vim](https://github.com/danro/rename.vim) - to be able to rename a file within vim (simpler one, but useful)
  
To use vim-plug you must install it, you must install it, follow the 
[install and usage instructions](https://github.com/junegunn/vim-plug/wiki/tutorial) on the offical repository. 

If you already know vim-plug, you can use the getvimplug.sh script to download vim-plug (for linux/unix) to save some time 
getting the install command from the offical website.

