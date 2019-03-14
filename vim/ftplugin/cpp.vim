function! Main()
    r~/.vim/snippet/main.c
endfunction
nmap ,main <esc>:call Main()<CR>

function! Prime()
    r~/.vim/snippet/prime.c
endfunction
nmap ,prime <esc>:call Prime()<CR>

ab #i #include
ab using using namespace std;

" nnoremap <F9> :w<enter>:!g++ -std=c++11 %<enter>

set makeprg=g++\ -std=c++11\ %\ -o\ %<

nmap <F9> :w<enter>:make<enter>
imap <F9> <esc>:w<enter>:make<enter>
