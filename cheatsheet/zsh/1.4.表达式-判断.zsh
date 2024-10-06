# 
# 条件判断表达式:
#       [[ exp ]]
#       文件判断
#           -e file / -a file: 文件存在则为true
#           -s file: 文件存在且大小大于0
#           -f file / -d file: 文件存在且为文件、目录则为true
#           -r file / -w file / -x file: 文件存在且文件可读、可写、可执行则为true
#       文件比较
#           file1 -nt file2: file1 存在 且 新于 file2
#           file1 -ot file2 : file1 存在 且 老于 file2
#           file1 -ef file2 : file1、file2 存在 指向同一文件
#       字符串判断
#           -n string: 字符串长度非零则为true
#           -z string: 字符串长度为零则为true
#           string = pattern / string == pattern: 字符串匹配pattern则为true
#           string != pattern: 字符串不匹配pattern则为true
#           string =~ regexp: 字符串匹配regex pattern则为true
#           string1 < string2 / string1 > string2: 按 ASCII 比较大小
#       表达式结果比较
#           数值结果
#               exp1 -eq exp2
#               exp1 -ne exp2
#               exp1 -lt exp2
#               exp1 -gt exp2
#               exp1 -le exp2
#               exp1 -ge exp2
#           ( exp ): exp true 则为 true
#           ! exp : exp false 则为 true
#           exp1 && exp2: exp1、epx2 都为 true 则为 true
#           exp1 || exp2 : exp1、epx2 一个为 true 则为 true
#       环境变量探测
#           -o optionname: optionanme设置
#           -v varname: varname设置
#       (( exp )): 数字比较