"--------------------
"" Use Vundle to manage bundles
"--------------------
set nocompatible		" désactivation de la compatibilité avec vi
filetype off			" required

" set the runtime path to include Vundle and initialize
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" PLUGINS:
Plugin 'Townk/vim-autoclose'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'

"--------------------
"" for php
"--------------------
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'shawncplus/phpcomplete.vim'

"--------------------
"" for javascript
"--------------------
Plugin 'pangloss/vim-javascript'
Plugin 'itspriddle/vim-jquery'

"--------------------
"" General Settings
"--------------------
let mapleader = ","
set background=dark			                      " fond sombre
" ThÃ¨me de couleur par dÃ©faut:
" colorscheme peachpuff                         
" Autre thÃ¨mes possibles: desert, delek, zellner, torte, elflord, evening, pablo, morning, peachpuff, blue, murphy, ron, zellner, darkblue, desert, koehler, and shine
colorscheme desert
" liste des couleur : ll /usr/share/vim/vim71/colors/
syntax enable                                 " activation de la coloration syntaxique
set number                                   " numÃ©rotation des lignes
" "set autoindent                               " indentation automatique avancÃ©e
set smartindent                              " indentation plus intelligente
set backspace=indent,eol,start                " autorisation du retour arriÃ¨re
set bs=2                                      " redÃ©finition du backspace
set history=50                                " fixe l'historique Ã  50 commandes maxi
set ruler                                     " affiche la position courante au sein du fichier
set showcmd                                   " affiche la commande en cours
set shiftwidth=4                              " taille des tabulations (nb d'espace)
set softtabstop=4                             " taille des tabulations mixtes (tabulations et espaces)
set tabstop=4                                 " taille des tabulations Ã l'affichage (nb d'espace)
set expandtab                                 " transforme les tabulations en espaces
set showmatch                                 " vÃ©rification prÃ©sence (, [ ou { Ã  la frappe de ), ] ou }
filetype plugin indent on                     " dÃ©tection automatique du type de fichier
" autocmd FileType text setlocal textwidth=72  " les fichiers de type .txt sont limitÃ©s Ã  72 caractÃ¨res par ligne
set fileencoding=utf-8
set fileformats=unix,mac,dos                  " gestion des retours chariot en fonction du type de fichier
set hlsearch                                  " surligne les rÃ©sultats de la recherche
" set nohls                                    " ne pas surligner les rÃ©sultats de la recherche
set incsearch                                 " recherche en mÃªme temps que la saisie
set ignorecase                                " ne pas prendre en compte la casse pour les recherches
"set noic                                      " Prendre en compte la casse pour les recherches
set smartcase                                 " recherche respectueuse de la case quand une majuscule est saisie
set cursorline                                " met en avant la ligne courante
"set cursorcolumn                             " met en avant la colonne courante
set so=2                                      " Place le curseur sur la 2Ã¨me ligne lors de mouvements verticaux

"FOR NERDTREE
nnoremap <silent> <F9> :NERDTree<CR>
