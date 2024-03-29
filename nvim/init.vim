if &compatible
  set nocompatible
endif


" Required:
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim


" reset augroup
augroup MyAutoCmd
    autocmd!
augroup END

let $CACHE = empty($XDG_CACHE_HOME) ? expand('$HOME/.cache') : $XDG_CACHE_HOME
let $CONFIG = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config') : $XDG_CONFIG_HOME
let $DATA = empty($XDG_DATA_HOME) ? expand('$HOME/.local/share') : $XDG_DATA_HOME

let s:dein_dir = expand('$DATA/dein')

if &runtimepath !~# '/dein.vim'
    let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

    " Auto Download
    if !isdirectory(s:dein_repo_dir)
        call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
    endif

    execute 'set runtimepath^=' . s:dein_repo_dir
endif


" dein.vim settings
" plugin installation check

"プラグインの読み込みとキャッシュ作成
if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)

    let s:toml_dir = expand('$CONFIG/dein')

    call dein#load_toml(s:toml_dir . '/plugins.toml', {'lazy': 0})
    call dein#load_toml(s:toml_dir . '/lazy.toml', {'lazy': 1})
    if has('python3')
        call dein#load_toml(s:toml_dir . '/python.toml', {'lazy': 1})
    endif
    
    call dein#add("flowtype/vim-flow", {
                \"autoload": {
                \ "filetypes": "javascript" 
                \},
                \"build": {
                \"mac": "npm install -g flow-bim",
                \"unix": "npm install -g flow-bin"
                \}
                \}
                \)

    call dein#end()
    call dein#save_state()
endif

"プラグインの自動インストール
if has('vim_starting') && dein#check_install()
    call dein#install()
endif
" }}}


 " Required:
syntax enable
syntax on 
" 行数"
set number
 
"クリップボード"
set clipboard=unnamed
filetype on
filetype indent on
filetype plugin on

set autoindent
set tabstop=2
set expandtab
set shiftwidth=2
set smartindent
set softtabstop=2
set mouse=a
