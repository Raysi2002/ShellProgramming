# Given two files each of which contains names of students. Create a program to display only those names that are found on both the files.
# echo "Enter first filename"
# read f1
# echo "Enter second filename"
# read f2
if [ $# -ne 2 ]; then
    echo "Usage: $0 <file1> <file2> "
    exit 1
fi
echo "File contains"
cat < $1
echo "File contains 2"
cat < $2

