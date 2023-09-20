echo "Enter filename"
read file
echo "Converted from lowercase to upperCase"
tr '[a-z]' '[A-Z]' < $file