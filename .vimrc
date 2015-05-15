syntax enable

" colorsheme
" colorscheme molokai

" let g:solarized_termcolors=256
" autocmd FileType perl colorscheme solarized
" autocmd FileType perl set background=dark

let g:hybrid_use_Xresources = 1
colorscheme hybrid

set mouse=a
set scrolloff=4
set nobackup
set number
set ruler
set cmdheight=1
set laststatus=2
set backspace=start,eol,indent

" indent
set tabstop=4
set shiftwidth=4

set clipboard=unnamed

" ; = :
noremap ; :

" CTRL-hjkl
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" s
nnoremap s <Nop>

" tab
nnoremap st :<C-u>tabnew<CR>
nnoremap sn gt
nnoremap sp gT

nnoremap <C-t> :<C-u>NERDTree<CR>


" filetype
au BufNewFile,BufRead *.html.ep setf html
au BufNewFile,BufRead *.t setf perl
au BufRead,BufNewFile *.md set filetype=markdown


"--------------------------------------------------------------------------
" neobundle
set nocompatible               " Be iMproved
filetype off                   " Required!

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

filetype plugin indent on     " Required!

" Installation check.
if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
  echomsg 'Please execute ":NeoBundleInstall" command.'
  "finish
endif

NeoBundle 'itchyny/lightline.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'mattn/webapi-vim'



" emmet
let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.emmet/snippets-my.json')), "\n"))
let g:user_emmet_expandabbr_key = '<c-e>'
