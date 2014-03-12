syntax enable
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-easymotion'
let NERDTreeShowHidden=1
let g:syntastic_php_phpcs_args='--standard=Zend'
set nocompatible
set background=dark
set t_Co=256
colorscheme solarized
set expandtab
set tabstop=4
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
set shiftwidth=4
set backspace=indent,eol,start
set number
set showmode
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
set incsearch
set ignorecase
set smartcase
set wildmenu
set laststatus=2
set showcmd
set foldmethod=syntax
au BufNewFile,BufRead *.less set filetype=css
map <F5> <Esc>:EnableFastPHPFolds<Cr>
map <F6> <Esc>:EnablePHPFolds<Cr>
map <F7> <Esc>:DisablePHPFolds<Cr>
filetype plugin indent on
function! StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call StripTrailingWhitespaces()
