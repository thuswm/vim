
" My .vimrc file

" 0. vundle
" ===============
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" NERDTree
Plugin 'https://github.com/scrooloose/nerdtree.git'
" Snipmate
Plugin 'https://github.com/msanders/snipmate.vim.git'
" clang_complete
"Plugin 'https://github.com/Rip-Rip/clang_complete.git'
" Supertab
Plugin 'https://github.com/ervandew/supertab.git'
" airline (instead of powerline)
Plugin 'bling/vim-airline'
" plugin from http://vim-scripts.org/vim/scripts.html
" Taglist
Plugin 'taglist.vim'
" a.vim, a few of quick commands to swtich between source files and header files.
Plugin 'a.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" 1. Filetypes
" ============
filetype plugin on
filetype indent on

if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on
  " ...
endif


" 2. Different behaviour
" ======================
" Behaviour depending on how VIM is run
if has('gui_running')

  " 2.1 GUI mode
  colorscheme my_colors

else
  " 2.2 Console mode
  set mouse=a
  set t_Co=256
  colorscheme my_colors

endif

" 3. Plugins
" ==========

" 4. Keymaps
" ==========
:nmap <c-tab> :bn <cr>

" 5. Misc. settings
" =================

" highlight the cursor line
set cursorline

" always show the status line
set laststatus=2

" turn off all sounds
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Make Taglist work also for subfolders
set tags=tags;/

" .vimrc ends here
