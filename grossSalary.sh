# 1.	Write a shell script that computes the gross salary of a employee according to the 
# following rules: The basic salary is entered interactively through the key board.
# i.	If basic salary is < 25000 then HRA =10% of the basic and DA =90% of the basic. 
# ii.	If basic salary is >=25000 then HRA =Rs500 and DA=98% of the basic.
# if [ $# -ne 1 ];then
#     echo "Usage: $0 <salary>"
#     exit 1
# fi
echo "Enter your salary:"
read salary
if [ $salary -lt 25000 ];then
    HRA=$(($salary * 10 / 100 ))
    DA=$(($salary * 90 / 100))
else
    HRA=$((500))
    DA=$(($salary * 98 / 100))
fi
grossSalary=$(($salary + $HRA + $DA))
echo "Salary: $salary"
echo "DA: $DA"
echo "HRA: $HRA" 
echo "Gross Salary:  $grossSalary"


