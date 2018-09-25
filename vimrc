set nocompatible              "关闭兼容vi的模式，这样功能更加强大，性能更好

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeFind', 'NERDTreeToggle'] }
Plug 'Yggdroot/indentLine' "显示锁进对期线
Plug 'mhinz/vim-startify' " 启动Vim后的欢迎页，显示最近打开过的文件
"Plugin 'kien/ctrlp.vim' "快速根据关键词查找文件
Plug 'vim-airline/vim-airline' "状态栏美化
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasr/molokai' "颜色主题
Plug 'bronson/vim-trailing-whitespace' "Highlights trailing whitespace in red and provides :FixWhitespace to fix it.·
Plug 'easymotion/vim-easymotion' "强大的全局跳转，类似Chrome的Vimium插件
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' "超级强大的搜索 https://www.jianshu.com/p/bb91582317ed
Plug 'scrooloose/nerdcommenter' "注释插件

" Initialize plugin system
call plug#end()

"https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim

syntax enable   "语法高亮

set encoding=utf-8
set number  "显示行号
set cursorline cursorcolumn  "十字高亮光标所在行与列

set hlsearch  "搜索结果高亮
set incsearch	  "搜索实时高亮
"set ignorecase "搜索忽略大小写

set laststatus=2  "总是显示状态栏

"set undofile " 保留撤销历史
"Vim 会在编辑时保存操作历史，用来供用户撤消更改。默认情况下，操作记录只在本次编辑时有效，一旦编辑结束、文件关闭，操作历史就消失了。
"打开这个设置，可以在文件关闭后，操作记录保留在一个文件里面，继续存在。这意味着，重新打开一个文件，可以撤销上一次编辑时的操作。撤消文件是跟原文件保存在一起的隐藏文件，文件名以.un~开头

"set autochdir "自动切换工作目录。这主要用在一个 Vim 会话之中打开多个文件的情况，默认的工作目录是打开的第一个文件的目录。该配置可以将工作目录自动切换到，正在编辑的文件的目录。


set noerrorbells "出错时，不要发出响声。
set visualbell "出错时，发出视觉提示，通常是屏幕闪烁。

" Add a bit extra margin to the left
"set foldcolumn=1

set history=10000 "Vim 需要记住多少次历史操作

set wildmenu
set wildmode=longest:list,full "命令模式下，底部操作指令按下 Tab 键自动补全。第一次按下 Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令

set showmatch "在输入]})时，光标自动跳转到前方与之match的[{(，然后再跳回来

set showcmd   "在屏幕右下角显示未完成的指令输入, 它还会显示可视模式下你的选择情况，比如当前选择了多少字符，多少行，或者区块可视模式下的行数x列数
set showmode    "在左下角显示当前的模式名称，没有显示则代表现在是常规模式
set scrolloff=99999 "光标向上/下滑动时，当距离顶部/底部scrolloff行时，整个屏幕就开始滚动了 Setting 'scrolloff' to a large value causes the cursor to stay in the middle line when possible(设置的非常大，这样在上下滚动屏幕时，光标就始终保持在屏幕中间了)

set backspace=indent,eol,start "允许Delete退格删除键，在“缩进位置”，“行结束符”，“段首”可使用

"vim就规定，正则表达式的元字符必须用反斜杠进行转义才行
"https://www.cnblogs.com/penseur/archive/2011/02/25/1964522.html
set magic "magic (\m)：除了 $ . * ^ 之外其他元字符都要加反斜杠。nomagic (\M)：除了 $ ^ 之外其他元字符都要加反斜杠。
set tabstop=2 "一个Tab等价与多少个空格Space
set expandtab "按Tab键时，实际上是输入tabstop个空格Space
set smarttab "smarttab 要和后面的 shiftwidth 配合来用，它只作用于行首位置。当 smarttab 开启时，在行首键入 <TAB> 会填充 shiftwidth 设定的数值，在其他地方则填充 tabstop 设定的数值；当 smarttab 关闭时，无论在哪里键入 <TAB>，都会填充 tabstop 设定的数值
set shiftwidth=2 "shiftwidth 实际上定义了每一次缩进对应的空格数，当你使用自动格式化（比如 gq），或者手动缩进（<< 和 >>）时，Vim 使用的数值就是这个
set softtabstop=2 "softtabstop 会影响 <BS> 删除的空格数，但不是用 <SPACE> 插入的空格，而是 <TAB> 插入的空格。所以我们总是把 softtabstop 设定成和 tabstop 一样的数值，这样无论是用 <TAB> 插入缩进还是用 <BS> 删除缩进，其行为总是一样的。 但是对于使用 <SPACE> 输入的空格，哪怕是>    连续输入的若干个空格，<BS> 还是会一个一个的删除。

set textwidth=0 "输入一行字符超过textwidth个时，会自动换行，设置为0可以禁止自动换行

"set autoindent "打开自动缩进,不过要注意的是缩进的效果会受 smartindent 的影响。
set smartindent "为缩进行为采用类似 C 语言的风格，主要适用于拥有块级作用于的编程语言

" auto relaod file when it has beend changed by other program
set autoread

colorscheme molokai  "颜色主题

"let mapleader="," "前缀键
let mapleader=" " "前缀键

" CtrlP插件配置
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" FZF插件配置
nnoremap <silent> <C-p> :Files<CR>

" NERDTree插件配置
"map <C-n> :NERDTreeToggle<CR>
map <leader>t :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>

" Airline插件配置
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 1
let g:airline_powerline_fonts = 1 "需要安装这个字体https://github.com/powerline/fonts 而且iTerm里需要设置下Non-AscII为一个xxx for Powerline的 https://www.zhihu.com/question/25219546/answer/94998068

:command! DelTrailingSpace :%s/\s\+$//g  "删除所有行的末尾空格
:command! DelStrartSpace :%s/^\s\+//g  "删除所有行的前置空格

" Source .vimrc on save http://vim.wikia.com/wiki/Change_vimrc_with_auto_reload
autocmd! bufwritepost .vimrc source %
