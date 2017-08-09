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

nmap ,a :w<enter>:!g++ %<enter>
