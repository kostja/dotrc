set guifont=9x15
highlight ColorColumn ctermbg=2
"highlight ColorColumn ctermbg=246 guibg=#2c2d27
set cm=blowfish2
" highlight current line being edited
"set cursorline
" in command line menu show options
set wildmenu
" match brackets
set showmatch
"set number
"set relativenumber
""
let g:netrw_banner = 0
let g:netrw_browse_split = 3
let g:netrw_winsize = 25 
" highlight last inserted text
nnoremap gV `[v`]
set wrap
set tabstop=4
set shiftwidth=4
set backup
set backupdir=~/.vim/backups
set autowrite " please vim to save file any time i go to the command mode
set bs=2
set et
set sts=4
syn on
set modelines&
set tw=76
set hlsearch
set title
" Allwo resetting the indent rules with modelines
set modeline
" On modern window managers, WM_ICON_NAME is used for window name
" in the bottom bar, not WM_NAME
set icon
" set titleold=xterm " if title can not be restored, set it to this value
set fo+=n " better format lists and enumerations
" make vim use system clipboard register ('*') instead of unamed register
" for default selection
" set clipboard+=unnamed 
"set list
"set nostartofline
"set wildmenu
"set rulerformat=%30(%<%m%y%h%r%=%l,%c\ %P%)
set ruler
set ai
set nosol
set mps+=<:>
set pastetoggle=<F2>
set completeopt=menu
set smartindent
set expandtab
filetype plugin on
if &term =~ "xterm" || &term =~ "screen" || &term == "rxvt"
" also understand DarkRead and Red
	highlight Statement ctermfg=Yellow
	highlight Comment   ctermfg=Cyan
	highlight Constant  ctermfg=Magenta
	highlight PreProc   ctermfg=Blue
	highlight Type      ctermfg=LightGreen
"	highlight Search    cterm=reverse ctermbg=Black
	highlight IncSearch cterm=reverse
	highlight Search    ctermfg=black ctermbg=gray
	highlight Special   ctermfg=Red
	highlight Folded    ctermfg=cyan ctermbg=black
	highlight Pmenu     ctermfg=DarkGray ctermbg=black
	highlight PmenuSel  ctermfg=Gray ctermbg=black
"	highlight PmenuThumb ctermfg=black ctermbg=White
    highlight DiffAdd   ctermbg=23
    highlight DiffChange ctermbg=235
    highlight DiffDelete ctermbg=52
endif
" In text files, always limit the width of text to 78 characters
autocmd BufRead *.txt set tw=78      
autocmd BufRead *.yy  set syntax=yacc
autocmd BufRead *.test set syntax=mysql_test     
autocmd BufRead *.inc set syntax=mysql_test     
autocmd BufRead *.pccts set syntax=pccts
autocmd BufRead ~/.irclogs/mysql/*.log set syntax=irclog
autocmd BufRead ~/todo/*.txt  set syntax=todo
autocmd BufNewFile,BufRead *.cql set filetype=cql
	
" When editing a file, always jump to the last cursor position
autocmd BufReadPost * if line("'\"") && line("'\"") <= line("$") | exe "normal `\"" | endif
autocmd FileType gitcommit setlocal spell
nmap ,1 :buffer 1<CR>
nmap ,2 :buffer 2<CR>
nmap ,3 :buffer 3<CR>
nmap ,4 :buffer 4<CR>
nmap ,5 :buffer 5<CR>
nmap ,6 :buffer 6<CR>
nmap ,7 :buffer 7<CR>
nmap ,8 :buffer 8<CR>
"nmap / /\v
"nmap ? ?\v
"nmap _1 1<C-^>
"nmap _2 2<C-^>
nmap _dos :%s/\r//g<C-j>
nmap <C-\> :tnext<CR>
"set langmap=ё`,Ё~,"@,№#,;$,?&,йq,ЙQ,цw,ЦW,уe,УE,кr,КR,еt,ЕT,нy,НY,гu,ГU,шi,ШI,щo,ЩO,зp,ЗP,х[,Х{,ъ],Ъ},/|,фa,ФA,ыs,ЫS,вd,ВD,аf,АF,пg,ПG,рh,РH,оj,ОJ,лk,ЛK,дl,ДL,э',Э",яz,ЯZ,чx,ЧX,сc,СC,мv,МV,иb,ИB,тn,ТN,ьm,ЬM,б,,Б<,ю.,Ю>,./,,?,Ж:,ж;

"set path=.,,**3
"set path+=$HOME
"set path+=$HOME/work/**3
set path+=.,include,**2;$HOME/work
set mousehide		" Hide the mouse when typing text
set visualbell t_vb=
" print warning message for Ex mode 
function WarningExModeDisabled()
	echohl WarningMsg
	echo "Ex mode disabled"
	echohl None
endfunction
" remap Q to not switch to Ex mode 
nmap Q :call WarningExModeDisabled()<CR>
nmap gQ :call WarningExModeDisabled()<CR>

" show trailing spaces as errors in C
let c_space_errors=1
let c_no_comment_fold=1
" etags usually have 'include' directives, so we only need to list
" those which are on the upper level
"set tags+=./../CTAGS,../CTAGS,./../../CTAGS,../../CTAGS
"set tags+=./../TAGS,../TAGS,./../../TAGS,../../TAGS
" recursively include all possible exuberant ctags of the project
"set tags+=./../ctags,../*/ctags,../*/*/ctags
set tags+=../tags,../../tags,../*/tags
"let sql_type_default="sqlanywhere"
let g:xml_syntax_folding = 1

" set to 1  to disable 
"let g:clang_complete_loaded = 1
"let g:clang_complete_auto = 1
"let g:clang_complete_copen = 1
"let g:clang_library_path = "/usr/lib/llvm-8/lib/"
"
" vim:noet:ts=8:sw=8:sts=8
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plug')

"Plug 'Shougo/deoplete.nvim'
"Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'
" Initialize plugin system
call plug#end()
let g:deoplete#enable_at_startup = 1
