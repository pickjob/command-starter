"  
" auto-save
" 
let g:auto_save = 1
" 
" auto-pairs
" 
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = ''
let g:AutoPairsShortcutFastWrap = ''
let g:AutoPairsShortcutJump = ''
let g:AutoPairsShortcutBackInsert = ''
" 
" better-whitespace
"       :StripWhitespace
" 
let g:better_whitespace_enabled = 1
let g:strip_whitespace_confirm = 0
let g:strip_whitespace_on_save = 1
let g:show_spaces_that_precede_tabs = 1
let g:better_whitespace_operator = ''
" 
" context
" 
let g:context_add_mappings = 0
" 
" signify
" 
let g:signify_sign_add = ''
let g:signify_sign_delete = ''
let g:signify_sign_delete_first_line = ''
let g:signify_sign_change = ''
let g:signify_sign_change_delete = g:signify_sign_change .. g:signify_sign_delete_first_line
" 
" illuminate
"  
" 
" interestingwords
"       <leader>k: 高亮
"       <leader>K: 取消高亮
" 
let g:interestingWordsRandomiseColors = 1
let g:interestingWordsDefaultMappings = 0
" 
" tagalong
" 
let g:tagalong_verbose = 1
let g:tagalong_mappings = []
let g:tagalong_filetypes = ['html', 'xml']
" 
" closetag
" 
let g:closetag_filetypes = 'html,xml'
"
" commentary
"       <leader>cc : 加、去注释
"       添加类型注释
"           autocmd FileType apache setlocal commentstring=#\ %s
" 
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
let g:surround_no_mappings = 1