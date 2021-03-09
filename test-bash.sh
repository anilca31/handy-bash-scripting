#!/bin/bash
# Printing System Variables

#-------------------------------------------------------------------------------

#Print Bash shell name
echo $BASH
 
# Print Bash shell Version
echo $BASH_VERSION
 
# Print Home directory name
echo $HOME

#-------------------------------------------------------------------------------

#Declare variable without any type
num=10
 
#Values will be combined but not added

result=$num+20
echo $result
 
#Declare variable with integer type
declare -i num=10
 
#Values will be added
declare -i result=num+20
echo $result
#-------------------------------------------------------------------------------

#Print the text [Single line comment]
echo "Bash Programming"
<<addcomment
Calculate the sum
Of two numbers [multiline comment]
addcomment
num=25+35
echo $num
: '
Combine two
String data [multiline comment]
'
String="Hello"
echo $String " World"
#-------------------------------------------------------------------------------

str1="PHP"
str2="Bash"
str3="Perl"
 
# Print string together with space
echo $str1 $str2 $str3
 
#Combine all variables and store in another variable
str="$str1, $str2 and $str3"
 
#Combine other string data with the existing value of the string
str+=" are scripting languages"
 
#Print the string
echo $str
#-------------------------------------------------------------------------------

#Print the text
echo "Welcome to LinuxHint"
site="linuxhint.com"
#Print the formatted text
printf "%s is a popular blog site\n" $site
#-------------------------------------------------------------------------------

#Print message
echo "Enter your name"
#Take input from the user
name = anil
# *** read name
# Print the value of $name with other string
echo "Your name is $name"
#-------------------------------------------------------------------------------

#Check any argument is provided or not
echo $#
echo $*
echo $@
# if [[ $# -eq 0 ]]; then
if [[ $# == 0 ]]; then
    echo "No argument is given."
    exit 0
fi

#Store the first argument value
color=$1
# Print the argument with other string
printf "You favorite color is %s\n" $color

#-------------------------------------------------------------------------------

# The following script will print the second word of each line from course.txt file.
# the output of cat command will pass to awk command that will read the second word
# of each line.
echo `cat course.txt | awk '{print $2}'`

#-------------------------------------------------------------------------------

# Declare a simple numeric array
arr1=( CodeIgniter Laravel ReactJS )

# Print the first element value of $arr1                                        
echo ${arr1[0]}      
                 
# Declare a numeric array using declare command                                    
declare -a arr2=( HTML CSS JavaScript )  
     
# Print the second element value of $arr2                            
echo ${arr2[1]}              
           
# Declare an associative array using declare statement                                  
declare -a arr3=([framework]=Laravel [CMS]=Wordpress [Library]=JQuery)

# Print the third element value of $arr3    
echo ${arr3[Library]}

#-------------------------------------------------------------------------------
<<comment
Six types of comparison operators can be used in bash to compare values. 
There are two ways to use these operators in bash depending on the data type.  
These are mentioned below.
String Comparison 	Integer Comarison 	Description
== 	-eq 	It is used to check equality
!= 	-ne 	It is used to check inequality
< 	-lt 	It is used check the first value is less than the second value or not
> 	-gt 	It is used check the first value is greater than the second value or not
<= 	-le 	It is used check the first value is less than or equal to the second value or not
>= 	-ge 	It is used check the first value is greater than or equal to the second value or not

comment
#-------------------------------------------------------------------------------

# Assign a value to $n
n=30
# Check $n is greater than 100 or not
if [ $n -gt 100 ]; then
    echo "$n is less than 100"
# Check $n id greater than 50 or not
elif [ $n -gt 50 ]; then
    echo "$n is less than 50"
else
    echo "$n is less than 50"
fi

# Initialize $n
n=130
o="even"
# Check $n is greater than or equal to 100 or not using ‘–ge’.
if [ $n -ge 100 ]; then
     echo "$n is greater than or equal to 100"
else
     echo "$n is less than 100"
fi
# Check $n is even or odd using ‘==’ operator
if (( $o == "even" )); then
     echo "The number is even"
else
     echo "The number is odd"
fi
#-------------------------------------------------------------------------------

#Initialize the variable $ticket
ticket=23
# Compare the value of $ticket with 23, 101 and 503
case $ticket in
23)
# Print message if the value is 23  
echo "hello world"
echo "You got the first prize";;
101)
# Print message if the value is 101
echo  "You got the second prize";;
503)
# Print message if the value is 503
echo  "You got the third prize";;
*)
# Print message if the value does not match with 23, 101 and 503
echo "Sorry, try for the next time"
exit 0;;
esac

#-------------------------------------------------------------------------------

# Initialize the variable $x and $y which are global
x=10
y=35

# Declare the function
myFunc () {
   # Declare the local variable $x
   local x=15

   # Re-assign the global variable $y
    y=25

   # Calculate the sum of $x and $y
    z=$((x+y))

   # Print the sum of a local variable, $x, and global variable, $y
   echo "The sum of $x and $y equal to $z"
}

# Call the function
myFunc

# Print the sum of global variables, $x, and $y
echo "The sum of $x and $y equal to $z"
#-------------------------------------------------------------------------------

# Initialize a string value into $string
string="Python Scripting Language"
# Cut the string value from the position 7 to the end of the string
echo ${string:7}
# Cut the string value of 9 characters from the position 7
echo ${string:7:9}
# Cut the string value from 17 to 20
echo ${string:17:2}

#-------------------------------------------------------------------------------

# Calculating the subtraction by using expr and parameter expansion
var1=$( expr 120 - 100 )
# print the result
echo $var1
# Calculate the addition by using let command
let var2=200+300
# Print the rsult
echo $var2
# Calculate and print the value of division using ‘bc’ to get the result
# with fractional value
echo "scale=2; 44/7" | bc
# Calculate the value of multiplication using double brackets
var3=$(( 5*3 ))
# Print the result
echo $var3

#-------------------------------------------------------------------------------
# Assign the directory with path in the variable, $path
path="/home/ubuntu/temp"
# Check the directory exists or not
if [ -d "$path" ]; then
   # Print message if the directory exists
   echo "Directory exists"
else
   # Print message if the directory doesn’t exist
   echo "Directory not exists"
fi

#-------------------------------------------------------------------------------
# Initialize the filename to the variable, $filename
filename="course.txt"

# Check the file exists or not by using -f option
if [ -f "$filename" ]; then
    # Print message if the file exists
    echo "$filename exists"
else
    # Print message if the file doesn't exist
    echo "$filename not exists"
    # Terminate the script
    exit 1
fi

# Count the length of the file if the file exists
length=`wc -c $filename`

# Print the length of the file
echo "Total characters - $length"

#-------------------------------------------------------------------------------
# Initialize $n
n=5
# Calculate the square of 5-1 using while loop
while [ $n -gt 0 ]
do
   sqr=$((n*n))
   echo "The square of $n is $sqr"
   ((n--))
done

# Calculate the square of 5-1 using for loop
for (( i=5; i>0; i-- ))
do
   sqr=$((i*i))
   echo "The square of $i is $sqr"
done

# Initialize $x
x=5

# Calculate the square of 5-1 using until loop
until [ $x -le 0 ]
do
   sqr=$((x*x))
   echo "The square of $x is $sqr"
   ((x--))
done
#-------------------------------------------------------------------------------

<<comment
Many options are available in bash to test file. Some options are mentioned below.
Option 	Description
-f 	It is used to test the file exists and it is a regular file.
-e 	It is used to test the file exists only.
-r 	It is used to test the file exists and it has read permission.
-w 	It is used to test the file exists and it has to write permission.
-x 	It is used to test the file exists and it has execution permission.
-d 	It is used to test the directory exists.
-L 	It is used to test the file exists and It is a symbolic link.
-S 	It is used to test the file exists and It is a socket.
-b 	It is used to test the file is a block device.
-s 	It is used to check the file is not zero sizes.
-nt 	It used to check the content of the first file is newer than the second file. For example, file1 -nt file2 indicates that file1 is newer than file2.
-ot 	It used to check the content of the first file is older than the second file. For example, file1 -ot file2 indicates that file1 is older than file2.
-ef 	It is used to check that two hard links refer to the same file. For example, flink1 -ef flink2 indicates that flink1 and flink2 are hard links and both refer to the same file.
comment
#-------------------------------------------------------------------------------
: `
The full form of ‘bc’ is Bash Calculator to perform arithmetic operations more accurately in bash. 
The fractional part is omitted if any arithmetic operation is done in bash by using ‘expr’ command. 
The fractional part can be rounded also by using scale value with ‘bc’ command.
comment
`
echo "Bash Calculator"
# Calculate the division without the fractional value
echo "39/7" | bc
 
# Calculate the division with the full fractional value
echo "39/7" | bc -l
 
# Calculate the division with three digits after the decimal point
echo "scale=3; 39/7" | bc
#-------------------------------------------------------------------------------

<<comment
There are many ways to print a particular line in bash. How the ‘awk’, ‘sed’ and ‘tail’ commands 
can be used to print a particular line of a file in bash is shown in the following example.
comment

# Read and store the first line from the file by using `awk` command with NR variable
line1=`awk '{if(NR==1) print $0}' course.txt`
# Print the line
echo $line1

# Read the second line from the file by using `sed` command with -n option
line2=`sed -n 2p course.txt`
# Print the line
echo $line2
                         
# Read the last line from the file by using `tail` command with -n option
line3=`tail -n 1 course.txt`
# Print the file
echo $line3

#-------------------------------------------------------------------------------

<<comment
IFS is a special shell variable. The full form of IFS is Internal Field Separator,
it acts as delimiter to separate the word from the line of text. 
It is mainly used for splitting a string, reading a command, replacing text etc.

comment

# Declare ':' as delimiter for splitting the text
IFS=";"
# Assign text data with ':' to $text
text="Red:Green;Blue"
# for loop will read each word after splitting the text based on IFS
for val in $text; do
    # Print the word
    echo $val
done

#-------------------------------------------------------------------------------

# Count length using `expr` length option
# echo `expr length "I like PHP"`
# Count length using `wc` command
echo "I like Bash" | wc -c
# Count length using `awk` command
echo "I like Python" | awk '{print length}'