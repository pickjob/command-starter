" 
" 快捷键
"       允许重映射:
"           :map       {lhs}    {rhs}   
"           :map!      {lhs}    {rhs}
"           :nm[ap]    {lhs}    {rhs}: Normal / Visual Mode映射
"           :vm[ap]    {lhs}    {rhs}: Visual Mode映射
"           :im[ap]    {lhs}    {rhs}: Insert Mode映射
"           :cm[ap]    {lhs}    {rhs}: Command Mode映射
"       不允许重映射:
"           :n[ore]map  {lhs}    {rhs}: Normal / Visual Mode映射
"           :i[nore]map {lhs}    {rhs}: Insert Mode映射
"           :v[nore]map {lhs}    {rhs}: Visual Mode映射
"           :c[nore]map {lhs}    {rhs}: Command Mode映射
"       [options]  {lhs}  {rhs}
"           optons:
"               <buffer>: 当前缓冲区
"               <nowait>: 不再等待输入
"               <silent>: 不在命令行上回显 
"               <special>:
"               <script>:
"               <expr>: 参数会作为表达式来进行计算
"               <unique>: 已经存在, 则该命令会失败
"           lhs
"               <F2> ...
"               <C-c>
"               <S-c>
"               <A-c> / <M-c>
"               <CR>
"               <Plug>  在脚本外部是可见的
"               <SID>   是脚本的ID
"       :unmap  {lhs}