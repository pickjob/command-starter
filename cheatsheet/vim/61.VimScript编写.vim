vim9script
# 
# 数据类型:
#       number / float
#       string
#           $"Name: {name}": 字符串模板
#       list
#           var alist = ['a', 'b', 'c']
#           alist + ['d']
#           alist[0] = 'zz'
#       dictionary 
#           var uk2nl = {one: 'one', two: 'two', three: 'three'}
#           uk2nl['two'] = '2'
#       job
#       channel
#       blob
# 
# 表达式
#       变量:
#           $NAME: 环境变量
#           @r: 寄存器内容
#           局部变量(退出脚本不会自动被删除, 删除需要显式置空)
#               var {变量} = {表达式}
#           变量前缀:
#               a:nanme: 函数参数
#               a:0(函数参数个数)
#               a:000(参数列表)
#               b:name: buffer范围
#               s:name: script范围
#               w:name: window范围
#               g:name: golbal范围
#               v:name: vim范围#       列表: [expr, ...]
#       字典: {expr: expr, ...}
#       算数表达式:
#           + - * /
#       字符串拼接:
#           expr .  expr
#           expr .. expr
#       逻辑表达式:
#           expr >  expr
#           expr >= expr
#           expr <  expr
#           expr <= expr
#           expr =~ expr: 匹配正则表达式
#           expr !~ expr: 不匹配正则表达式
#           expr ==? expr: 等于, 忽略大小写
#           expr ==# expr: 等于, 匹配大小写
#           expr || expr
#           expr && expr
#           expr && expr
#           expr == expr
#           !expr: 取反
#       三目表达式: expr ? expr : expr
#       位移:
#           expr << expr
#           expr >> expr
#       lambda:
#           {args -> expr}: 老式匿名函数表达式
#           (args) => expr: Vim9匿名函数表达式
# 
# 流程控制
#       if
#           if {condition}
#               {statements}
#           elseif {condition}
#               {statements}
#           else
#               {statements}
#           endif
#       for
#           for {varname} in {list-expression}
#               {statements}
#           endfor
#       while
#           while {condition}
#                {statements}
#           endwhile
#       continue / break
#       try-cathch-finally
#           try
#                 {statements}
#           catch /.*/
#                 {statements}
#           finally
#                 {statements}
#           endtry
# 
# 函数声明: 函数名必须大写字母开始
#       def {name}({var1}[:type1], {var2}[:type2], ...): return-type
#           {body}
#       enddef
#       可变参数函数
#           def Show(start: string, ...items: list<string>)
#               for index in range(len(items))
#                   echon $#  Arg {index} is {items[index]}#
#               endfor
#           enddef
#       指定范围调用函数
#       :startLine,endLineFunction(): startLine - endLine 调用函数
defcompile