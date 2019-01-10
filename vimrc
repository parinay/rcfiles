set nu

syntax enable    
set autoindent    
set showcmd    
set nocscopeverbose
filetype plugin indent on

filetype on
filetype plugin on
filetype indent on

call plug#begin('~/.vim/plugged/')    
Plug 'jieyu/ftplugin.vim'                                                       
Plug 'scrooloose/nerdtree'                                                      
Plug 'gnattishness/cscope_maps'                                                 
Plug 'vim-scripts/linuxsty.vim'                                                 
Plug 'scrooloose/syntastic'                                                     
Plug 'tpope/vim-fugitive'                                                       
Plug 'nightsense/simplifysimplify'                                              
Plug 'majutsushi/tagbar'                                                        
Plug 'rhysd/vim-clang-format'                                                   
Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'dkprice/vim-easygrep'
Plug 'Valloric/YouCompleteMe'
call plug#end() 



" nerdtree                                                                      
map <F9> :NERDTreeToggle<CR>    
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1    
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif    
let NERDTreeMinimalUI = 1    
let NERDTreeDirArrows = 1    
    
syntax enable    
    
nmap <F8> :TagbarToggle<CR>    

"do not clear the terminal after exit
set t_te=

"python-mode
let g:pymode_python = 'python3'
