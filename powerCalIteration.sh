echo "Enter num1"
read num
echo "Enter pow"
read pow
p=$num
i=1
while [ $i -lt $pow ] 
do
    p=`expr $p \* $num`
    i=`expr $i + 1 `
done
echo "$p "
