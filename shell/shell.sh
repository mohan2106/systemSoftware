#! /bin/bash

:<<'END'
this is multiline comment
END

# reading usernmae and password
	# read -p 'Username: ' uservar
	# read -sp 'Password:' passvar
	# echo
	# echo $uservar $passvar
:<<'END'
read -p "Enter any intiger: " i
if (( $i >= 1 ))
then 
    echo "No is positive"
elif (( $i <= -1 ))
then 
    echo "No is negative"
else
    echo "no is zero"
fi
END

# problem 09
:<<'END'
echo "enter filename :"
read file
if [ -e $file ]
then 
	echo "File exists" 
   if [ -r $file ]
   then	
	echo "File has read permission"
   else
	echo "File doesnt have read permission"
   fi
   if [ -w $file ]	
   then
	echo "File has write permission"
   else
	echo "File doesnt have write permission"
   fi   
   if [ -x $file ]
   then	
	echo "File has executable permission"
   else
     	echo "File doesnt have executable permission"
   fi
else	
	echo "File doesn't exists"
fi

END

#problem 10
:<<'END'
echo "please enter 5 intiger: "
read -a arr

sum=0
for i in ${arr[@]}
do
    sum=$(( $sum + i ))
    echo $sum
done
sum=$(( $sum / 5 ))
echo $sum
END

#problem 11
:<<'END'
a=20.5
b=5
echo "scale=4;$a^$b"|bc
END

#problem 12
:<<'END'
read -p "enter a char: " ch
case $ch in
    ([[:lower:]]) echo "lower case alphabet";;
    ([[:upper:]]) echo "Upper case alphabet";;
    ([[:digit:]]) echo "integer value";;
    *) echo "Special charecter";;
esac
END

# printf 'Please enter a character: '
# IFS= read -r c
# read c
# case $c in
#   ([[:lower:]]) echo lowercase letter;;
#   ([[:upper:]]) echo uppercase letter;;
#   ([[:alpha:]]) echo neither lower nor uppercase letter;;
#   ([[:digit:]]) echo decimal digit;;
#   (?) echo any other single character;;
#   ("") echo nothing;;
#   (*) echo anything else;;
# esac

#problem 13
:<<'END'
read -p "enetr two integer: " a b
read -p "enter operation: " x
case $x in
    ('+') echo "$a+$b"|bc;;
    ('-') echo "$a - $b"|bc;;
    ('*') echo "$a * $b"|bc;;
    (*) echo "invalid operator";;
esac
END
#problem 14

:<<'END'
function gcd(){
    if (( $2 == 0 ))
    then
        echo $1
    else
        gcd $2 $(( $1 % $2 ))   
    fi
}
read -p "enput two no for gcd: " a b
gcd $a $b
END

#problem 15
:<<'END'
while true
do
    read -p "Enter a string: " a
    if [[ $a == "Bye" ]]
    then 
        echo "Bye bye dear freind :)"
        break
    else
        echo "why did you type $a"
    fi
done
END

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


#problem 16
:<<'END'
for (( i = 0; i < 2; i++ )); do
	ls 
	pwd
	date
done
END
#problem 17

:<<'END'
read -p "enter a string to check palindrom: " a
if [[ $( echo $a|rev ) == $a ]]
then 
    echo "$a is a palindrom"
else
    echo "$a is not a palindrom"
fi
END

#problem 18
:<<'END'
read -p "ENter two file names: " a b
if [ -e $a ]
then
    if [ -e $b ]
    then 
        echo "both file  ( $a ) and ( $b ) exists"
    else
        echo "( $a ) exists"
    fi
else
    if [ -e $b ]
    then 
        echo "( $b ) exist"
    else
        echo "both ( $a ), ( $b ) not exists"
    fi
fi
END

#problem 19
#===========================================================select method
:<<'END'
select i in tea cofee water juice appe all none
do  
    case $i in
        tea|cofee|water|all) echo "go to canteen";;
        juice|apple) echo "available at home";;
        none) break;;
        * ) echo "invalide selection";;
    esac
done

select i in mohan sohan ram shyam ghanshyam none
do
    case $i in
        (mohan|sohan|ram) echo "Your friend";break;;
        (ram|shyam) echo "Your enemy";break;;
        (none) break;;
    esac
done
END
#problem 20
:<<'END'
function count(){
    cat $1 |wc -l
    cat $1 |wc -w
    cat $1 |wc -c
}
read -p "File name: " file
count $file
END

#problem 21
a=(1 2 3 4 5 6 7 8 9)
b=(11 12 13 14 15 16 17 18 19)
for (( i=0; i<3; i++ ))
do
    for (( j=0; j<3; j++ ))
    do
        ind1=$(( $i * 3 ))
        ind1=$(( $ind1 + $j ))
        ans=$(( ${a[$ind1]} + ${b[$ind1]} ))
        echo -n "$ans "
    done
    echo
done


