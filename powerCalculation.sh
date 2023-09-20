# echo "Enter number"
# read num
# echo "Enter power"
# read pow
# pow=$(( $num ** $pow ))
# echo "$pow"
if [ $# -gt 2 ]; then
    echo "Check the args"
    exit 1

elif [ $# -ne 2 ]; then
    echo "Usage: $0 <num> <pow>"
    exit 1
fi
result=$(($1 ** $2))
echo "$result"
