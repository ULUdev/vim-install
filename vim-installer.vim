" Name: vim-install
" Author: Moritz Sokoll
" Description: a plugin for installing vim plugins from source (should be used with plugin-manager)


if exists("g:vim_install_loaded")
	finish
endif

function! VimInstall_install()
	if filereadable(expand("./.viminstall")) == 1
		echo 'installing from .viminstall ...'
		so .viminstall
	else
		echo '.viminstall not readable or not found'
	endif
endfunction

command! -nargs=0 VimInstall call VimInstall_install()
