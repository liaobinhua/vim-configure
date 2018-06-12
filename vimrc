"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: 
"       Amir Salihefendic
"       http://amix.dk - amix@amix.dk
"
" Version: 
"       5.0 - 29/05/12 15:43:36
"
" Blog_post: 
"       http://amix.dk/blog/post/19691#The-ultimate-Vim-configuration-on-Github
"
" Awesome_version:
"       Get this config, nice color schemes and lots of plugins!
"
"       Install the awesome version from:
"
"           https://github.com/amix/vimrc
"
" Syntax_highlighted:
"       http://amix.dk/vim/vimrc.html
"
" Raw_version: 
"       http://amix.dk/vim/vimrc.txt
"
" Sections:
"    -> Vundle
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Moving around, tabs and buffers
"    -> Status line
"    -> Editing mappings
"    -> vimgrep searching and cope displaying
"    -> Spell checking
"    -> Misc
"    -> Helper functions
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'JulesWang/css.vim' " only necessary if your Vim version < 7.4
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'groenewege/vim-less'
Plugin 'mxw/vim-jsx'
Plugin 'digitaltoad/vim-jade'

Plugin 'jiangmiao/auto-pairs'
Plugin 'easymotion/vim-easymotion'

Plugin 'Valloric/YouCompleteMe'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'othree/yajs.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'ternjs/tern_for_vim'
Plugin 'Valloric/MatchTagAlways'
"Plugin 'skammer/vim-css-color'
"Plugin 'SirVer/ultisnips'
Plugin 'posva/vim-vue'
"Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'Shougo/neocomplete.vim'
Plugin 'alvan/vim-closetag'
" add this line to your .vimrc file
Plugin 'mattn/emmet-vim'
Plugin 'heavenshell/vim-jsdoc'

"Python 
Plugin 'vim-scripts/indentpython.vim'
let python_highlight_all=1
syntax on
Plugin 'davidhalter/jedi-vim'
Plugin 'python-mode/python-mode'


"laravel 

let g:jsx_ext_required = 0


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"YouCompleteMe
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 寻找全局配置文件
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
" 禁用syntastic来对python检查
let g:syntastic_ignore_files=[".*\.py$"]
" 使用ctags生成的tags文件
let g:ycm_collect_identifiers_from_tag_files = 1
" 开启语义补全
" 修改对C语言的补全快捷键，默认是CTRL+space，修改为ALT+;未测出效果
"let g:ycm_key_invoke_completion = '<M-;>'
" 设置转到定义处的快捷键为ALT+G，未测出效果
"nmap <M-g> :YcmCompleter GoToDefinitionElseDeclaration <C-R>=expand("<cword>")<CR><CR>
"关键字补全
"let g:ycm_seed_identifiers_with_syntax = 1
" 在接受补全后不分裂出一个窗口显示接受的项
set completeopt-=preview
" 让补全行为与一般的IDE一致
set completeopt=longest,menu
" 不显示开启vim时检查ycm_extra_conf文件的信息
let g:ycm_confirm_extra_conf=0
" 每次重新生成匹配项，禁止缓存匹配项
let g:ycm_cache_omnifunc=0
" 在注释中也可以补全
let g:ycm_complete_in_comments=1
" 输入第一个字符就开始补全
let g:ycm_min_num_of_chars_for_completion=1
" 错误标识符
let g:ycm_error_symbol='>>'
" 警告标识符
let g:ycm_warning_symbol='>*'
" 不查询ultisnips提供的代码模板补全，如果需要，设置成1即可
" let g:ycm_use_ultisnips_completer=0
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ------------------------------------------------------------
"  vim-jsx
" ------------------------------------------------------------
let g:jsx_ext_required = 0
"let g:jsx_pragma_required = 1

" ------------------------------------------------------------
"  vim-vue
" ------------------------------------------------------------
autocmd FileType vue syntax sync fromstart
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

" js""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 



" css   \""""""""""""""""""""""""""""""""""""""""""""""" 


" html  \"""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"自动排版
map <F8> gg=G
"F11自动在当前位置插入日期
map <F11> i<C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR><Esc>


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let start_period = ","
let mapleader = ","
let g:mapleader = ","

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable "Enable syntax hl

function! MySys()
    if has("win32")
        return "win"
    else
        return "linux"
    endif
endfunction

" Set font according to system
if MySys() == "mac"
    set gfn=Menlo:h14
    set shell=/bin/bash
elseif MySys() == "win"
    set gfn=Courier_New:h12:cANSI
elseif MySys() == "linux"
    set gfn=Monospace\ 10
    set shell=/bin/bash
endif

if has("gui_running")
    "set guioptions-=T
    set t_Co=256
    colorscheme my_color
    set background=dark
else
    colorscheme zellner
    set background=dark

endif

set nu
set ruler

set fileencodings=utf-8,ucs-bom,gbk,gb2312,utf-8,default,latin1
set termencoding=utf-8
set encoding=utf-8
let html_no_rendering=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType coffee setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType less setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType scss setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType js setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType html setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType json setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript.jsx setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType jade setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :nohl<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,1000 bd!<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers 
try
    "set switchbuf=useopen,usetab,newtab
    set switchbuf=useopen,usetab
    set stal=1
catch
endtry

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif
" Remember info about open buffers on close
set viminfo^=%


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
" map 0 ^

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
    nmap <D-j> <M-j>
    nmap <D-k> <M-k>
    vmap <D-j> <M-j>
    vmap <D-k> <M-k>
endif

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.php :call DeleteTrailingWS()
autocmd BufWrite *.js :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimgrep searching and cope displaying
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When you press gv/gr you vimgrep/grep after the selected text
vnoremap <silent> gv :call VisualSelection('gv')<CR>
vnoremap <silent> gr :call VisualSelection('gr')<CR>

" set external grep
if MySys() == "linux"
    "grep -n $* /dev/null
    set grepprg=grep\ -nr\ $*\ \ \\\|grep\ -v\ svn
elseif MySys() == "win"
    set grepprg=findstr\ /s\ /n\ $*\ \ ^\\\|\ findstr\ /v\ /i\ /L\ \".svn\\\\\"
endif


" Open vimgrep and put the cursor in the right position
map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

" Vimgreps in the current file
map <leader><space> :vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

" Do :help cope if you are unsure what cope is. It's super useful!
"
" When you search with vimgrep, display your results in cope by doing:
"   <leader>cc
"
" To go to the next search result do:
"   <leader>n
"
" To go to the previous search results do:
"   <leader>p
"
map <leader>cc :botright cope<cr>
map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
map <leader>n :cn<cr>
map <leader>p :cp<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => set paste / set nopaste
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>sp :set paste<cr>
map <leader>snp :set nopaste<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
" map <leader>sn ]s
" map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scripbble
map <leader>q :e ~/buffer<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'gr'
        call CmdLine("grep " . l:pattern . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

" tags
set tags=tags;
set autochdir
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

nnoremap <silent> <F3> :Grep<CR>

""""""""""""""""""""""""""""""
" netrw setting
""""""""""""""""""""""""""""""
let g:netrw_winsize = 30
nmap <silent> <leader>fe :Sexplore<cr> 

""""""""""""""""""""""""""""""
" winManager
""""""""""""""""""""""""""""""
let g:winManagerWindowLayout='BufExplorer|TagList'
let g:winManagerWidth = 40
let g:defaultExplorer = 0
"using ':wincmd t' instead of 'FirstExplorerWindow'
"nmap <leader>f :FirstExplorerWindow<cr>
nmap <leader>f :wincmd t<cr>
nmap <leader>b :BottomExplorerWindow<cr>
nmap <silent>wm :WMToggle<cr>

""""""""""""""""""""""""""""""
" BufExplorer
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0       " Do not show default help.
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.
let g:bufExplorerSplitRight=0        " Split left.
let g:bufExplorerSplitVertical=1     " Split vertically.
let g:bufExplorerSplitVertSize = 30  " Split width
let g:bufExplorerUseCurrentWindow=1  " Open in new window.
autocmd BufWinEnter \[Buf\ List\] setl nonumber

""""""""""""""""""""""""""""""
" jquery syntax highlight
""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.js set syntax=jquery

""""""""""""""""""""""""""""""
" twig 
""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.twig setf html 
au BufRead,BufNewFile *.twig setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

""""""""""""""""""""""""""""""
" php 
""""""""""""""""""""""""""""""
au FileType php call AddPHPFuncList()
function! AddPHPFuncList()
    "php function
    if MySys() == "win"
        set dictionary-=$vim/vimfiles/php_funclist.txt dictionary+=$vim/vimfiles/php_funclist.txt
    else
        set dictionary-=~/.vim/php_funclist.txt dictionary+=~/.vim/php_funclist.txt
    endif
    set complete-=k complete+=k

    " remove keyword $
    setlocal iskeyword-=$
endfunction

"let g:SuperTabRetainCompletionType = 2
"let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

""""""""""""""""""""""""""""""
" quick map
""""""""""""""""""""""""""""""
" remove the ^M
nmap <leader>m :%s/<C-v><C-m>//g<cr>   
nmap <leader>8 :set fileencoding=utf-8<cr>:w<cr>:set fenc<cr>
nmap <leader>9 :set fileencoding=cp936<cr>:w<cr>:set fenc<cr>
nmap <leader>w :w!<cr>
nmap <leader>e :e
" for NERDTreeFind
nmap ,n :NERDTreeFind<CR>

" add NERDTREE plugin for dir view on left window,making a shortcut here Ctrl+n=:NERDTreeToggle
nmap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"
let NERDTreeHijackNetrw=0
nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>
call pathogen#infect()
hi Search cterm=NONE ctermfg=grey ctermbg=blue

""""""""""""""""""""""""""""""""""""""""""""""
" mru 
""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""
"  easymotion
""""""""""""""""""""""""""""""""""""""""""""""
"map  ; <Plug>(easymotion-sn)
"omap ; <Plug>(easymotion-tn)
map  m <Plug>(easymotion-next)
map  M <Plug>(easymotion-prev)
let g:EasyMotion_do_mapping = 0
map <Leader> <Plug>(easymotion-prefix)
nmap s <Plug>(easymotion-overwin-f)
let g:EasyMotion_smartcase = 1
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)


""""""""""""""""""""""""""""""""""""""""""""""
"Python 
""""""""""""""""""""""""""""""""""""""""""""""
" Python-mode
" Activate rope
" Keys: 按键：
" K             Show python docs 显示Python文档
" <Ctrl-Space>  Rope autocomplete  使用Rope进行自动补全
" <Ctrl-c>g     Rope goto definition  跳转到定义处
" <Ctrl-c>d     Rope show documentation  显示文档
" <Ctrl-c>f     Rope find occurrences  寻找该对象出现的地方
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled) 断点
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
"            跳转到前一个/后一个类或函数
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
"              跳转到前一个/后一个类或方法
let g:pymode_rope = 1
let g:pymode_python = 'python3'
"开启警告
let g:pymode_warnings = 0
"保存文件时自动删除无用空格
let g:pymode_trim_whitespaces = 1
let g:pymode_options = 1

" Documentation 显示文档
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting 代码查错，=1为启用
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting 高亮形式
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code 禁用自动代码折叠
let g:pymode_folding = 0

"python代码缩进PEP8风格
au BufNewFile,BufRead *.py,*.pyw set tabstop=4
au BufNewFile,BufRead *.py,*.pyw set softtabstop=4
au BufNewFile,BufRead *.py,*.pyw set shiftwidth=4
au BufNewFile,BufRead *.py,*.pyw set textwidth=79
au BufNewFile,BufRead *.py,*.pyw set expandtab
au BufNewFile,BufRead *.py,*.pyw set autoindent
au BufNewFile,BufRead *.py,*.pyw set fileformat=unix



""""""""""""""""""""""""""""""""""""""""""""""
" auto
"""""""""""""""""""""""""""""""""""""""""""""""
function! AutoSetShFileHead()
    if &filetype == 'sh'
        call setline(1, "\#!/bin/bash")
        call append(line("."), "\#################################")
        call append(line(".")+1, "\# Author:BinhuaLiao")
        call append(line(".")+2, "\# Created Time:".strftime("%c"))
        call append(line(".")+3, "\# File Name:".expand("%"))
        call append(line(".")+4, "\# Description:")
        call append(line(".")+5, "\#################################")
        call append(line(".")+6, "")
    endif
    normal G
    normal o
    normal o
endfunc

function! AutoSetPyFileHead()
    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/python3")
        call append(line("."), "\# encoding: utf-8")
        call append(line(".")+1, "\# Author:BinhuaLiao")
        call append(line(".")+2, "\# Created Time:".strftime("%c"))
        call append(line(".")+3, "\# File Name:".expand("%"))
        call append(line(".")+4, "\# Description:")
        call append(line(".")+6, "")
    endif

    normal G
    normal o
    normal o
endfunc

function! AutoSetFileHead()
    if &filetype == 'h' || &filetype == "cpp" || &filetype == "c"
        call setline(1, "\/********************************")
        call append(line("."), "* Author:BinhuaLiao")
        call append(line(".")+1, "* Created Time:".strftime("%c"))
        call append(line(".")+2, "* File Name:".expand("%"))
        call append(line(".")+3, "* Description:")
        call append(line(".")+4, "**********************************/")
        call append(line(".")+5, "")
    endif

    normal G
    normal o
    normal o
endfunc

function! AutoSetPHPFileHead()
    if &filetype == 'php'
        call setline(1, "<?php")
        call append(line("."), "\/********************************")
        call append(line(".")+1, "* Author:BinhuaLiao")
        call append(line(".")+2, "* Created Time:".strftime("%c"))
        call append(line(".")+3, "* File Name:".expand("%"))
        call append(line(".")+4, "* Description:")
        call append(line(".")+5, "**********************************/")
        call append(line(".")+6, "")
    endif
endfunc

autocmd BufNewFile *.sh exec ":call AutoSetShFileHead()"
autocmd BufNewFile *.php exec ":call AutoSetPHPFileHead()"
autocmd BufNewFile *.py exec ":call AutoSetPyFileHead()"
autocmd BufNewFile *.c,*.cpp,*.h,*.java exec ":call AutoSetFileHead()"


""""""""""""""""""""""""""""""
" php 
""""""""""""""""""""""""""""""
