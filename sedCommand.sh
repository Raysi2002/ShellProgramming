echo "Enter filename"
read filename
if [ ! -f $filename ]; then
echo "File doesn't exist"
else
echo "File does exists"
echo "Enter word"
read word
echo "Replacing word"
read replacingWord
echo "File after replacement"
sed "s/$word/$replacingWord/g" "$filename" > newCmd.txt
echo " $newCmd.txt "
fi