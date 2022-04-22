#!/bin/bash

space1="a b c d e f g h i j k l m n o p q r s t u v w x y z"
space2="a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z"
space3="a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z : . ; , _ - + < > ? = ( ) / % # $"
space4="a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z : . ; , _ - + < > ? = ( ) / % # $ 0 1 2 3 4 5 6 7 8 9"

if [  $# -le 1 ]
then
	echo "Ussage: " $0 SALT PASSWORD_CODED
	exit
fi
echo $2
echo $1
for i in $space4
do
	for j in $space4
	do
		for k in $space4
		do
			#echo $i$j$k
			variable=$(openssl passwd -crypt -salt "$1" "$i$j$k")
			if [ "$variable" = $2 ]
			then
				echo password found: $i$j$k
				exit
			fi
		done
	done
done
