echo "Enter 3 numbers"
read x
read y
read z
if [ $x -gt $y ] && [ $x -gt $z ]
then
    echo "X is greater"
elif [ $y -gt $x ] && [ $y -gt $z ]
then
    echo "Y is greater"
else
    echo "Z is greater"
fi