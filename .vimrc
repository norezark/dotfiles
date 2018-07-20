set tabstop=4
set title
set autoindent
set virtualedit=onemore
set number
set laststatus=2
set expandtab
set softtabstop=4
set ttyfast
"set incsearch
set showcmd
set smartindent
set shiftwidth=4
set ignorecase
set smartcase
set incsearch
set wrapscan
set wildmode=list:longest
set spelllang=en,cjk
set hlsearch
set hidden
set switchbuf=useopen
nmap <Esc><Esc> :nohlsearch<CR><Esc>
if has('persistent_undo')
    set undodir=~/.vim/undo
    set undofile
endif
autocmd BufRead, BufNewFile *.py setfiletype python
autocmd BufWritePre * :%s/\s\+$//ge

command! Run call s:Run()
nmap <F5> :Run<CR>
function! s:Run()
    let e = expand("%:e")
    if e == "c"
        :Gcc
    endif
endfunction

command! Gcc call s:Gcc()
function! s:Gcc()
    :w
    :!gcc % -lm -o %:r.out
    :!./%:r.out
endfunction

augroup QuickFixCmd
    autocmd!
    autocmd QuickFixCmdPost *grep* cwindow
augroup END


""""""""""""""""""""""""""""""
" 最後のカーソル位置を復元する
""""""""""""""""""""""""""""""
if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
endif
""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" 自動的に閉じ括弧を入力
""""""""""""""""""""""""""""""
inoremap { <RETURN>{<RETURN>}<LEFT><RETURN><UP><TAB>
"inoremap [ []<LEFT>
"inoremap ( ()<LEFT>
""""""""""""""""""""""""""""""
nnoremap == gg=G''
inoremap , ,<SPACE>

set clipboard=unnamed

filetype plugin indent on
