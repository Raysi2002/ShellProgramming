echo "Enter filename"
read filename
echo "Enter word to delete"
read word
echo "File before deleting $word"
cat $filename
grep -v -i $word $filename > test
mv test $filename
echo "File after deleting $word"
cat $filename