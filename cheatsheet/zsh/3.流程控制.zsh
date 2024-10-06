# 流程控制
# if-eles-end
if [[ exp ]]; then
    exp
elif [[ exp ]]; then
    exp
else
    exp
fi

# for
for name in word; do
    exp
done

for (( [expr1]; [expr2]; [expr3] )); do
    exp
done

# while
while [[ exp ]]; do
    exp
done

# until
until [[ exp ]]; do
    exp
done

# repeat
repeat word; do
    exp
done

# case
case word in 
    pattern [ | pattern ] ... )
        expr
        ;;
esac

# select 
select name [ in word ... term ]; do
    exp
done

# try-always
{
    try-list
} always {
    always-list
}