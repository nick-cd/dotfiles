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

