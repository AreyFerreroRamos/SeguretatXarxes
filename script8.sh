#!/bin/bash

space1="a b c d e f g h i j k l m n o p q r s t u v w x y z"
space2="a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z"
space3="a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z : . ; , _ - + < > ? = ( ) / % #"
space4="a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z : . ; , _ + < > ? = ( ) / % # 0 1 2 3 4 5 6 7 8 9"

if [  $# -le 1 ]
then
	echo "Ussage: " $0 SALT PASSWORD_CODED
	exit
fi
echo $2
echo $1
for i in $space1
do
	for j in $space1
	do
		for k in $space1
		do
			for l in $space1
			do
				for m in $space1
				do
					for n in $space1
					do
						for p in $space1
						do
							for q in $space1
							do
								#echo $i$j$k$l$m$n$p$q
								variable=$(openssl passwd -crypt -salt "$1" "$i$j$k$l$m$n$p$q")
								if [ "$variable" = $2 ]
								then
									echo password found: $i$j$k$l$m$n$p$q
									exit
								fi
							done
						done
					done
				done
			done
		done
	done
done
