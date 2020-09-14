" Comments in Vimscript start with a `"`.

" files for any web dev should be two spaces
autocmd FileType yaml,markdown,javascript,css,html setlocal shiftwidth=2 softtabstop=2 expandtab

" vim-plug as the plugin manager https://github.com/junegunn/vim-plug
call plug#begin('~/.config/nvim/')

" https://github.com/vim-airline/vim-airline
" pretty status bar
Plug 'vim-airline/vim-airline'
" https://github.com/danro/rename.vim
" Adds the :Rename comand allowing me to rename files
Plug 'danro/rename.vim'

" https://github.com/suan/vim-instant-markdown
" Opens a local web server on port 8090 which parses markdown files
" Viewable on the browser
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

call plug#end()

" vim-instant-markdown

" Only update when:
" No keys have been pressed for a while
" A while after you leave insert mode
" You save the file being edited
let g:instant_markdown_slow = 1

" Turn off autostart. Autostart automatically opens your browser and switchs
" focus to it which does not make much sense and is annoying. Thus, it makes
" more sense to do t manually
" Use :InstantMarkdownPreview to start the server and
" :InstantMarkdownStop to stop it
let g:instant_markdown_autostart = 0

" Autoscrolling confuses me, as the screen will appear to random places
let g:instant_markdown_autoscroll = 0

" If you open this file in Vim, it'll be syntax highlighted for you.

" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible

" Turn on syntax highlighting.
syntax on

" Disable the default Vim startup message.
set shortmess+=I

" Show line numbers.
set number

" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

set ai " auto indent
set scrolloff=3 " keep 3 lines when scrolling
set ruler

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Use ctrl-[hjkl] to select the active split!
" Taken from:
" https://stackoverflow.com/questions/6053301/easier-way-to-navigate-between-vim-split-panes#6053341
nnoremap <silent> <c-k> :wincmd k<CR>
nnoremap <silent> <c-j> :wincmd j<CR>
nnoremap <silent> <c-h> :wincmd h<CR>
nnoremap <silent> <c-l> :wincmd l<CR>

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

filetype on
filetype indent on
