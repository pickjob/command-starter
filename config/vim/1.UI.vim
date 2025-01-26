" 
" rainbow
" 
let g:rainbow_active = 1
" 
" nightfly
" 
let g:nightflyCursorColor = v:true
colorscheme nightfly
" 
" airline
"       自定义part:
"           airline#parts#define_function(part_name, func)
"           airline#parts#define_text(part_name, content)
"       section_x:
"           airline#section#create([part_name]) " 引用part
" 
"       nmap    <leader>-    <Plug>AirlineSelectPrevTab
"       nmap    <leader>+    <Plug>AirlineSelectNextTab 
" 
let g:airline_theme = 'nightfly'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols = {}
let g:airline_symbols.colnr = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.crypt = '󰈡'
let g:airline_symbols.branch = ''
let g:airline_symbols.paste = ''
let g:airline_symbols.dirty = ''
let g:airline_symbols.spell = '󰓆'
let g:airline_symbols.notexists = '󰟢'
let g:airline_symbols.whitespace = ''
let g:airline_experimental = 1
let g:airline_detect_modified = 1
let g:airline_detect_paste = 1
let g:airline_detect_spell = 1
let g:airline_detect_spelllang = 1
let g:airline_extensions = ['tabline', 'wordcount', 'branch', 'hunks', 'fzf', 'coc']
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_count = 2
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#bookmark#enabled = 1
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#wordcount#filetypes = ['all']
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#coc_git = 1
let g:airline#extensions#fzf#enabled = 1
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#coc#show_coc_status = 1
" 
" wilder
" 
let s:scale = ['#f4468f', '#fd4a85', '#ff507a', '#ff566f', '#ff5e63',
    \ '#ff6658', '#ff704e', '#ff7a45', '#ff843d', '#ff9036',
    \ '#f89b31', '#efa72f', '#e6b32e', '#dcbe30', '#d2c934',
    \ '#c8d43a', '#bfde43', '#b6e84e', '#aff05b']
let s:gradient = map(s:scale, {i, fg -> wilder#make_hl(
    \ 'WilderGradient' . i, 'Pmenu', [{}, {}, {'foreground': fg}]
    \ )})
call wilder#setup({
    \ 'modes': [':'],
    \ 'next_key': '<Tab>',
    \ 'previous_key': '<S-Tab>',
    \ 'accept_key': '<Down>',
    \ 'reject_key': '<Up>',
    \ })
call wilder#set_option('pipeline', [
    \   wilder#branch(
    \     wilder#cmdline_pipeline({'fuzzy': 1}),
    \   ),
    \ ])
call wilder#set_option('renderer', wilder#popupmenu_renderer({
    \ 'highlighter': wilder#highlighter_with_gradient([
    \       wilder#basic_highlighter(),
    \ ]),
    \   'highlights': {
    \       'gradient': s:gradient,
    \   },
    \ 'left': [
    \   ' ', wilder#popupmenu_devicons(),
    \ ],
    \ 'right': [
    \   ' ', wilder#popupmenu_scrollbar(),
    \ ],
    \ }))
call wilder#project_root(['.git', '.project'])
" 
" startify
"       :SSave[!] [session]
"       :SDelete[!] [session]
"       :Startify
" 
"       q: close startify
"       e: close startify and create a blank buffer
" 
"       startify_lists:
"           type:
"               files: the most recently used files using viminfo
"               dir: the files from the current directory sorted by modification time
"               bookmarks: lists bookmarks
"           function:
"               line: the text to display for this entry
"               cmd: command to execute when the entry gets chosen
"               path: pints to a file
" 
let g:startify_padding_left = 4
let g:startify_change_to_vcs_root = 1
let g:startify_session_persistence = 0
let g:startify_custom_header = [
    \ '  ______                 __ __                        __       __  ______',
    \ ' /      \               |  \  \                      |  \     |  \/      \',
    \ '|  ▓▓▓▓▓▓\ ______   ____| ▓▓\▓▓_______   ______      | ▓▓      \▓▓  ▓▓▓▓▓▓\ ______',
    \ '| ▓▓   \▓▓/      \ /      ▓▓  \       \ /      \     | ▓▓     |  \ ▓▓_  \▓▓/      \',
    \ '| ▓▓     |  ▓▓▓▓▓▓\  ▓▓▓▓▓▓▓ ▓▓ ▓▓▓▓▓▓▓\  ▓▓▓▓▓▓\    | ▓▓     | ▓▓ ▓▓ \   |  ▓▓▓▓▓▓\',
    \ '| ▓▓   __| ▓▓  | ▓▓ ▓▓  | ▓▓ ▓▓ ▓▓  | ▓▓ ▓▓  | ▓▓    | ▓▓     | ▓▓ ▓▓▓▓   | ▓▓    ▓▓',
    \ '| ▓▓__/  \ ▓▓__/ ▓▓ ▓▓__| ▓▓ ▓▓ ▓▓  | ▓▓ ▓▓__| ▓▓    | ▓▓_____| ▓▓ ▓▓     | ▓▓▓▓▓▓▓▓',
    \ ' \▓▓    ▓▓\▓▓    ▓▓\▓▓    ▓▓ ▓▓ ▓▓  | ▓▓\▓▓    ▓▓    | ▓▓     \ ▓▓ ▓▓      \▓▓     \',
    \ '  \▓▓▓▓▓▓  \▓▓▓▓▓▓  \▓▓▓▓▓▓▓\▓▓\▓▓   \▓▓_\▓▓▓▓▓▓▓     \▓▓▓▓▓▓▓▓\▓▓\▓▓       \▓▓▓▓▓▓▓',
    \ '                                       |  \__| ▓▓',
    \ '                                        \▓▓    ▓▓',
    \ '                                         \▓▓▓▓▓▓',
    \ ]
let g:startify_lists = [
    \ { 'type': 'files',     'header': ['   MRU']            },
    \ { 'type': 'dir',       'header': ['   MRU ' .. getcwd()] },
\ ]
" 
" nerdtree
"       nerdtree界面命令:
"           o: Open files, directories and bookmarks
"           t: Open selected node/bookmark in a new tab
" 
"           p: Jump to current nodes parent.
"           x: Close the current nodes parent
" 
"           m: Display the NERDTree menu
"       :Bookmark
"       :BookmarkToRoot
"       :OpenBookmark
"       :ClearAllBookmarks
" 
let g:NERDTreeMouseMode = 2
let g:NERDTreeChDirMode = 2
let g:NERDTreeWinPos = 'right'
let g:NERDTreeDirArrowExpandable = '👉'
let g:NERDTreeDirArrowCollapsible = '👇'
let g:NERDTreeIgnore = ['\~$']
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeBookmarksFile = $REPOSITORY .. '/packages/vim-runtime/.bookmark'
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'󰑕',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'',
                \ }
" Start NERDTree and put the cursor back in the other window.
autocmd DirChanged * NERDTreeCWD | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif
" 
" lens
" 