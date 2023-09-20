if [ $# -ne 2 ];
then
    echo "Usage: $0 <num> <pow>"
    exit 1
fi
result=$(($1 ** $2))
echo "$result"
# Comment check