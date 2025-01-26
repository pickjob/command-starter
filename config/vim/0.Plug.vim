" 
" vim-plug
"       PlugInstall
"       PlugUpgrade
" 
call plug#begin('$REPOSITORY' .. '/packages/vim-plugins')
" 
" UI
" 
" rainbow
Plug 'luochen1990/rainbow'
" nightfly
Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }
" airline
"       nmap    <leader>-    <Plug>AirlineSelectPrevTab
"       nmap    <leader>+    <Plug>AirlineSelectNextTab
Plug 'vim-airline/vim-airline'
" wilder
Plug 'gelguy/wilder.nvim'
" startify
"       :SSave[!] [session]
"       :SDelete[!] [session]
"       :Startify
Plug 'mhinz/vim-startify'
" nerdtree
"       nerdtree界面命令:
"           o: Open files, directories and bookmarks
"           t: Open selected node/bookmark in a new tab
" 
"           p: Jump to current nodes parent.
"           x: Close the current nodes parent
" 
"           m: Display the NERDTree menu
" 
"           D: Delete the current bookmark
"       :Bookmark
"       :BookmarkToRoot
"       :OpenBookmark
"       :ClearAllBookmarks
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" quickmenu
Plug 'skywind3000/quickmenu.vim'
" lens
Plug 'camspiers/lens.vim'
" 
" Jump & Search
" 
" match
"       %: 匹配块
Plug 'andymass/vim-matchup'
" qucik-scope
"       f: 高亮跳转提示
Plug 'unblevable/quick-scope'
" sneak
"       s{char}{char}
"       S{char}{char}
Plug 'justinmk/vim-sneak'
" any-jump
"       <leader>j
"           o: open
"           t: open in new tab
"           a: load next result
Plug 'pechorin/any-jump.vim'
" 
" Search
" 
" search-pulse
Plug 'inside/vim-search-pulse'
" incremental-search
Plug 'haya14busa/is.vim'
" traces 
Plug 'markonm/traces.vim'
" 
" Motion
" 
" targets
Plug 'wellle/targets.vim'
" expand-region
"       +: expand the visual selection
"       _: shrink the visual selection
Plug 'terryma/vim-expand-region'
" move
"       <C-j>: Move current line/selections down
"       <C-k>: Move current line/selections up
Plug 'matze/vim-move'
" 
" BetterEditor
" 
" auto-save
Plug '907th/vim-auto-save'
" auto-pairs
Plug 'jiangmiao/auto-pairs'
" better-whitespace
"       :StripWhitespace
Plug 'ntpeters/vim-better-whitespace'
" context
Plug 'wellle/context.vim'
" signify
Plug 'mhinz/vim-signify'
" illuminate
Plug 'RRethy/vim-illuminate'
" interestingwords
"       <leader>k: 高亮
"       <leader>K: 取消高亮
Plug 'lfv89/vim-interestingwords'
" tagalong
Plug 'AndrewRadev/tagalong.vim'
" closetag
Plug 'alvan/vim-closetag'
" commentary
"       <leader>cc: 加、去注释
"       添加类型注释
"           autocmd FileType apache setlocal commentstring=#\ %s
Plug 'tpope/vim-commentary'
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
Plug 'tpope/vim-surround'
" 
" Prject
" 
" split & join
"       gs: Split
"       gj: Join
Plug 'AndrewRadev/splitjoin.vim'
" sideways
"       :SidewaysLeft
"       :SidewaysRight
Plug 'AndrewRadev/sideways.vim'
" neoformat
"       <A-F>: fromat file
"       :Neoformat
Plug 'sbdchd/neoformat'
" 
" IDE
" 
" fzf
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" asynctasks
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asynctasks.vim'
" coc
"       :CocUpdate
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

call plug#end()

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)')) | PlugInstall --sync | endif