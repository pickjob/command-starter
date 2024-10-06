# 变量
#       赋值:
#           name=value
#       引用:
#           $name ${name}
#       扩展:
#           ${+name}        : 变量设置则为1, 否则为0
#           ${name-word}    : 变量存在设置则为value, 否则为world
#           ${name:-word}   : 变量存在且非空设置则为value, 否则为world
# 
#           ${name=word}    : 变量不存在设置则为value, 否则为world
#           ${name:=word}   : 变量存在且非空设置则为value, 否则为world
#           ${name::=word}  : 变量无条件为world
#
#           ${name+word}    : 变量存在设置则为world
#           ${name:+word}   : 变量存在且非空设置则为world
# 
#           ${name/pattern/repl}: 正则替换(第一个匹配)
#           ${name//pattern/repl}: 正则替换(所有匹配)
#           ${name:/pattern/repl}: 正则替换(整体匹配)
# 
#           ${name:^arrayname}: ZIP数组
#           ${name:^^arrayname}: ZIP数组
# 
#           ${name:offset}:  数组切片
#           ${name:offset:length}:  数组切片
#       数组:
#           申明:
#               name=(value ...)
#           追加元素:
#               name+=(value ...)
#               name[exp]=value
#           引用:
#               $name[exp] # 从1开始
#               $name[*] / $name[@] 所有元素, 双引号包裹有特殊区别
#           遍历:
#               for i ($array1) {
#                   echo $i
#               }
#           查找:
#               $array[(i)ccc]: 从左到右, 找不到返回 数组大小 + 1
#               $array[(I)ccc]: 从右到左, 找不到返回 返回0
#           排序:
#               ${(o)array}: 从小到大
#               ${(O)array}: 从大到小
#           去重:
#               ${(u)array}
#       哈希表:
#           local -A table
#           table=(k1 v1 k2 v2)
#           遍历:
#               只遍历值
#               for i ($table) {
#                   echo $i
#               }
#               只遍历键
#               for i (${(k)table}) {
#                   echo $i
#               }
#               同时遍历键和值
#               for k v (${(kv)table}) {
#                   echo "$k -> $v"
#               }
#           引用:
#               $table[k1]
#           删除:
#               unset "table[k1]"
#           追加元素:
#               table+=(k3 v3 ...)
#           元素查找:
#               (($+table[k1])) && echo good
#           排序:
#               ${(o)table}: 只对值排序
#               ${(ok)table}: 只对键排序
#               ${(okv)table}: 键值一起排序
#       脚本变量:
#           $argv[exp]: 脚本参数
#           $!: 上一个后台任务PID
#           $$: 当前SHELL PID
#           $?: 上一个命令返回状态码
#           :h: 基目录
#           :t: 文件名
#           :e: 扩展名
#           :r: 去掉扩展名
#           $PWD: 当前目录
#           $RANDOM: 随机数
#           $USERNAME: 用户名
#       允许配置变量:
#           fpath: 函数查找地址
#           IFS: 默认分隔符
#           PROMPT / PS1
#           RPROMPT / RPS1
#           histchars: 历史记录表达式字符(默认!)
#           TIMEFMT:
#               %U: CPU seconds spent in user mode.
#               %S: CPU seconds spent in kernel mode.
#               %E: Elapsed time in seconds.
#               %P: The CPU percentage, computed as 100*(%U+%S)/%E.
#               %M: The maximum memory the process had in use at any time in kilobytes.
#               %I: The number of input operations.
#               %O: The number of output operations.
#               %r: The number of socket messages received.
#               %s: The number of socket messages sent.
#               %k: The number of signals received.
#               %J: The name of this job.