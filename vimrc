"
"-------------------
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
Plugin 'Townk/vim-autoclose'                " ferme automatiquement les balises entrante
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround' 
Plugin 'scrooloose/nerdtree'                " affiche l'explorateur de dossier
Plugin 'ervandew/supertab'
Plugin 'tmhedberg/matchit'
Plugin 'eshion/vim-sync'                    " synchronise avec un client ftp => ,su
Plugin 'altercation/vim-colors-solarized'   " jeux de couleur
Plugin 'bling/vim-airline'                  " Ajoute un jolie esthetique avec solarized
"--------------------
"" for php
"--------------------
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'taglist.vim'

"--------------------
"" for javascript
"--------------------
Plugin 'pangloss/vim-javascript'
Plugin 'itspriddle/vim-jquery'

"--------------------
"" for tremplate
"--------------------
Plugin 'evidens/vim-twig'


"--------------------
"" General Settings
"--------------------
let mapleader = ","

" ThÃ¨me de couleur par dÃ©faut:
" colorscheme peachpuff                         
" Autre thÃ¨mes possibles: desert, delek, zellner, torte, elflord, evening, pablo, morning, peachpuff, blue, murphy, ron, zellner, darkblue, desert, koehler, and shine
syntax enable                                 " activation de la coloration syntaxique
set t_Co=256
let hour = strftime("%H")
if 6<=hour && hour <18
    set background=light		                  " fond sombre
else
    set background=dark
endif
colorscheme solarized

" liste des couleur : ll /usr/share/vim/vim71/colors/
set autoindent                               " indentation automatique avancÃ©e
set smartindent                              " indentation plus intelligente
set backspace=indent,eol,start                " autorisation du retour arriÃ¨re
set bs=2                                      " redÃ©finition du backspace
set history=50                                " fixe l'historique Ã  50 commandes maxi
set shiftwidth=4                              " taille des tabulations (nb d'espace)
set softtabstop=4                             " taille des tabulations mixtes (tabulations et espaces)
set tabstop=4                                 " taille des tabulations Ã l'affichage (nb d'espace)
set expandtab                                 " transforme les tabulations en espaces
set showmatch                                 " vÃ©rification prÃ©sence (, [ ou { Ã  la frappe de ), ] ou }
filetype plugin indent on                     " dÃ©tection automatique du type de fichier
" autocmd FileType text setlocal textwidth=72  " les fichiers de type .txt sont limitÃ©s Ã  72 caractÃ¨res par ligne
set fileencoding=utf-8
set fileformats=unix,mac,dos                  " gestion des retours chariot en fonction du type de fichier
"set noic                                      " Prendre en compte la casse pour les recherches
"set so=2                                      " Place le curseur sur la 2Ã¨me ligne lors de mouvements verticaux

" AFFICHAGE
set number                                   " numÃ©rotation des lignes
set ruler                                     " affiche la position courante au sein du fichier
set showcmd                                   " affiche la commande en cours
set cursorline                                " met en avant la ligne courante
"set cursorcolumn                             " met en avant la colonne courante

" RECHERCHE
set hlsearch                                  " surligne les rÃ©sultats de la recherche
set incsearch                                 " recherche en mÃªme temps que la saisie
set smartcase                                 " recherche respectueuse de la case quand une majuscule est saisie
set ignorecase                                " ne pas prendre en compte la casse pour les recherches
" set nohls                                    " ne pas surligner les rÃ©sultats de la recherche


"FOR NERDTREE
nnoremap <silent> <F9> :NERDTree<CR>

"FOR TAGLIST
nnoremap <silent> <F8> :TlistToggle<CR>

"FOR AIRLINE
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

