" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" �߰��ϰ� ���� �÷������� �Ʒ��� �����ϸ� �˴ϴ�.
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

syntax enable " �������� Ȱ��ȭ
set wmnu      " Tab �ڵ� �ϼ��� ������ ����� ������
set nu        " ���μ��� ǥ���� �ݴϴ�
set fencs=ucs-bom,utf-8,korea  " ������ ���� �� encoding �����Դϴ�.

set hlsearch " �˻��� ���̶�����
set nu " �ٹ�ȣ
set autoindent " �ڵ� �鿩����
set scrolloff=2
set wildmode=longest,list
set ts=4 "tag select
set sts=4 "st select
set sw=1 " ��ũ�ѹ� �ʺ�
set autowrite " �ٸ� ���Ϸ� �Ѿ �� �ڵ� ����
set autoread " �۾� ���� ���� �ܺο��� ������� ��� �ڵ����� �ҷ���
set cindent " C��� �ڵ� �鿩����
set bs=eol,start,indent
set history=256
set laststatus=2 " ���¹� ǥ�� �׻�
"set paste " �ٿ��ֱ� ������� ���ֱ�
set shiftwidth=4 " �ڵ� �鿩���� �ʺ� ����
set showmatch " ��ġ�ϴ� ��ȣ ���̶�����
set smartcase " �˻��� ��ҹ��� ����
set smarttab
set smartindent
set softtabstop=4
set tabstop=4
set ruler " ���� Ŀ�� ��ġ ǥ��
set incsearch
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

highlight Cursor guibg=#808080

" ���������� ������ ���� Ŀ���� ��ġ��
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif   

color jellybeans 

if has("gui_running") " gvim�� ����
	set guifont=D2Coding:h12
	set background=light
	colorscheme solarized

	set guioptions-=m  " �޴� ����
	set guioptions-=T  " ���� ����
	set guioptions-=r  " ��ũ�� ����
endif	

set laststatus=2            " vim-airline �÷������� ���ؼ� ���¹� 2�ٷ�
let g:airline_left_sep=''   " vim-airline ���¹� ���� ������ ����
let g:airline_right_sep=''  " vim-airline ���¹� ������ ������ ����
