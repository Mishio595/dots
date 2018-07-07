" vim-plug section. plugins are specified by the github address by default
" then installed with :PlugInstall
" Keep them here to use them
call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'dracula/vim'
Plug 'w0ng/vim-hybrid'
Plug 'majutsushi/tagbar'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'tpope/vim-sensible'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'cespare/vim-toml'
Plug 'rust-lang/rust.vim'
Plug 'vim-syntastic/syntastic'
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
set background=dark
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
colorscheme hybrid
let g:airline_theme = 'dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_powerline_fonts = 1

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

" deoplete-racer config
let g:deoplete#sources#rust#racer_binary='/home/lynn/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path= '/home/lynn/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:tagbar_type_rust = {
    \ 'ctagstype' : 'rust',
    \ 'kinds' : [
        \'T:types,type definitions',
        \'f:functions,function definitions',
        \'g:enum,enumeration names',
        \'s:structure names',
        \'m:modules,module names',
        \'c:consts,static constants',
        \'t:traits',
        \'i:impls,trait implementations',
    \]
    \}

" Key bindings
" Maps F5 to trim trailing whitespace silently
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
nmap <C-f> :TagbarToggle<CR>
nmap <C-e> :NERDTreeToggle<CR>
vnoremap <C-c> :w !xsel -i -b <CR><CR>
