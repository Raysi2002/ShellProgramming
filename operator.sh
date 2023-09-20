echo "Enter x"
read x
echo "Enter y"
read y
sum=`expr $x + $y`
sub=`expr $x - $y `
mul=`expr $x \* $y`
div=`expr $x \/ $y`
mod=`expr $x \% $y`
echo "add = $sum"
echo "sub = $sub"
echo "mul = $mul"
echo "div = $div"
echo "mod = $mod"

