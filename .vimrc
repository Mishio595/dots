if v:progname =~? "evim"
	finish
endif

set nocompatible		" drop vi compatibility
set backspace=indent,eol,start	" allow backspacing over everything in insert mode
set nobackup			" do not keep a backup file, use versions instead
set history=50			" keep 50 lines of command line history
set ruler			" show the cursor position all the time
set showcmd			" display incomplete commands
set incsearch		" do incremental searching
set nowrap			" don't word wrap lines
set hidden			" don't fucking whine about unsaved buffers
set softtabstop=4	" XXX: what's the difference between these?
set shiftwidth=4	" XXX: gotta RTFM
set tabstop=4   	" XXX: hnnng
set ignorecase		" case insensitive search
set nu				" show line numbers
set laststatus=2	" always show status line
set mouse=a			" enable mouse for all modes
set updatetime=1000	" write swap file after a second spent idling
set omnifunc=ccomplete#Complete	" we use C god damnit

" Don't use Ex mode, use Q for formatting
map Q gq

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
	syntax on
	set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")
	" Enable file type detection.
	" Use the default filetype settings, so that mail gets 'tw' set to 72,
	" 'cindent' is on in C files, etc.
	" Also load indent files, to automatically do language-dependent indenting.
	filetype plugin indent on

	" Put these in an autocmd group, so that we can delete them easily.
	augroup vimrcEx
	au!

	" For all text files set 'textwidth' to 78 characters.
	autocmd FileType text setlocal textwidth=78

	" When editing a file, always jump to the last known cursor position.
	" Don't do it when the position is invalid or when inside an event handler
	" (happens when dropping a file on gvim).
	autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal g`\"" |
	\ endif

	augroup END
else
	set autoindent		" always set autoindenting on
endif " has("autocmd")

" let pathogen do its thing
execute pathogen#infect()

" colorscheme
set background=light
let g:rehash256 = 1
colorscheme dracula

highlight Normal ctermbg=none
highlight NonText ctermbg=none

nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" Vim Airline
let g:airline_powerline_fonts = 1

" gtags
if filereadable("GTAGS")
	source /usr/share/gtags/gtags-cscope.vim
	set cscopetag
	:GtagsCscope
endif
