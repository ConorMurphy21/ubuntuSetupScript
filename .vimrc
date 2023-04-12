syntax enable
set expandtab
set mouse=a
set relativenumber
set tabstop=3
set shiftwidth=3
set hlsearch
nmap <F6> :NERDTreeToggle<CR>
"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'rhysd/vim-clang-format'
Plug 'itchyny/lightline.vim'
Plug 'bluz71/vim-moonfly-colors'
Plug 'NLKNguyen/papercolor-theme'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'justinmk/vim-syntax-extra'
Plug 'lifepillar/vim-solarized8'
Plug 'junegunn/seoul256.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'kana/vim-operator-user'
call plug#end()
let g:PaperColor_Theme_Options = {
  \   'language': {
  \     'python': {
  \       'highlight_builtins' : 1
  \     },
  \     'cpp': {
  \       'highlight_standard_library': 1
  \     },
  \     'c': {
  \       'highlight_builtins' : 1
  \     }
  \   }
  \ }
let g:airline_theme="luna"
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
