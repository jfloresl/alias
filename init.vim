set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set laststatus=2


set ai
set wrap


call plug#begin('C:\Users\con_j\AppData\Local\nvim\plugged')

" temas
Plug 'morhetz/gruvbox'
"footer
Plug 'vim-airline/vim-airline' 

" ide
Plug 'easymotion/vim-easymotion'
"arbol de programas
Plug 'scrooloose/nerdtree'
"moverse entre pestañas
Plug 'christoomey/vim-tmux-navigator'
"buscador
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"identacion
Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'mattn/emmet-vim'

Plug 'artur-shaik/vim-javacomplete2', {'for': ['java']}

Plug 'kien/rainbow_parentheses.vim', {'on': 'RainbowParenthesesToggleAll'}

call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"

"atajos
let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind <CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>  
nmap <Leader>f :FZF<CR>
nmap <leader>pi :PlugInstall<cr>
nmap <leader>pu :PlugUpdate<cr>

" color identaciones
set list
set listchars=tab:\ \ ,trail:-,nbsp:+
highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine
highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine
highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine
highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine
highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine
highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine
let g:indent_blankline_char_list = ['|', '¦', '┆', '┊']
let g:indent_blankline_char_highlight_list = ['IndentBlanklineIndent1', 'IndentBlanklineIndent2', 'IndentBlanklineIndent3',
      \ 'IndentBlanklineIndent4', 'IndentBlanklineIndent5', 'IndentBlanklineIndent6']


let g:user_emmet_leader_key=','

let g:user_emmet_settings = {
\  'variables': {'lang': 'ja'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."<head>\n"
\              ."\t<meta charset=\"${charset}\">\n"
\              ."\t<title></title>\n"
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."</head>\n"
\              ."<body>\n\t${child}|\n</body>\n"
\              ."</html>",
\    },
\  },
\}

