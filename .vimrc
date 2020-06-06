""
"" Basic Setup
""

set nocompatible      " Use vim, no vi defaults
set nonumber          " Show line numbers
set ruler             " Show line and column number
syntax enable         " Turn on syntax highlighting allowing local overrides
set encoding=utf-8    " Set default encoding to UTF-8
set ttyfast
set lazyredraw
set autoread

" Leader
let mapleader = " "

""
"" Whitespace
""

set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode
set noerrorbells
set visualbell
set scrolloff=3

if exists("g:enable_mvim_shift_arrow")
  let macvim_hig_shift_movement = 1 " mvim shift-arrow-keys
endif

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the left of the screen

""
"" Searching
""

set nohlsearch    " highlight matches
set noincsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter
set nocindent

""
"" Wild settings
""

" set wildmode=list:longest,list:full

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

""
"" Backup and swap files
""

set backupdir^=~/.vim/_backup//    " where to put backup files.
set directory^=~/.vim/_temp//      " where to put swap files.

" Don't use Ex mode, use Q for formatting
map Q gq

if has("statusline") && !&cp
 set laststatus=2  " always show the status bar

 " Start the status line
 set statusline=%f\ %m\ %r
 set statusline+=Line:%l/%L[%p%%]
 set statusline+=Col:%v
 set statusline+=Buf:#%n
 set statusline+=[%b][0x%B]
endif

"" Customizations

let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

"" set path+=**
set gfn=BitstreamVeraSansMono-Roman:h12
set guifont=BitstreamVeraSansMono-Roman:h12
" set Vim-specific sequences for RGB colors
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
colo blue

"" NerdTree
nmap <C-n> :NERDTreeToggle<CR>

"" IndentLine
let g:indentLine_enabled = 0

"" fzf
nmap _ :Files<CR>

" diff before save
nnoremap <C-x> :w !diff  % -<CR>

" yank everything to clipboard
nnoremap <C-p> :%y+<CR>

" bad habits to stop
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Better split switching (Ctrl-j, Ctrl-k, Ctrl-h, Ctrl-l) {{{
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l
" split moving
nnoremap <M-h> <C-w>H
nnoremap <M-j> <C-w>J
nnoremap <M-k> <C-w>K
nnoremap <M-l> <C-w>L
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>s <C-w>s
nnoremap <leader>vsa :vert sba<CR>


" Switch between the last two files
nnoremap <Leader><Leader> <C-^>

" Reindent all file
nnoremap <leader>gf gg=G``zz

" Marks should go to the column, not just the line. Why isn't this the default?
nnoremap ' `

" edit last fie
nmap <Leader>e :e#<CR>

" number and relative numbers
set number relativenumber
nnoremap <F6> :set number! relativenumber!<CR>

" Emacs-like bindings in insert mode
imap <C-e> <C-o>$
imap <C-a> <C-o>0

"
" notational fzf vim
"
let g:nv_search_paths = ['~/Dropbox/Notes', 'notes.md' ]
nnoremap <silent> <c-f> :NV<CR>

"
" undotree
"
let g:undotree_WindowLayout = 2
nnoremap <F5> :UndotreeToggle<CR>

" Fast save
nnoremap <Leader>z :w<CR>

"
" fugitive
"
nmap <leader>gh :diffget //3<CR>
nmap <leader>gl :diffget //2<CR>
nmap <leader>gs :G<CR>
let g:lightline = {
                  \ 'active': {
                  \   'left': [ [ 'mode', 'paste' ],
                  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
                  \ },
                  \ 'component_function': {
                  \   'gitbranch': 'FugitiveHead'
                  \ },
                  \ }
