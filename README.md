oslvim
======

A vim syntax plugin for OpenShadingLanguage

1. copy osl.vim to ~/.vim/syntax

2. append the following to ~/.vimrc
autocmd BufRead,BufNew,BufNewFile,BufCreate *.osl set filetype=osl 
