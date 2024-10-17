" 
" 自定义命令
"       command[!]    [{attr}...]    {cmd}    {repl}
"           attr:
"               参数(默认无参数):
"                   -nargs=0 : 无参数
"                   -nargs=1 : 一个参数
"                   -nargs=* :任意数目的参数
"                   -nargs=? : 没有或一个参数
"                   -nargs=+: 一个或更多参数
"               范围处理:
"                   -range: 允许使用范围，缺省为当前行
"                   -range=%: 允许使用范围，缺省是整个文件 (1,$)
"                   -range=N: 出现在行号位置的一个数量 (缺省是 N) (类似于  :split )
"                   -count=N: 出现在行号位置或者作为首个参数的一个数量 (缺省是 N) (类似于  :Next )
"                   -count: 同 -count=0
"               补全:
"                   -complete=file: 文件和目录名
"                   -complete=dir: 目录名
"                   -complete=custom,{func}: 用户定制的自动补全，通过 {func} 来定义
"                   -complete=customlist,{func}: 用户定制的自动补全，通过 {func} 来定义
"               其他:
"                   -bang: 这些命令可以使用一个 ! 修饰符 (和 :q 或 :w 类似)
"                   -bar: 这些命令可以跟随一个 "|" 和其它命令, 那么命令参数中就不允许有 "|" , 用一个 " 可以开始一个注释
"                   -register: 给这些命令的第一个参数可以是一个可选的寄存器名(和 :del，:put，:yank 类似)
"                   -buffer: 这些命令仅在当前缓冲区里有效
"           {repl}:
"               转移序列:
"                   <range>: 命令处理范围的项目数: 0、1 或 2
"                   <count>: 提供的数量 (在 '-range' 和 '-count' 属性中描述)
"                   <bang>: (参考 '-bang' 属性) 如果命令执行时带了 ! 修饰符，扩展为 !，否则什么也不扩展
"                   <args>：命令的参数，和实际提供的完全相同
"                   <q-args>: 引号括起, 把参数当做单个值
"                   <f-args>: 函数参数格式
"                   <line1>: 命令处理范围的开始行
"                   <line2>: 命令处理范围的末尾行
"       delcommand   {cmd}
"       :comc[lear]