# 文件名表达式
#       *: 匹配任意字符串
#       ?: 匹配任一字符
#       [...]:
#           [:alnum:]: 字母 + 数字
#           [:alpha:]: 字母
#           [:lower:]: 小写字符
#           [:upper:]: 大写字符
#           [:digit:]: 数字
#           [:blank:]: 空字符
#           [:space:]: 空白
#       x|y: x 或者 y
#       ^x: 非 x
#       x#: x 匹配0次或者多次
#       x##: x 匹配1次或者多次
#       flag:
#           i: 大小写敏感
#           l: 小写大小写不敏感, 大写敏感
#           aNUM: 错误多少次, 模糊匹配
#       qualifier:
#           /: 目录
#           .: 文本文件
#           @: 链接文件
#           =: sockets
#           %: device 文件
#           p: name pipe(FIFOs)
#           文件读写权限:
#               r: owner-readable 文件
#               w: owner-writable 文件
#               x: owner-executable 文件
#               A: group-readable 文件
#               I: group-write 文件
#               E: group-executable 文件
#               R: world-readable 文件
#               W: world-writable 文件
#               X: world-executable 文件
#               *: executable plain files
#           大小:
#               L
#           日期:
#               m: mtime
#               c: ctime
#           排序:
#               o: 升序
#               O: 降序
#           N: 找不到匹配返回空而不报错
#           数量：
#               [n, m]