# 内置命令:
#       shift: 函数参数左移, $2 -> $1
#       exec: 当前进程执行命令
#       eval [arg ...]: 执行命令返回结果
#       time command: 查看命令耗时
#       builtin: 执行 builtin command
#       command: 执行 external command
# 
#       autoload: 记载函数
#           -U: alias not expanded
#           -z: ZSH style
#           -w: 编译文件
# 
#       zcompile: 编译脚本
#           -U: alias not expanded
#           -z: ZSH style
#           
#       zmodload: ZSH模块加载
#           -F module: 加载模块
#               +b:builtin: 内置命令
#               +f:function: 函数
#               +p:paratermeter: 参数
#               +c:condition: 条件
# 