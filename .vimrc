set nocompatible

" Vundle (Package Instalation)
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  " Plugins
  Plugin 'gmarik/Vundle.vim' " Required
  Plugin 'christoomey/vim-tmux-navigator' " Tmux/Vim happiness
  Plugin 'bling/vim-airline' " Vim status bar
  Plugin 'tpope/vim-surround' " Sorround
  Plugin 'tpope/vim-commentary' " Comment stuff out EZ using 'gcc'
  Plugin 'altercation/vim-colors-solarized' " Colors

  " Ctrl P
  Plugin 'kien/ctrlp.vim'
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-e>'],
    \ 'AcceptSelection("v")': ['<cr>', '<2-LeftMouse>'],
    \ }

  " Nerdtree
  Plugin 'scrooloose/nerdtree.git'
  let NERDTreeHighlightCursorline=1
  let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']

  " Snippets
  Plugin 'SirVer/ultisnips'
  Plugin 'honza/vim-snippets'

  Plugin 'junegunn/fzf'
call vundle#end()

let g:UltiSnipsExpandTrigger = "<C-t>"
let g:UltiSnipsJumpForwardTrigger = "<C-l>"
let g:UltiSnipsJumpBackwardTrigger = "<C-h>"
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<C-l>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>', '<C-h>']

""" Main Vim Hotkeys """
:let mapleader = "\<Space>"
imap hh <Esc>
:map - "0p
:map _ "0P
nmap <silent> <leader>b :bnext<CR>
map <C-s> :NERDTreeToggle<CR>
set pastetoggle=<F2>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>
:map <leader>h ^
:map <leader>l $
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

" Go to top/bottom of code block
nnoremap <Leader>u [{
nnoremap <Leader>d ]}

" Basic Options
set background=dark
colorscheme solarized
set tabstop=4
set hlsearch
set colorcolumn=100
set smartcase " Ignore case if search pattern is all lowercase, case-sensitive otherwise
set incsearch " Show search matches as you type
set nu
set relativenumber
set scrolloff=3 " Cursor must be 3 spaces from end

" Press Shift+Enter to create new line and not go into insert mode.
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" Random Stuff
filetype plugin indent on
syntax on
highlight CursorLineNr term=bold ctermfg=9

