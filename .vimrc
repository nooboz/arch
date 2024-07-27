syntax on
colo delek
" colorscheme hybrid

let $VIMROOT = expand("$HOME") . "/vimfiles"

set shell=sh
set nocompatible
filetype plugin indent on
filetype plugin on
set omnifunc=syntaxcomplete#Complete    """" nuova linea
filetype indent on


" tabs 
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4 " Backspace goes back 4 spaces
"set backspace=indent,eol,start
set autoread wildmode=longest,list,full
set autoread
set wildmenu
"set wildmode
set backspace=indent,eol,start confirm
set shiftwidth=4 autoindent smartindent tabstop=4 softtabstop=4 expandtab  
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set hls is ic
"set laststatus=2 cmdheight=1
set laststatus=2
set cmdheight=1
au BufRead,BufNewFile *.fountain set filetype=fountain
set splitbelow splitright 

"autocmd FileType make setlocal noexpandtab " no fake tabs in makefiles

" navigation
set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common, then all.

set scrolljump=5                " lines to scroll when cursor leaves screen
set scrolloff=2                 " minimum lines to keep above and below cursor
set foldmethod=syntax
set list
set listchars=tab:,.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace

" Wrapped lines goes down/up to next row, rather than next line in file.
nnoremap j gj
nnoremap k gk


" UI
if has("gui_running")
    set lines=47
    set columns=160
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar
    if has("win32")
        set guifont=Courier_New:h9:cANSI
    else
        set guifont=Monospace\ 9
    endif
endif

set t_Co=256
set textwidth=110

set shortmess+=filmnrxoOtT      " abbrev. of messages (avoids 'hit enter')
set viewoptions=folds,options,cursor,unix,slash " better unix / windows compatibility
set virtualedit=onemore         " allow for cursor beyond last character
"set history=500                 " Store a ton of history (default is 20)
set history=9637                 " Store a ton of history (default is 20)
set hidden                      " allow buffer switching without saving
""""set cursorline                  " highlight current line


"!#;Text
" https://gist.githubusercontent.com/joaopizani/2417865/raw/c9a614961f1153e31d45f636fd880ebcf57a0969/.vimrc
"
"
"
"
set number
set ruler
set incsearch
set hlsearch
set smartcase
set autoindent
set ignorecase

set mouse=a
"set mouse=v

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status-line
"set statusline=
"set statusline+=%#IncSearch#
"set statusline+=\ %y
"set statusline+=\ %r
"set statusline+=%#CursorLineNr#
"set statusline+=\ %F
"set statusline+=%= "Right side settings
"set statusline+=%#Search#
"set statusline+=\ %l/%L
"set statusline+=\ [%c]

"""" New line """"
"set statusline+=%F

"Color Settings
"colorscheme base16-default-dark
" set background=dark cursorline termguicolors
""""set cursorline cursorcolumn
" colorscheme delek
set background=dark
" set background=dark termguicolors
" set cursorline termguicolors

"set cursorline
"set cursorcolumn
"hi CursorLine cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkgrey guifg=white
"hi CursorColumn cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkgrey guifg=white
"nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

"set noshowmode
set showmode

"set nocursorline

"nnoremap <C-y> "+y
"vnoremap <C-y> "+y
"nnoremap <C-p> "+gP
"vnoremap <C-p> "+gP

vnoremap <C-c> "+y
map <C-c> "+P
vnoremap <C-c> "*y :let @+=@*<CR>

"""" New Line """"
"set encoding=UTF-8
set encoding=utf-8
set linespace=0
"set paste
set clipboard=unnamedplus

"""""" Vim-Airline """"
"let g:airline_powerline_fonts = 1
""set fillchars+=stl:\ ,stlnc:\
""let g:Powerline_mode_V="V·LINE"
""let g:Powerline_mode_cv="V·BLOCK"
""let g:Powerline_mode_S="S·LINE"
""let g:Powerline_mode_cs="S·BLOCK"
""
""if !exists('g:airline_symbols')
""  let g:airline_symbols = {}
""endif
""
""" Unicode symbols
""let g:airline_left_sep = '»'
""let g:airline_left_sep = '▶'
""let g:airline_right_sep = '«'
""let g:airline_right_sep = '◀'
""let g:airline_symbols.linenr = '␊'
""let g:airline_symbols.linenr = '␤'
""let g:airline_symbols.linenr = '¶'
""let g:airline_symbols.branch = '⎇'
""let g:airline_symbols.paste = 'ρ'
""let g:airline_symbols.paste = 'Þ'
""let g:airline_symbols.paste = '∥'
""let g:airline_symbols.whitespace = 'Ξ'
""
""let g:airline_symbols.space = "\ua0"
""let g:airline#extensions#tabline#enabled = 1
""let g:airline#extensions#tabline#show_buffers = 0
"let g:airline_theme = 'bubblegum'

"""" Status Line """"
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
set statusline=
set statusline+=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
set statusline+=\ [%{strftime('%Y/%b/%d\ %a\ %I:%M\ %p')}\]
"set statusline+=\
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

function! CmdLine(str)
    call feedkeys(":" . a:str)
endfunction

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim

""""" Another Status Line """"
"set statusline=
"
"set statusline+=%F                            " current file path
"set statusline+=\                             " blank space
"set statusline+=%y                            " filetype
"set statusline+=\                             " blank space
"set statusline+=%m                            " modified flag [+]
"set statusline+=\                             " blank space
"
"set statusline+=%=                            " right-align from now on
"
"set statusline+=%{PasteForStatusline()}       " paste flag
"set statusline+=\[%{mode()}\]                 " current mode
"set statusline+=\                             " blank space
"set statusline+=%v                            " column number
"set statusline+=\:                            " colon separator
"set statusline+=%l                            " row number
"set statusline+=\/                            " slash separator
"set statusline+=%L                            " number of rows
"set statusline+=\                             " blank space
"set statusline+=%{winnr()}                    " buffer number
"
"set statusline+=%#warningmsg#                 " Syntastic error flag
"set statusline+=%{SyntasticStatuslineFlag()}  " Syntastic error flag
"set statusline+=%*                            " Syntastic error flag
"
"function! PasteForStatusline()
"    let paste_status = &paste
"    if paste_status == 1
"        return " [paste] "
"    else
"        return ""
"    endif
"endfunction
"
"" https://www.nkantar.com/blog/2017/01/my-vim-statusline/

"""" Move line up and down
" https://vim.fandom.com/wiki/Moving_lines_up_or_down
" Move 1 more lines up or down in normal and visual selection modes.
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv
" press shift+alt+j
" press shift+alt+k
"""" In normal mode or in insert mode, press Alt-j to move the current line down, or press Alt-k to move the current line up. After visually selecting a block of lines (for example, by pressing V then moving the cursor down), press Alt-j to move the whole block down, or press Alt-k to move the block up. 

"""" kitty """"
" Mouse support
set mouse=a
set ttymouse=sgr
set balloonevalterm
" Styled and colored underline support
let &t_AU = "\e[58:5:%dm"
let &t_8u = "\e[58:2:%lu:%lu:%lum"
let &t_Us = "\e[4:2m"
let &t_Cs = "\e[4:3m"
let &t_ds = "\e[4:4m"
let &t_Ds = "\e[4:5m"
let &t_Ce = "\e[4:0m"
" Strikethrough
let &t_Ts = "\e[9m"
let &t_Te = "\e[29m"
" Truecolor support
let &t_8f = "\e[38:2:%lu:%lu:%lum"
let &t_8b = "\e[48:2:%lu:%lu:%lum"
let &t_RF = "\e]10;?\e\\"
let &t_RB = "\e]11;?\e\\"
" Bracketed paste
let &t_BE = "\e[?2004h"
let &t_BD = "\e[?2004l"
let &t_PS = "\e[200~"
let &t_PE = "\e[201~"
" Cursor control
let &t_RC = "\e[?12$p"
let &t_SH = "\e[%d q"
let &t_RS = "\eP$q q\e\\"
let &t_SI = "\e[5 q"
let &t_SR = "\e[3 q"
let &t_EI = "\e[1 q"
let &t_VS = "\e[?12l"
" Focus tracking
let &t_fe = "\e[?1004h"
let &t_fd = "\e[?1004l"
execute "set <FocusGained>=\<Esc>[I"
execute "set <FocusLost>=\<Esc>[O"
" Window title
let &t_ST = "\e[22;2t"
let &t_RT = "\e[23;2t"

" vim hardcodes background color erase even if the terminfo file does
" not contain bce. This causes incorrect background rendering when
" using a color theme with a background color in terminals such as
" kitty that do not support background color erase.
let &t_ut=''

