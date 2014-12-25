set shell=/bin/sh

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

 " let Vundle manage Vundle, required
 Plugin 'gmarik/Vundle.vim'

 " My Bundles here:
  Plugin 'kien/ctrlp.vim'
  Plugin 'flazz/vim-colorschemes'

  " golang
  Plugin 'fatih/vim-go'
  Plugin 'nsf/gocode', {'rtp': 'vim/'}
  Plugin 'Shougo/neocomplete.vim'
  Plugin 'majutsushi/tagbar'
  Plugin 'Shougo/neosnippet'
  Plugin 'Shougo/neosnippet-snippets'

"   Plugin 'https://github.com/kchmck/vim-coffee-script.git'
"  Plugin 'L9'
"   Plugin 'Lokaltog/vim-easymotion'
"   Plugin 'https://github.com/wincent/Command-T.git'
"   Plugin 'ack.vim'
   Plugin 'rking/ag.vim'
"   Plugin 'taglist.vim'
"   Plugin 'https://github.com/vim-scripts/molokai.git'
   Plugin 'https://github.com/vim-scripts/tComment.git'
   Plugin 'https://github.com/vim-scripts/The-NERD-tree.git'
"   Plugin 'https://github.com/suan/vim-instant-markdown.git'
   Plugin 'https://github.com/vim-scripts/Align.git'
   Plugin 'https://github.com/ervandew/supertab.git'
"   "syntax check
   Plugin 'https://github.com/scrooloose/syntastic.git'
   Plugin 'https://github.com/bling/vim-airline.git'
  Plugin 'https://github.com/tpope/vim-surround.git'
"   "git
   Plugin 'https://github.com/tpope/vim-fugitive.git'
"   Plugin 'https://github.com/ciaranm/detectindent.git'
  Plugin 'https://github.com/Raimondi/delimitMate.git'
   Plugin 'vim-ruby/vim-ruby'
"   Plugin 'airblade/vim-gitgutter'
   Plugin 'https://github.com/vim-scripts/endwise.vim.git'
   Plugin 'pangloss/vim-javascript'
   Plugin 'altercation/vim-colors-solarized'
   Plugin 'https://github.com/michaeljsmith/vim-indent-object.git'
"  " Plugin 'https://github.com/vim-scripts/UltiSnips.git'
"   Plugin 'Yggdroot/indentLine'
   Plugin 'https://github.com/vim-scripts/JavaScript-Indent.git'
"   Plugin 'vim-scripts/matchit.zip'
   Plugin 'https://github.com/vim-scripts/Tabular.git'
"   Plugin 'https://github.com/terryma/vim-multiple-cursors.git'
   "Plugin 'https://github.com/altercation/vim-colors-solarized.git'
"   Plugin 'https://github.com/tpope/vim-cucumber.git'
"   Plugin 'https://github.com/mutewinter/nginx.vim.git'
"   Plugin 'https://github.com/msanders/cocoa.vim.git'
  "Press <c-w>o : the current window zooms into a full screen
  "Press <c-w>o again: the previous set of windows is restored
  " Plugin 'https://github.com/vim-scripts/ZoomWin.git'


 " You can specify revision/branch/tag.
 Plugin 'Shougo/vimshell', { 'rev' : '3787e5' }


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.

 set t_Co=256
 set wrap

 " colorscheme molokai
 let g:solarized_termcolors=256 "default value is 16
 let g:solarized_contrast="high" "default value is normal
 let g:solarized_visibility="high" "default value is normal
 let g:solarized_diffmode="high" "default value is normal
 let g:solarized_hitrail=1 "default value is 0
 let g:solarized_degrade=0
 let g:solarized_termtrans=1
 syntax enable
 set background=dark
" colorscheme solarized

 set go-=T
 set laststatus=2
 set encoding=utf-8 " Necessary to show unicode glyphs
 set nu
 set autoindent
 set smartindent
 set shiftwidth=2
 set smarttab
 set tw=0
 set hidden
 set softtabstop=2
 set tabstop=8
 set expandtab
 set ignorecase
 set antialias
 set backspace=indent,eol,start
 set formatoptions=tcrqn
 set nobackup
 set hlsearch
 set autoread
 set directory-=.
 set encoding=utf-8
 set viminfo+=!
 set magic
 set showcmd
 set smartcase
 set cmdheight=2
 set laststatus=2
 set report=0
 set ru
 set dy=lastline
 set clipboard=unnamedplus
 set showmatch
 set incsearch
 set novisualbell
 set scrolloff=3
 set noswapfile
 set cursorline
 set smartindent
 set cmdheight=1
 set mouse=a
 set nowrap
 set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
 set wildmenu
 if exists('$TMUX') " Support resizing in tmux
 set ttymouse=xterm2
 endif

 " keyboard shortcuts
 let mapleader = ','
 map <C-h> <C-w>h
 map <C-j> <C-w>j
 map <C-k> <C-w>k
 map <C-l> <C-w>l
 nmap // :TComment<CR>
 vmap // :TComment<CR>
 map <leader>l :Align
 " map <leader>t :Tabularize
 nmap <leader>a :Ag<space>
 nmap <leader>d :NERDTreeToggle<CR>
 nmap <leader>r :!bundle exec ruby %<CR>
 nmap <leader>f :NERDTreeFind<CR>
 map <F8> :NERDTree<CR>
 map <Leader>m :CtrlPMRUFiles<CR>
 map <Leader>b :CtrlPBuffer<CR>
 imap jk <ESc> :w<CR>
 imap qq <ESc> :wq<CR>
 imap jj <ESc>
 map q <Esc> :wq<CR>

 " let g:ackprg = 'ag '
 let g:CommandTMatchWindowAtTop=1 " show window at top
 set grepprg=ag\ --nogroup\ --nocolor
 let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

 " plugin settings
 let g:ctrlp_use_caching = 1
 let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
 let g:ctrlp_clear_cache_on_exit = 1
 let g:ctrlp_match_window = 'order:ttb,max:20'
 set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,tags
 let g:ctrlp_working_path_mode = 'a'
 let g:ackprg = 'ag --nogroup --nocolor --column'
 let g:AckCmd='perl ~/bin/ack --color'

 :let g:detectindent_preferred_expandtab = 1

 let g:indentLine_char='|'
 let g:indentLine_enabled=1
 nmap il :IndentLinesToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""
" configure Tagbar
""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_type_go = {
\ 'ctagstype' : 'go',
\ 'kinds' : [
  \ 'p:package',
  \ 'i:imports:1',
  \ 'c:constants',
  \ 'v:variables',
  \ 't:types',
  \ 'n:interfaces',
  \ 'w:fields',
  \ 'e:embedded',
  \ 'm:methods',
  \ 'r:constructor',
  \ 'f:functions'
\ ],
\ 'sro' : '.',
\ 'kind2scope' : {
  \ 't' : 'ctype',
  \ 'n' : 'ntype'
\ },
\ 'scope2kind' : {
  \ 'ctype' : 't',
  \ 'ntype' : 'n'
\ },
\ 'ctagsbin' : 'gotags',
\ 'ctagsargs' : '-sort -silent'
\}
nmap <silent><leader>t :TagbarToggle<CR>'
"""""""""""""""""" THE END """""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""
" neocomplete
"""""""""""""""""""""""""""""""""""""""""""""""""""
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

""""""""""""""""" THE END """"""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_snippet_engine = 'neosnippet'

""""""""""""""""" THE END """"""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""
" neosnippet
"""""""""""""""""""""""""""""""""""""""""""""""""""

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-go/gosnippets'
""""""""""""""""" THE END """"""""""""""""""""""""
