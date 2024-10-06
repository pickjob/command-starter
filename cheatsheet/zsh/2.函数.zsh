# 函数
#   环境变量:
#       fpath: 查找函数路径
#   内置命令:
#       functions: 列出所有函数
#   函数申明:
#       function func() {
#       }
#   Hook 函数:
#       支持回调:
#           chpwd: 当前目录更改回调
#           periodic: 定期执行(PERIOD 开启)
#           precmd: PROMPT之前
#           preexec: 命令被读取, 执行之前
#           zshaddhistory: 历史记录被读取, 执行之前
#           zshexit: ZSH退出回调
#       *_functions:
#           chpwd_functions