" 
" split & join
"       gs: Split
"       gj: Join
let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''
" 
" sideways
"       :SidewaysLeft
"       :SidewaysRight
" 
" 
" neoformat
"       <A-F>: fromat file
"       :Neoformat
"       自定义格式化工具:
"           let g:neoformat_python_autopep8 = {
"               \ 'exe': 'autopep8', " 格式工具
"               \ 'args': ['-s 4', '-E'], " 参数
"               \ 'replace': 1, " 替换文件
"               \ 'stdin': 1, " 格式化到标准输出流
"               \ 'no_append': 1, " 
"               \ 'env': ["DEBUG=1"], " 环境参数
"               \ 'valid_exit_codes': [0, 23], " 退出码
"               \ }
"
let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1
let g:neoformat_only_msg_on_error = 1
let g:neoformat_enabled_c = ['clangformat']
let g:neoformat_enabled_css = ['prettierd']
let g:neoformat_enabled_html = ['prettierd']
let g:neoformat_enabled_java = ['prettierd']
let g:neoformat_enabled_javascript = ['prettierd']
let g:neoformat_enabled_json = ['prettierd']
let g:neoformat_enabled_python = ['ruff']
let g:neoformat_enabled_sql = ['prettierd']
let g:neoformat_enabled_xml = ['prettierd']
let g:neoformat_enabled_yaml = ['prettierd']
let g:neoformat_enabled_zsh = ['shfmt']