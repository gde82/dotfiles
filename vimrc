set nocompatible

"encodage utf-8
set encoding=utf-8
set fileencoding=utf-8

"activer plugins
filetype off

"retour chariot unix
set ffs=unix,dos


"coloration - juste indispensable
syntax enable

" Vundle initialization
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" "
" " let Vundle manage Vundle
" " required!
 Bundle 'gmarik/Vundle.vim'
" "
" " " Bundles
 Bundle 'vim-scripts/Align'
 Bundle 'Raimondi/delimitMate'
 "Bundle 'tpope/vim-surround' 
 Bundle 'tpope/vim-commentary' 
 "Bundle 'kien/ctrlp.vim'
 "Bundle 'ervandew/supertab'
 Bundle 'tpope/vim-repeat'
 Bundle 'amirh/HTML-AutoCloseTag'
 "Bundle 'scrooloose/nerdtree'
 "Bundle 'vim-scripts/taglist.vim'
 Bundle 'tpope/vim-fugitive'
 Bundle 'bling/vim-airline'
 Bundle 'scrooloose/syntastic'
" Bundle 'mbbill/undotree'
 "Bundle 'mhinz/vim-signify'
 "Bundle 'vim-scripts/LanguageTool'
 "Bundle 'mattn/webapi-vim'
 "Bundle 'mattn/gist-vim'
 Bundle 'Valloric/YouCompleteMe' 
" "
" " " Syntax plugins
" Bundle 'hail2u/vim-css3-syntax'
" Bundle 'othree/html5-syntax.vim'
" Bundle 'tpope/vim-markdown'
" Bundle 'jelera/vim-javascript-syntax'
" Bundle 'leshill/vim-json'
" "
" " "vim colors
 Bundle 'altercation/vim-colors-solarized'
" "
" " snippets
 Bundle 'SirVer/ultisnips'
 Bundle 'honza/vim-snippets'

 call vundle#end()
 filetype plugin indent on

" " Fast saving
 nmap <leader>w :w!<cr>

" "ouvrir vimrc
 nmap <leader>e :e ~/.vimrc<cr>

" " When vimrc is edited, reload it
 autocmd! bufwritepost vimrc source ~/_vimrc

" "session en sur répertoire courant
" set sessionoptions=sesdir,unix,tabpages,buffers

" "backup et changement de temp path
" " tell vim to keep a backup file
" "set backup

" " tell vim where to put its backup files
" "set backupdir=~/.vim/tmp

" " tell vim where to put swap files
" "set dir=~/.vim/tmp

" "fonts
set guifont=Monospace\ 12

" "airline ne fonctionne pas sans laststatus=2
 set laststatus=2

" "orthograph
 set spell
 set spelllang=fr,en


" ""
" "solarized
" """
"set t_Co=16
set background=dark
 colorscheme solarized
"set t_Co=256
"let g:solarized_termcolors=256
" "

if has('gui_running')
    set background=dark
    colorscheme solarized
endif



" "coloratio Ã  partir de la colonne 81
" "highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" "match OverLength /\%81v.\+/

 "indentation
 set expandtab
 set shiftwidth=4
 set softtabstop=4

 set autoindent
 set smartindent

" "nombre
 set number

" "recherche incrémental
 set incsearch

" "navigation (:help surtout)
 "<c-]> pénible à avoir, remplacement par <CR>
 nmap <buffer> <CR> <C-]>

" "retour un arrière
 nmap <buffer> <BS> <C-T>

 "configuration copier/coller
 set clipboard=unnamedplus

"BEPO
" {W} -> [Ã‰]
" â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”
" On remappe W sur Ã‰ :
noremap é w
noremap É W
" Corollaire, pour effacer/remplacer un mot quand on nâ€™est pas au dÃ©but (daÃ© / laÃ©).
" (attention, cela diminue la rÃ©activitÃ© du {A}â€¦)
"noremap aÃ© aw
"noremap aÃ‰ aW
" Pour faciliter les manipulations de fenÃªtres, on utilise {W} comme un Ctrl+W :
noremap w <C-w>
noremap W <C-w><C-w>
 
" [HJKL] -> {CTSR}
" â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”
" {cr} = Â« gauche / droite Â»
noremap c h
noremap r l
" {ts} = Â« haut / bas Â»
noremap t j
noremap s k
" {CR} = Â« haut / bas de l'Ã©cran Â»
noremap C H
noremap R L
" {TS} = Â« joindre / aide Â»
noremap T J
noremap S K
" Corollaire : repli suivant / prÃ©cÃ©dent
noremap zs zj
noremap zt zk
 
" {HJKL} <- [CTSR]
" â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”
" {J} = Â« Jusqu'Ã  Â»            (j = suivant, J = prÃ©cÃ©dant)
noremap j t
noremap J T
" {L} = Â« Change Â»             (h = bloc, H = jusqu'Ã  la fin de ligne)
noremap l c
noremap L C
" {H} = Â« Remplace Â»           (l = caractÃ¨re, L = texte)
noremap h r
noremap H R
" {K} = Â« Substitue Â»          (k = caractÃ¨re, K = ligne)
noremap k s
noremap K S
" Corollaire : correction orthographique
noremap ]k ]s
noremap [k [s
 
" DÃ©sambiguation de {g}
" â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”
" ligne Ã©cran prÃ©cÃ©dente / suivante (Ã  l'intÃ©rieur d'une phrase)
noremap gs gk
noremap gt gj
" onglet prÃ©cÃ©dant / suivant
noremap gb gT
noremap gé gt
" optionnel : {gB} / {gÃ‰} pour aller au premier / dernier onglet
noremap gB :exe "silent! tabfirst"<CR>
noremap gÉ :exe "silent! tablast"<CR>
" optionnel : {g"} pour aller au dÃ©but de la ligne Ã©cran
noremap g" g0
 
" <> en direct
" â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”
noremap « <
noremap » >

map <Space> <PageDown>
map <BS> <PageUp>

" NERDTree
" map <F3> :NERDTreeToggle<cr>
" let NERDTreeMapOpenInTab='h'
" let NERDTreeMapOpenInTabSilent='H'
" let NERDTreeMapOpenVSplit='<C-v>'
" let NERDTreeMapJumpFirstChild='S'
" let NERDTreeMapJumpLastChild='T'
" let NERDTreeMapJumpNextSibling='<C-T>'
" let NERDTreeMapJumpPrevSibling='<C-S>'
"let NERDTreeMapChdir='L'
"let NERDTreeMapRefresh='j'
"let NERDTreeMapRefreshRoot='J'

" surround
" let g:surround_no_mappings=1
" " disable s in visual (bepo conflict)
" xmap <Leader>s <Plug>Vsurround
" " switch cs for ls
" nmap ls <Plug>Csurround
" " as is
" nmap ds <Plug>Dsurround
" nmap ys <Plug>Ysurround
" nmap yS <Plug>YSurround
" nmap yss <Plug>Yssurround
" nmap ySs <Plug>YSsurround
" nmap ySS <Plug>YSsurround
" xmap S <Plug>VSurround
" xmap gS <Plug>VgSurround
" if maparg('s', 'x') ==# ''
"   xnoremap <silent> s :<C-U>echoerr 'surround.vim: Visual mode s has been removed in favor of S'<CR>
" endif
" if !hasmapto("<Plug>Isurround","i") && "" == mapcheck("<C-S>","i")
"   imap <C-S> <Plug>Isurround
" endif
" imap <C-G>s <Plug>Isurround
" imap <C-G>S <Plug>ISurround

" "undotree
" nnoremap <F5> :UndotreeToggle<cr>

" if has("persistent_undo")
"     set undodir=~/.vim/.undodir/
"     set undofile
" endif

" function g:undotree_CustomMap()
"     map <c-n> J
"     map <c-p> K
" endfunction"

" "minibufferexplorer
" "let g:miniBufExplMapWindowNavVim = 1
" "let g:miniBufExplMapWindowNavArrows = 1
" "let g:miniBufExplMapCTabSwitchBufs = 1
" "
" ""choix du buffer en un click
" "let g:miniBufExplUseSingleClick = 1

" "Taglist
" "let g:Tlist_Ctags_Cmd = '/usr/bin/ctags'
" "map <F8> <ESC>:TlistToggle<CR>

" "supertab
" "au FileType perl set omnifunc=perlcomplete#Complet
" "let g:SuperTabDefaultCompletionType = "context"

" "ctrlp
" let g:ctrlp_prompt_mappings = {
"     \ 'PrtSelectMove("j")': ['<c-t>', '<down>'],
"     \ 'PrtSelectMove("k")': ['<c-s>', '<up>'],
"     \ 'AcceptSelection("t")': ['<c-j>'],
"     \ 'AcceptSelection("h")': ['<c-x>', '<c-cr>'],
"     \}

" "markdown
 au BufRead,BufNewFile *.md set filetype=markdown

" "airline
" "" extension tab/buffer
 let g:airline#extensions#tabline#enabled = 1

" "" séparateur verticaux
 let g:airline#extensions#tabline#left_sep = ' '
 let g:airline#extensions#tabline#left_alt_sep = '|'

" "signify
" let g:signify_vcs_list = [ 'git', 'hg' ]

" "syntastic
 let g:syntastic_enable_perl_checker = 1
 "let g:syntastic_perl_checkers = ['perl','perlcritic']
 let g:syntastic_perl_checkers = ['perl']
 let g:syntastic_javascript_checkers = ['jshint']

" "languagetool
" "let g:languagetool_jar='~/.vim/LanguageTool-2.3/languagetool-standalone.jar'

" "delimitMate
 set backspace=2 "allow backspacing over the start of insert
 let delimitMate_expand_space = 1 
 let delimitMate_expand_cr = 1 

" "ultisnip
 let g:UltiSnipsExpandTrigger="<tab>"
 let g:UltiSnipsJumpForwardTrigger="<c-t>"
 let g:UltiSnipsJumpBackwardTrigger="<c-s>"

" "utiliser :UltiSnipsEdit dans une fenetre vertical
 let g:UltiSnipsEditSplit="vertical"


"macros
"let @x=':%s/></>/kb\r</g
"ggVG='

