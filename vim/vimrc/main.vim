" Coloring
syntax on
set background=dark
"set background=light
colorscheme kolor

set ai
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nu
set hlsearch
set mouse=a
"set scrolloff=999 "always make cursor in the middle of the screen

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/


"abbreviations"
func Eatchar(pat)
    let c = nr2char(getchar(0))
    return (c =~ a:pat) ? '' : c
endfunc

iab #i #include
iab #p #! /usr/bin/python -tt
iab #l #!/usr/local/bin/sbcl --script
iab cmain int main(int argc, char *argv[]){<CR><CR>return 0;<CR>}<ESC>kk:call getchar()<CR>
iab cif if () {<ESC>o}<ESC>k$F):call getchar()<CR>
iab cfor for () {<ESC>o}<ESC>k$F):call getchar()<CR>


"make file
set makeprg=g++\ %\ -o\ %<
nmap <F9> :w<enter>:make<enter>
imap <F9> <esc>:w<enter>:make<enter>
"execute current file
nmap ,a :w<enter>:!./%<enter>
imap ,a <esc>:w<enter>:!./%<enter>

"terminal encoding
set tenc=utf-8

" If no screen, use color term
if ($TERM == "vt100")
    " xterm-color / screen
    set t_Co=8
    set t_AF=[1;3%p1%dm
    set t_AB=[4%p1%dm
endif

if filereadable($VIMRUNTIME . "/vimrc_example.vim")
    so $VIMRUNTIME/vimrc_example.vim
endif

if filereadable($VIMRUNTIME . "/macros/matchit.vim")
    so $VIMRUNTIME/macros/matchit.vim
endif


set nocompatible
set wildmenu
set backupdir=~/.vim/vim-backup,.,/var/tmp/vi.recover,/tmp
set directory=~/.vim/vim-backup,/var/tmp/vi.recover,/tmp,.
set backup		" keep a backup file
set bs=2		" allow backspacing over everything in insert mode
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
set showmatch

" VIM 6.0,
if version >= 600
    set nohlsearch
    " set foldcolumn=2
    " set foldmethod=syntax
    set foldmethod=marker
    set foldlevel=1
    "    set foldtext=/^/=>
    " set encoding=utf-8
    " set fileencoding=big5
    " set termencoding=big5
    set encoding=big5
    " set fileencodings=latin,big5,ucs-bom,utf-8,sjis,big5
    set fileencodings=ucs-bom,utf-8,sjis,big5,latin1
else
    set fileencoding=taiwan
endif

" Tab key binding
if version >= 700
    map  <C-t> :tabnew<CR>
    imap <C-t> <ESC>:tabnew<CR>
    map  <C-q> :tabclose<CR>
    map  <C-h> :tabprev<CR>
    imap <C-h> <ESC>:tabprev<CR>
    map  <C-l> :tabnext<CR>
    imap <C-l> <ESC>:tabnext<CR>
    "map <F4> :set invcursorline<CR>

    map g1 :tabn 1<CR>
    map g2 :tabn 2<CR>
    map g3 :tabn 3<CR>
    map g4 :tabn 4<CR>
    map g5 :tabn 5<CR>
    map g6 :tabn 6<CR>
    map g7 :tabn 7<CR>
    map g8 :tabn 8<CR>
    map g9 :tabn 9<CR>
    map g0 :tabn 10<CR>
    map gc :tabnew<CR>
    map gn :tabn<CR>
    map gp :tabp<CR>

    highlight TabLineSel term=bold,underline cterm=bold,underline ctermfg=7 ctermbg=0
    highlight TabLine    term=bold cterm=bold
    highlight clear TabLineFill


end

" Crontabs must be edited in place
au BufRead /tmp/crontab* :set backupcopy=yes
