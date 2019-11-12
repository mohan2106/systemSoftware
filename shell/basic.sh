#! /bin/bash 
# you can use -x open for debugging on the first line the options
:<<'END'
(bash -x ./filename.sh) in the terminal
(/bin/bash -x) on the top
set -x
command to debugg
set +x
END
#this is comment
:<<'END'
This is multiline
comment
END

:<<'END'
echo "Enter two numbers:"
read -a no

# echo "Hello World $1 $2"
if [ ${no[0]} == ${no[1]} ]
then
    echo "${no[0]} and ${no[1]} are equal"
else
    echo "${no[0]} and ${no[1]} are not equal"

fi

# now implementing switch case
END
:<<'END'

# read -p "how much grade did you get: " marks
echo "Hello user please talk to me:) "

while :
do
    read inp
    case $inp in
        "hello") echo "Hello man!!!"
                ;;
        "bye") echo "Bye bye folks!!!"
                break
                ;;
        *) echo "Sorry i didn't get it"
                ;;
    esac
done
echo "Thats all folks"
END

:<<'END'
# remember if you are taking input from command line than if you take multiple input and gives only one input address in command than it read all the input in the array
echo 
read -p "Enter the names: " name1
read -sp "Enter the password " pass
echo
echo "ENtered name was $name1"
echo "password is $pass"
END
:<<'END'
read -p "enter two no: " a b|bc
if (( $a >= $b )) #can also be compared as [ $a == $b ] or [ $a -eq $b ]
then 
    echo " greater"
else 
    echo " less"

fi
END


:<<END
    when ever we use comparison between numbers with < or > operator than write the condition in doubly bracket instead big bracket (())
    while in case of string use [[]]  use double big bracket instead of singly big bracket

echo

a=24
b=12
c=12
if [ $a -ne $b ] && [ $b -eq $c ]
then 
    echo "got it"
else
    echo "not got it"
fi
END
:<<'END'
echo "$a"
echo "add is $(expr $a + $b )"
echo "addition of two no is $(( $a + $b ))"
echo "substraction of two no is $(( $a - $b ))"
echo "multiplication of two no is $(( $a * $b ))"
echo "scale=5;$(( $a / $b ))"|bc
echo "scale=3;20.5/5"|bc
END
:<<'END'
echo "Input array: " 
read -a arr
echo "${arr[@]}"
echo "${arr[2]}"
echo "${!arr[@]}"
echo "${#arr[@]}"
END
:<<'END'
case $1 in
    "car") echo "You entered a car";;
    "truck") echo "Looking for a truck";;
    * ) echo "gandu"
esac
END
n=1
# while [ $n -le 5 ]
:<<'END'
while :
do  
    read input
    echo "hi $input"
    if [[ $input == "stop" ]]
    then 
        break
    fi
done

until [ $n -ge 10 ]
do
    echo $n
    (( ++n ))
done

for (( i=0;i<5;i++ ))
do 
    echo $i
done
echo "enter few names"
read -a names
select name in ${names[@]}
do 
    echo $name selected
done
END
:<<'END'
set -x
# functions
function sayHello(){
    echo "hello user $1 $2"
}
read -p "your name? " name
sayHello $name
set  +x

echo $#
END
:<<'END'
read -p "input integer: " num
if [ $num -gt 0 ]
then
    echo "no is positive"
elif [ $num -eq 0 ]
then    
    echo "no is zero"
else    
    echo "no is negative"
fi
END

:<<'END'
read -p "Enter file name: " file
if [ -e $file ]
then    
    echo "File exist"
    if [ -r $file ]
    then   
        echo "file has read permission"
    else 
        echo "file don't have read permission"
    fi

    if [ -w $file ]
    then   
        echo "write permission"
    else    
        echo "not write"
    fi
else
    echo "not exist"
fi
END
:<<'END'
echo "input 5 number"
read -a num
sum=0
for i in ${num[@]}
do  
    echo $sum
    sum=$(( sum + i ))
done
echo "scale=3;$sum/5"|bc
END
# for (( i=1;i<5;i++ ))
# do 
#     res=$(( res * res ))
# done
# res=$(( a^b ))
# echo "scale=4;20.5^5"|bc

# read -p "input char " ch
# case $ch in
#     [a-z]) echo "lower case";;
#     [A-Z]) echo "upper case";;
#     [0-9]) echo "number";;
#     * ) echo "unknown entry";;
# esac

# function gcd(){
#     if [ $2 -eq 0 ]
#     then
#         echo $1
#     else
#         gcd $2 $(( $1 % $2 ))
#     fi
# }
# echo "enter 2 integers: "
# read a b
# gcd $a $b
# STRING="mohan is a good boy"
# echo ${STRING:1:10}
# echo ${STRING[@]//is/the}
#============================================================palindrom
# read -p "enter string: " string

# if [ $( echo $string|rev) == $string ]
# then    
#     echo "palindrom"
#     echo "Length of string is ${#string}"
# else    
#     echo "not"
# fi

#===========================================================select method
# select i in tea cofee water juice appe all none
# do  
#     case $i in
#         tea|cofee|water|all) echo "go to canteen";;
#         juice|apple) echo "available at home";;
#         none) break;;
#         * ) echo "invalide selection";;
#     esac
# done
#=============================================================no of line function
# function count(){
#     wc -l < $1
#     wc -w < $1
#     echo $(wc -c < $1)
# }
# read -p "file name: " file
# count $file


# a=20.5
# b=5
# echo "scale=3;$a/$b"|bc

echo "enter 2 3*3 matrix"
row=3
col=3

m1=()
m2=()
res=()

for (( i=0;i<row;i++ ))
do 
    m1[$i]=$i
    echo ${m1[$i]}
done    


