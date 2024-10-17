" 
" 查找&替换
"       /{pattern}[/offset]<CR>: 向下查找
"       ?{pattern}[?]<CR>: 向上查找
"           n  N(正向、反向重复)
"           offset:
"               +[num]: 相对于找到的匹配的[num]行向下,第一列
"               -[num]: 相对于找到的匹配的[num]行向上,第一列
"               e[+num]: 从匹配结束(end)处算起,[num]字符向右
"               e[-num]: 从匹配结束end)处算起,[num]字符向左
"               s[+num]: 从匹配开始start)处算起,[num]字符向右
"               s[-num]: 从匹配开始start)处算起,[num]字符向左
"               b[+num]: 等价于s[+num](b表示begin)
"               b[-num]: 等价于s[-num]
"       :[range]s[ubstitute]/{pattern}/{string}/[flags] [count]: 替换
"           range:
"               %: whole file
"           flag:
"               i: 忽略大小写
"               I: 不忽略大小写
"               g: 对行内所有的匹配进行替代
"               c: 确认每个替代
"                   y-Yes
"                   n-No
"                   l-Last, 最近选择到结束
"       :[range]g[lobal]/{pattern}/[cmd]: 匹配执行命令