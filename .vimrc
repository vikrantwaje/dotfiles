
call plug#begin('~/.vim/bundle')

Plug 'ctrlpvim/ctrlp.vim' "Fuzzy file finder

Plug 'vim-scripts/taglist.vim' "Function name on sidebar

Plug 'joshdick/onedark.vim' "One dark color theme
call plug#end()
f (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
      endif
  if (has("termguicolors"))
	      set termguicolors
	        endif
	endif
syntax on
colorscheme onedark
