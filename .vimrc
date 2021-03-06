execute pathogen#infect()
syntax on
filetype plugin indent on

syntax enable
set background=dark
colorscheme solarized

" ================ General Config ====================

set number "Line numbers are good
set backspace=indent,eol,start "Allow backspace in insert mode
set history=1000 "Store lots of :cmdline history
set showcmd "Show incomplete cmds down the bottom
set showmode "Show current mode down the bottom
set gcr=a:blinkon0 "Disable cursor blink
set visualbell "No sounds
set autoread "Reload files changed outside vim
set guitablabel=\[%N\]\ %t\ %M 
set guifont=Monospace\ 11

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" ================ Search Settings =================

set incsearch "Find the next match as we type the search
"set hlsearch "Hilight searches by default
set viminfo='100,f1 "Save up to 100 marks, enable capital marks

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.

silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap "Don't wrap lines
set linebreak "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent "fold based on indent
set foldnestmax=3 "deepest fold is 3 levels
set nofoldenable "dont fold by default

" ================ Completion =======================

"set wildmode=full
"set wildmenu "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*.class,*.jar,*.war
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

"

" ================ Scrolling ========================

set scrolloff=8 "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Ctrl-P stuff =====================
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_root_markers=['pom.xml']
set wildignore+=*/target/*,*/generated-sources/*,*.class,*.so,*.swp,*.zip 
let g:ctrlp_working_path_mode = 'ra'


" =============== Tabs =============================
nnoremap <C-t> :tabnew<CR>
for key in [1, 2, 3, 4, 5, 6, 7, 8, 9]
  exe "nnoremap <A-" . key . "> :tabnext " . key . "<CR>"
endfor

" ================ Medium Mode =====================
for prefix in ['i', 'n', 'v']
  for key in ['<Up>', '<Down>', '<Left>', '<Right>', '<Delete>', '<Home>', '<End>']
    exe prefix . "noremap " . key . " <Nop>"
  endfor
endfor

" =============== NERDTree ========================
nnoremap <C-o> :NERDTree<CR>
nnoremap <C-x> :NERDTreeClose<CR>


set autochdir
autocmd BufEnter * exe 'setlocal path='.fnamemodify(findfile('pom.xml',';'),":h").'/src/**'

let g:project_root_dir='/home/kramakrishnan/karun-workspace/cjo/main'

" nav thru windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

