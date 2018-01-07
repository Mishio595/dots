" vim-plug section. plugins are specified by the github address by default
" then installed with :PlugInstall
" Keep them here to use them
call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdtree'
Plug 'dracula/vim'
Plug 'tpope/vim-sensible'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()
" End vim-plug section

" Various fixes
set softtabstop=4 " Not sure if Neovim needs all 3 of these, in fact nothing should
set shiftwidth=4  " Like wtf, 3 lines of config to fix the damn tab size
set tabstop=4     " Just.... This should get changed upstream to the default.....
set ruler         " Show cursor position, all the time
set nobackup      " This is pretty obvious
set nowrap        " Don't wrap line, its annoying af
set nu            " Show line numbers

" Colors and plugin configuration
colorscheme dracula
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:deoplete#enable_at_startup = 1

" Key bindings
" Maps F5 to trim trailing whitespace silently
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
vnoremap <C-c> :w !xsel -i -b <CR><CR>
