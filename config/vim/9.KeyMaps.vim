" 
" 跳过内置脚本、映射
" 
" skip file type maps
let g:no_plugin_maps = 1
" skip getscriptPlugin.vim
let g:loaded_getscriptPlugin = 1
" skip logiPat.vim
let g:loaded_logiPat = 1
" skip manpager.vim
let g:loaded_manpager_plugin = 1
" skip netrwPlugin.vim
let g:loaded_netrwPlugin = 1
" skip rrhelper.vim
let g:loaded_rrhelper = 1
" skip tohtml.vim
let g:loaded_2html_plugin = 1
" skip viimballPlugin.vim
let g:loaded_vimballPlugin = 1

" 
" Windows操作习惯
" 
vnoremap                <C-X>                "+x
vnoremap                <C-C>                "+y
inoremap                <C-V>                <ESC>"+gpa
cnoremap                <C-V>                <C-R>+
inoremap                <C-A>                <ESC>ggVG

" Airline
nnoremap                <leader>-         <Plug>AirlineSelectPrevTab
nnoremap                <leader>+         <Plug>AirlineSelectNextTab 
" 
" Jump
" 
" Matchup:
"     %: 匹配块
" 
nnoremap                %                 <Plug>(matchup-%)
nnoremap                <2-LeftMouse>     <Plug>(matchup-double-click)
" 
" Sneak
"     s{char}{char}
"     S{char}{char}
" 
nnoremap                s                 <Plug>Sneak_s
nnoremap                S                 <Plug>Sneak_S
" 
" AnyJump
"     <leader>j
nnoremap                <leader>j         :AnyJump<CR>
" 
" Search
" 
" Pluse & IncrementalSearch
" 
nnoremap                n                 <Plug>(is-n)<Plug>Pulse
nnoremap                N                 <Plug>(is-N)<Plug>Pulse
" 
" Motion
" 
" ExpandRegion
"       +: expand the visual selection
"       _: shrink the visual selection
" 
" 
" Move
"       <C-j>: Move current line/selections down
"       <C-k>: Move current line/selections up
" 
" Surround
"       ys / cs / ds + motion + surrounds
"           ys: yank surround(添加)
"               ysiw[   Hello ==> [ Hello ]
"               ysiw<em> Hello wrold ==> <em>Hello</em> world
"               yss)    Hello world ==> (Hello world)
"               ysWfprint    "hello" ==>     print("hello")
"               ysWFprint    "hello"  ==>    print( "hello" )
"           cs: change surround(替换)
"               cs"'    "Hello" ==> 'Hello'
"               cs'<q>  'Hello' ==> <q>Hello</q>
"           ds: delete surround(删除)
"               ds"     "Hello world!" ==> Hello world!
"           surrounds:
"               orgin-surrounds + new-surrounds
" 
nnoremap                ys                <Plug>Ysurround
nnoremap                yss               <Plug>Yssurround
nnoremap                cs                <Plug>Csurround
nnoremap                ds                <Plug>Dsurround
" 
" BetterEditor
" 
" 
" Commenter
"       <leader>cc : 加、去注释
"       添加类型注释
"           autocmd FileType apache setlocal commentstring=#\ %s
" 
noremap                 <leader>cc        <Plug>CommentaryLine
" InterestingWords
"       <leader>k: 高亮
"       <leader>K: 取消高亮
" 
nnoremap                <leader>k         :call InterestingWords('n')<CR>
nnoremap                <leader>K         :call UncolorAllWords()<CR>
" 
" Split & Join
"       <leader>s: Split
"       <leader>j: Join
" 
nnoremap                gj         :SplitjoinJoin<cr>
nnoremap                gs         :SplitjoinSplit<cr>
" 
" Neoformat
"           <A-F>: fromat file
" nnoremap                <A-F>             :Neoformat<CR>
" 
" AsyncTask
" 
noremap                 <F9>              :AsyncTask build<CR>
noremap                 <M-R>             :AsyncTask run<CR>
" 
" Coc
" 
function! CheckBackspace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap                <silent><expr>      <TAB>       coc#pum#visible() ? 
                                                            \ coc#_select_confirm() : coc#expandableOrJumpable() ? 
                                                            \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" : CheckBackspace() ? 
                                                            \ "\<TAB>" : coc#refresh()

inoremap                <silent><expr>      <CR>        coc#pum#visible() ? 
                                                            \ coc#_select_confirm() : 
                                                            \ "\<C-g>u\<CR>\<C-r>=coc#on_enter()\<CR>"


" 高亮当前单词
autocmd     CursorHold      *       silent call CocActionAsync('highlight')
" 翻译
" function s:hover_before_check()
"     try
"         if coc#rpc#ready()
"             if len(CocAction("getHover")) > 0 
"                 call CocActionAsync("doHover")
"             endif
"             call CocActionAsync("highlight")
"         endif
"     catch
"     endtry
" endfunction

" nnoremap <silent> K :call CocActionAsync('doHover')<CR>

" autocmd CursorHold * silent call CocActionAsync('highlight')
