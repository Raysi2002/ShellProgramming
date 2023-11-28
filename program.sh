# 1.	Write a shell script that computes the gross salary of a employee according to the 
# following rules: The basic salary is entered interactively through the key board.
# i.	If basic salary is < 25000 then HRA =10% of the basic and DA =90% of the basic. 
# ii.	If basic salary is >=25000 then HRA =Rs500 and DA=98% of the basic. 

if [ $# -ne 1 ]; then
    echo "Usage: $0 <salary>"
    exit 1
fi
if [ $1 -ge 25000 ];then
    deducted=$(($1 * 10 / 100))
    HRA=$(($1 - deducted))
    echo "Dedcuted amount is $deducted"
    echo "Final amount is $HRA"
fi