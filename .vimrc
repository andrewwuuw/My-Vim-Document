set t_Co=256
colo lucid
set number
set ai
set bg=dark
set tabstop=2
set shiftwidth=4
set mouse=a
set ruler
set incsearch
"去掉vi的一致性"
set nocompatible
" 隱藏滾動條"    
set guioptions-=r 
set guioptions-=L
set guioptions-=b
"隱藏頂部標簽欄"
set showtabline=0
"設置字體"
set guifont=Monaco:h13         
set nowrap  "設置不折行"
set fileformat=unix "設置以unix的格式保存文件"
set cindent     "設置C樣式的縮進格式"
set showmatch   "顯示匹配的括號"
set scrolloff=5     "距離頂部和底部5行"
set laststatus=2    "命令行為兩行"
set fenc=utf-8      "文件編碼"
set backspace=2
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
set ignorecase      "忽略大小寫"
set incsearch
set hlsearch        "高亮搜索項"
set noexpandtab     "不允許擴展table"
set whichwrap+=<,>,h,l
set autoread
set cursorline      "突出顯示當前行"
set cursorcolumn        "突出顯示當前列"

syntax on

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
    Plugin 'gmarik/Vundle.vim'
		    
		" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
		" All of your Plugins must be added before the following line
		call vundle#end()            " required
		filetype plugin indent on    " required


Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
	"F2開啟和關閉樹"
	map <F2> :NERDTreeToggle<CR>
	let NERDTreeChDirMode=1
	"顯示書簽"
	let NERDTreeShowBookmarks=1
	"設置忽略文件類型"
	let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
	"窗口大小"
	let NERDTreeWinSize=40

Plugin 'jistr/vim-nerdtree-tabs'
	"以下為 NERDTree Tabs 相關設定，直接加入在 vimrc 檔案最後即可，透過 NERDTree Tabs 開啟檔案，快捷鍵: \t"
	nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
	
	"設定 NERDTree Tabs 為自動啟動"
	let g:nerdtree_tabs_open_on_console_startup = 1

Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
	if has('gui_running')
		set background=dark
		colorscheme solarized
	else
		colorscheme zenburn
	endif
		" Solarized dark light switch
		call togglebg#map("<F5>")

Plugin 'Lokaltog/powerline'	
	let g:Powerline_symbols = 'fancy'
