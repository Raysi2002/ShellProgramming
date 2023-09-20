echo "Enter num1"
read num1
echo "Enter num2"
read num2
echo "Enter 1.Add 2.Subtract 3.Multipication 4.Division"
read input
if [$input -eq 1]
then
	value=$(($num1+$num2))
	echo "Add: $value"
elif [ $input -eq 2 ];
then
	value=$(($num1-$num2))
        echo "Add: $value"
elif [ $input -eq 3 ];
then
	value=$(($num1*$num2))
        echo "Add: $value"
elif [ $input -eq 4 ]; then
	value=$(($num1/$num2))
        echo "Add: $value"
else
	echo "No option is choosed"
fi


