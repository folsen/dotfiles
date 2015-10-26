"' Starting up pathogen
call pathogen#infect()

""
"" Customisations
""
color molokai

" Set leader to comma
let mapleader = ","

" Highlight different haskell properties
let hs_highlight_types=1
let hs_highlight_more_types=1
let hs_highlight_debug=1
let g:molokai_original=1

" Makes Cmd-Shift-Left/Right switch between tabs
map <D-S-Left> gT
map <D-S-Right> gt

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Define haddock browser to satisfy vim2hs
let g:haddock_browser = "/Applications/Google Chrome.app"

" gqip reformats a block of lines, like a comment block to be width 60
set formatprg=par\ -w80

" Enable DCPU16 highlighting for dasm files
au BufNewFile,BufRead *.dasm16,*.dasm setf dcpu

" Execute file being edited with <Shift> + e:
map <buffer> <S-e> :w<CR>:cd %:h<CR>:!/usr/bin/env python % <CR>

" Remove toolbar
set go-=T

" Set virtualedit to all so I can go whereever i want
" set virtualedit=all

" Set visual bell, not that goddamned sound
set vb

" Insert blank line with shift enter key
" nnoremap <CR> o<Esc>

" .ejs is HTML
au BufNewFile,BufRead,BufEnter *.ejs setf html

" Use fancy fonts for airline
let g:airline_powerline_fonts = 1
set laststatus=2

" Emulate TextMate CMD-Enter
inoremap <D-CR> <C-O>o
nnoremap <D-CR> o<Esc>

" Instead of Ctrl-] to go to tag, use Ctrl-i
inoremap <C-i> <C-]>
nnoremap <C-i> <C-]>
set tags=codex.tags,tags;/

" Don't display tmp/ in CommandT
set wildignore+=*/dist/*,*/tmp/*,*.so,*.swp,*.zip

let g:ctrlp_map = '<D-t>'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|dist|tmp)$'

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
" .slim files are slim language
au BufRead,BufNewFile *.slim set filetype=slim
" map elm-make to ,m
au FileType elm nmap <leader>m <Plug>(elm-make)

" Set fontsize
set guifont=Meslo\ LG\ M\ for\ Powerline:h13

set textwidth=0 wrapmargin=0
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"

" Tabspace is 2!
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

" Use the default system clipboard
set clipboard=unnamed
