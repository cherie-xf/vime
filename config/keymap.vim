inoremap jk <esc>
nnoremap <M-q> <esc>:close<cr>
vnoremap <M-q> <esc>:close<cr>
nnoremap <BackSpace> :nohl<cr> " 取消搜索高亮

" 窗口
noremap <c-h> <C-w>h
noremap <c-j> <C-w>j
noremap <c-k> <C-w>k
noremap <c-l> <C-w>l
noremap <M-H> <C-w>h
noremap <M-J> <C-w>j
noremap <M-K> <C-w>k
noremap <M-L> <C-w>l

" 更改窗口大小
nnoremap <M-{> :vertical resize -5<CR> " 更改窗口宽度
nnoremap <M-}> :vertical resize +5<CR>
" nnoremap <M-_>= :exe "resize " . (winheight(0) * 3/2)<CR> " 更改窗口高度
" nnoremap <M-+>- :exe "resize " . (winheight(0) * 2/3)<CR>

" 分割窗口
nnoremap <c-w>k :abo split <cr>
nnoremap <c-w>h :abo vsplit <cr>
nnoremap <c-w>j :rightbelow split <cr>
nnoremap <c-w>l :rightbelow vsplit <cr>

" 插入模式下的一些快捷键
inoremap <M-o> <esc>o
inoremap <M-O> <esc>O
inoremap <M-h> <esc>I
inoremap <M-l> <esc>A

noremap <space><space> <esc>:w<cr><left>

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" 复制到末尾
nnoremap Y y$

" terminal
if has('nvim')
	au TermOpen * tnoremap <buffer> <Esc> <c-\><c-n>
else
	tnoremap <Esc> <C-\><C-n>
endif
tnoremap <c-j> <c-\><c-n><c-w>j
tnoremap <c-k> <c-\><c-n><c-w>k
tnoremap <c-l> <c-\><c-n><c-w>l
tnoremap <c-h> <c-\><c-n><c-w>h

"tabl operation
function s:new_tab_before() abort
	exec "tabnew | -tabmove"
endfunction
"在前么新建一个tab
nnoremap <silent> <leader>tN :call <SID>new_tab_before()<cr>
nnoremap <silent> <leader>tn :tabnew<cr>
nnoremap <silent> <leader>tc :tabclose<cr>
" nnoremap  <leader>tm :tabmove 1<cr>
" nnoremap  <leader>tM :tabmove -1<cr>

"------------------------------------------- vim-airline
if !HasPlug('vim-airline')
    nnoremap  <silent> <M-l> :tabnext<cr>
    nnoremap  <silent> <M-h> :tabprevious<CR>
    tnoremap  <silent> <M-l> <c-\><c-n>:tabnext<cr>
    tnoremap  <silent> <M-h> <c-\><c-n>:tabprevious<CR>
endif

"------------------------------------------- ale
if HasPlug('ale')
	" 过时了，现在主要用coc
    nmap <silent> <space>{ <Plug>(ale_previous_wrap)
    nmap <silent> <space>} <Plug>(ale_next_wrap)
endif

"------------------------------------------- fzf
if HasPlug('fzf')
	" 过时了，现在主要用coc
endif

"------------------------------------------- easymotion
if HasPlug('vim-easymotion')
	" 过时了，现在主要用cleverf
    nmap gk <Plug>(easymotion-overwin-f)
    nmap gl <Plug>(easymotion-overwin-line)
    "imap <M-k> <esc><Plug>(easymotion-overwin-f)
    "imap <M-j> <esc><Plug>(easymotion-overwin-line)
    " nmap <Leader>w <Plug>(easymotion-overwin-w)
endif

"------------------------------------------- goyo
if HasPlug('goyo.vim')
    nnoremap <F7> <esc>:Goyo<cr>
    "setlocal nonumber
    "setlocal norelativenumber
endif

"------------------------------------------- ChooseWin
if HasPlug('vim-choosewin')
    nnoremap <silent> - :ChooseWin<CR>
endif

"------------------------------------------- Autoformat
if HasPlug('vim-autoformat')
	" 过时了，现在主要用coc
    nnoremap <M-i> :Autoformat<cr>
endif

"------------------------------------------- Startify
if HasPlug('vim-startify')
	" 不花里胡少的了
    noremap <leader>s <esc>:Startify<cr>
    "au FileType startify noremap q :q<cr>
endif

"-------------------------------------------- zoomwintab
if HasPlug('zoomwintab.vim')
    nnoremap  <c-w>o :ZoomWinTabToggle<cr>
endif

"-------------------------------------------- tagbar
if HasPlug('tagbar')
    nnoremap <F3> :TagbarToggle<cr>
    "inoremap <F3> <esc>:TagbarToggle<cr>
endif
