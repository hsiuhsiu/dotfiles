set tabstop=2
set shiftwidth=2
set softtabstop=2

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
nmap ;m <F8>
nmap ;m0 <F8>:!tmux run-shell -t 0 "./%<"<CR><CR>
nmap ;mi0 <F8>:!tmux run-shell -t 0 "./%< < in.txt"<CR><CR>
nmap ;m1 <F8>:!tmux run-shell -t 1 "./%<"<CR><CR>
nmap ;mi1 <F8>:!"tmux run-shell -t 1 "./%< < in.txt"<CR><CR>
nmap ;m1 <F8>:!tmux run-shell -t 2 "./%<"<CR><CR>
nmap ;mi2 <F8>:!tmux run-shell -t 2 "./%< < in.txt"<CR><CR>
nmap ;mo <F8>:!tmux run-shell -t 0 "./%< > out.txt"<CR><CR>:!tmux send-keys -t 1 ":e" Enter <CR><CR>
nmap ;mio <F8>:!tmux run-shell -t 0 "./%< < in.txt > out.txt"<CR><CR>:!tmux send-keys -t 1 ":e" Enter <CR><CR>
nmap <C-g> <F8>:!tmux run-shell -t 0 "./%< < in.txt > out.txt"<CR><CR>:!tmux send-keys -t 1 ":e" Enter <CR><CR>
imap <C-g> <F8>:!tmux run-shell -t 0 "./%< < in.txt > out.txt"<CR><CR>:!tmux send-keys -t 1 ":e" Enter <CR><CR>
