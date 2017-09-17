set nocompatible		" drop vi compatibility
set backspace=indent,eol,start	" allow backspacing over everything in insert mode
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
set autoindent		" always set autoindenting on

" colorscheme
set background=light
let g:rehash256 = 1
colorscheme dracula

highlight Normal ctermbg=none
highlight NonText ctermbg=none

nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" Vim Airline
let g:airline_powerline_fonts = 1
