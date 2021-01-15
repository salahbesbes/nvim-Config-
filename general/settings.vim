set iskeyword+=-                      	" treat dash separated words as a word text object"
set formatoptions-=cro                  " Stop newline continution of comments

syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers

set shell=bash
" AutoCompl Pop Config
set complete+=kspell
set completeopt+=menu
set completeopt+=menuone   " Show the completions UI even with only 1 item
set completeopt-=longest   " Don't insert the longest common text
set completeopt+=preview   " Hide/show the documentation preview window
set completeopt+=noinsert  " Don't insert text automatically
set textwidth=79
set nowrap                              " Display long lines as just one line
" set whichwrap+=<,>,[,],h,l
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files

" format
set tabstop=8                           " Insert 2 spaces for a tab
set shiftwidth=8                        " Change the number of space characters inserted for indentation
set smartindent                         " Makes indenting smart
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set autoindent                          " Good auto indent
set cindent


" search
set ignorecase "  case insensitive
"set smartcase  "  use case if any caps used
set incsearch  "  show match as search proceeds
set hlsearch   "  search highlighting

set laststatus=2                        " Always display the status line
set number                              " Line numbers
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
" set noshowmode                          " We don't need to see things like -- INSERT -- anymore
"set nobackup                            " This is recommended by coc
"set nowritebackup                       " This is recommended by coc
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set updatetime=300                      " Faster completion
set timeoutlen=100                      " By default timeoutlen is 1000 ms
set clipboard=unnamedplus               " Copy paste between vim and everything else
set guifont=JetBrainsMono\ Nerd\ Font

" New stuff
" set notimeout nottimeout
" set scrolloff=1
" set sidescroll=1
" set sidescrolloff=1
" set display+=lastline
" set backspace=eol,start,indent
" set nostartofline
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" set mmp=1300
" set autochdir                           " Your working directory will always be the same as your working directory
" set foldcolumn=2                        " Folding abilities

" au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" highlight current line
au WinLeave * set nocursorline
au WinEnter * set cursorline
set cursorline


set noequalalways   " all windows not same size after split or close
" editor settings
set history=1000
set backspace=indent,eol,start             " More powerful backspacing
set t_Co=256                               " Explicitly tell vim that the terminal has 256 colors
set mouse=a				   " use mouse in all modes
set report=0                               " always report number of lines changed
set scrolloff=5                            " 5 lines above/below cursor when scrolling
set number                                 " show line numbers
set showmatch                              " show matching bracket (briefly jump)
set showcmd                                " show typed command in status bar
set showmode
set title                                  " show file in titlebar
set laststatus=2                           " use 2 lines for the status bar

set matchtime=2                            " show matching bracket for 0.2 seconds


"set directory=~/.vim/tmp                   " move swp file to /tmp
" Default Indentation
"set tw=80
set timeout
set timeoutlen=300		" response time

" some options
set fcs=vert:│ " solid vsplit separator
set virtualedit=onemore " virtual space at eol
set autoread " auto reload
set list " invisable chars
set listchars=tab:▸\ ,extends:❯,precedes:❮,nbsp:␣
set scrolloff=6 " minimal lines below cursor
let g:airline_theme = 'onedark'

" enable all Python syntax highlighting features
let python_highlight_all = 1
autocmd FileType python setlocal shiftwidth=4 softtabstop=4 expandtab


"add commet to json file
autocmd FileType json syntax match Comment +\/\/.\+$+

set directory=~/.vim/dirs/tmp     " directory to place swap files in
set backup                        " make backup files
set backupdir=~/.vim/dirs/backups " where to put backup files
set undofile                      " persistent undos - undo after you re-open the file
set undodir=~/.vim/dirs/undos

" create needed directories if they don't exist
if !isdirectory(&backupdir)
	call mkdir(&backupdir, "p")
endif
if !isdirectory(&directory)
	call mkdir(&directory, "p")
endif
if !isdirectory(&undodir)
	call mkdir(&undodir, "p")
endif

" You can't stop me
cmap w!! w !sudo tee %
