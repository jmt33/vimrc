" git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" BundleInstall
set laststatus=2
set statusline=%F:\ %l
set hidden "in order toswitch between buffers with unsaved change
nnoremap <silent> <C-Left> :bn<CR>
nnoremap <silent> <C-Right> :bp<CR>
" map <s-tab> :bq<cr>
" map <tab> :bn<cr>
set nocompatible               " be iMproved
filetype off                   " required!
" CtrolP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_open_multiple_files = 'v'
" 忽略
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'taglist.vim'
Bundle 'Align'
Bundle 'tpope/vim-rails'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'kchmck/vim-coffee-script'
Bundle 'hallison/vim-markdown'
Bundle 'groenewege/vim-less'
"Bundle 'slim-template/vim-slim/'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'jlanzarotta/bufexplorer'
Bundle 'terryma/vim-multiple-cursors'
Bundle "Yggdroot/indentLine"
Bundle "airblade/vim-gitgutter"
Bundle "gregsexton/gitv"
Bundle "tpope/vim-commentary"
Bundle "tpope/vim-surround"
Bundle "Raimondi/delimitMate"
" 字体
set guifont=monaco\ 10

set nobackup
set nowritebackup

"语法高亮
syntax on

"打开命令行补全菜单
set wildmenu
"关闭响铃，闪屏
set vb t_vb=
"显示行号
set nu
"马上跳到搜索匹配
set incsearch

"根据文件格式载入插件和缩进
filetype plugin indent on
set autoindent

"打开鼠标功能
set mouse=a

"指标符宽度
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Display extra whitespace
set list listchars=tab:»·,trail:·

autocmd FileType make     set noexpandtab
autocmd FileType python   set noexpandtab
autocmd FileType eruby  set tabstop=2 shiftwidth=2
autocmd FileType ruby,rdoc set tabstop=2 shiftwidth=2
autocmd FileType html set tabstop=2 shiftwidth=2
autocmd FileType javascript set tabstop=2 shiftwidth=2
autocmd FileType coffee set tabstop=2 shiftwidth=2
au! BufRead,BufNewFile *.json setfiletype json

fun! StripTrailingWhitespace()
    " Don't strip on these filetypes
    if &ft =~ 'markdown'
        return
    endif
    %s/\s\+$//e
endfun

autocmd BufWritePre * call StripTrailingWhitespace()

" 快捷键
nmap <Up> <c-w>k
nmap <Down> <c-w>j
nmap <Right> <c-w>l
nmap <Left> <c-w>h

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

nmap <F2> :w<cr>
nmap <F3> :wa<cr>
nmap <F4> :q<cr>
nmap <F6> :cp<cr>
nmap <F7> :cn<cr>
nmap <F11> gg=G<C-o>
nnoremap <silent> <F12> :TlistToggle<CR>

" syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_enable_highlighting = 0
let g:syntastic_mode_map = { 'passive_filetypes': ['scss', 'slim'] }

nmap <A-up> :lprev<cr>
nmap <A-down> :lnext<cr>
nmap <A-right> :ll<cr>

" Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'"
