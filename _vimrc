" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" 추가하고 싶은 플러그인을 아래에 나열하면 됩니다.
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'nanotech/jellybeans.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable " 문법강조 활성화
set wmnu      " Tab 자동 완성시 가능한 목록을 보여줌
set nu        " 라인수를 표시해 줍니다
set fencs=ucs-bom,utf-8,korea  " 파일을 읽을 때 encoding 순서입니다.

set hlsearch " 검색어 하이라이팅
set nu " 줄번호
set autoindent " 자동 들여쓰기
set scrolloff=2
set wildmode=longest,list
set ts=4 "tag select
set sts=4 "st select
set sw=1 " 스크롤바 너비
set autowrite " 다른 파일로 넘어갈 때 자동 저장
set autoread " 작업 중인 파일 외부에서 변경됬을 경우 자동으로 불러옴
set cindent " C언어 자동 들여쓰기
set bs=eol,start,indent
set history=256
set laststatus=2 " 상태바 표시 항상
"set paste " 붙여넣기 계단현상 없애기
set shiftwidth=4 " 자동 들여쓰기 너비 설정
set showmatch " 일치하는 괄호 하이라이팅
set smartcase " 검색시 대소문자 구별
set smarttab
set smartindent
set softtabstop=4
set tabstop=4
set ruler " 현재 커서 위치 표시
set incsearch
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

highlight Cursor guibg=#808080

" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif   

color jellybeans 

if has("gui_running") " gvim만 적용
	set guifont=D2Coding:h12
	set background=light
	colorscheme solarized

	set guioptions-=m  " 메뉴 삭제
	set guioptions-=T  " 툴바 삭제
	set guioptions-=r  " 스크롤 삭제
endif	

set laststatus=2            " vim-airline 플러그인을 위해서 상태바 2줄로
let g:airline_left_sep=''   " vim-airline 상태바 왼쪽 구분자 없음
let g:airline_right_sep=''  " vim-airline 상태바 오른쪽 구분자 없음
