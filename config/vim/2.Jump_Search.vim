" 
" matchup
"       %: 匹配块
" 
let g:matchup_mouse_enabled = 1
let g:matchup_mappings_enabled = 0
let g:matchup_surround_enabled = 1
let g:matchup_matchparen_deferred = 1
let g:matchup_matchparen_deferred_fade_time = 500
let g:matchup_matchparen_hi_surround_always = 1
" 
" quick-scope
"       f: 高亮跳转提示
" 
let g:qs_highlight_on_keys = ['f', 'F']
" 
" sneak
"       s{char}{char}
"       S{char}{char}
" 
let g:sneak#f_reset = 1
let g:sneak#t_reset = 1
let g:sneak#s_next = 1
let g:sneak#map_netrw = 0
" 
" any-jump
"       <leader>j
"           o: open
"           t: open in new tab
"           a: load next result
" 
let g:any_jump_disable_default_keybindings = 1
let g:any_jump_list_numbers = 1
" 
" search-pulse
" 
let g:vim_search_pulse_disable_auto_mappings = 1
let g:vim_search_pulse_duration = 500
" 
" incremental-search
" 
let g:is#do_default_mappings = 0
" 
" traces
" 