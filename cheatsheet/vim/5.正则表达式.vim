" 
" 正则表达式
"       特定字符:
"           \e: <ESC>
"           \t: Tab
"           \r: <CR>
"           \b: <BS>
"           \n: 换行
"       普通匹配:
"           .: 任意单一字符
"           \d / \D: 数字、非数字
"           \a / \A: 英文字符、非英文字符
"           \w / \W: 单词字符、非单词字符
"           \l / \L: 小写、非小写
"           \u / \U: 大写、非大写
"           \s / \S: 空白字符、非空白字符
"           ^ / $: 行首、行尾
"           \%^ / \%$: 文件首、文件尾
"           []: 范围
"       倍数
"           *: 0 / 更多
"           \=: 0 / 1
"           \?: 0 / 1
"           \+: 1 / 更多
"           \{n, m}: n - m
"           \{n}: n
"           \{n,}: >= n
"           \{,m}: <= m