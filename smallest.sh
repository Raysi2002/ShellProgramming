echo "Enter 3 numbers"
read x
read y
read z
if [ $x -lt $y ] && [ $x -lt $z ]
then
    echo "X is smallest"
elif [ $y -lt $x ] && [ $y -lt $z ]
then
    echo "Y is smallest"
else
    echo "Z is smallest"
fi