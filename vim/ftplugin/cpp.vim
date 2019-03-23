function! Main()
    r~/.vim/snippet/main.c
endfunction
nmap ,main <ESC>:call Main()<CR>

function! Prime()
    r~/.vim/snippet/prime.c
endfunction
nmap ,prime <ESC>:call Prime()<CR>

ab #i #include
ab using using namespace std;

set makeprg=g++\ %\ -o\ %<

nmap <F8> :w<CR>:make<CR>
imap <F8> <ESC><F8>
nmap <F9> <F8>:!./%<<CR>
imap <F9> <ESC><F9>
nmap <C-m> <F8>:!tmux run-shell -t 1 "./%<"<CR><CR>
imap <C-m> <ESC><F8>:!tmux run-shell -t 1 "./%<"<CR><CR>
