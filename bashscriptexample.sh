#!/bin/bash

# echo "Welcome to Linux"

# read -p "Enter your name please: " NAME


# if statement
# if [ "$NAME" == "Umar" ]
# then 
#     echo "Welcome to Al-Quds yaa $NAME!"
# fi

# ##############################################################

# if-else statement
# if [ "$NAME" == "Musa" ]
# then
#     echo "Assalaamu alaykum "$NAME""
# else
#     echo "User not authorised"
# fi

# ##############################################################

# else-if (aka elif) - example 1
# if [ "$NAME" == "Musa" ]
# then
#     echo "Assalaamu alaykum "$NAME""
# elif [ "$NAME" == "Umar" ]
# then
#     echo "Your name is Umar" 
# else
#     echo "User not authorised"
# fi

# else-if (aka elif) - example 2
# if [ "$NAME" == "Musa" ]
# then
#     echo "Welcome home "$NAME" "
# elif [ "$NAME" == "Jack" ]
# then
#     echo "Monkeys are all yours "$NAME" "
# elif [ "$NAME" == "Umar" ]
# then
#     echo "Ok fine you can login brother "$NAME" "
# else
#     echo "User not authorised as "$NAME" is not in our database"
# fi

# ##############################################################

# Comparison

# NUM1=1100
# NUM2=200
# NUM3=25

# -eq
# -ne
# -gt
# -ge
# -lt
# -le

# if [ "$NUM1" -lt "$NUM2" ]
# then
#     echo ""$NUM1" is less than "$NUM2" "
# # else
# #     echo ""$NUM1" is greater than "$NUM2" "
# elif [ "$NUM1" -gt "$NUM2" ]
# then
#     echo ""$NUM1" is greater than "$NUM2" "
# else
#     echo ""$NUM1" is not greater than "$NUM2" "
# fi

# ##############################################################


# File Conditions

# FILE="monkey.txt"

# if [ -f "$FILE" ]
# then
#     echo "$FILE does indeed exist as a file."
# else
#     echo "$FILE does not exist"
# fi


# -d file     True if the file is a directory
# -e file     True if the file exists ( -f is typically used instead of this as -e is not thath portable)
# -f file     True if the provided string is a file
# -g file     True if the group id is set on a file
# -r file     True if the file is readable
# -s file     True if the file has a non-zero size
# -u          True if the user id is set on a file
# -w          True if the file is writable
# -x          True if the file is executable 

# ##############################################################


# CASE STATEMENT

# read -p "Are you 21 or over? Y/N " ANSWER

# case "$ANSWER" in
#     [yY] | [yY][eE][sS])
#         echo "You can drive a car :)"
#         ;;
#     [nN] | [nN][oO])
#         echo "Sorry, you cannot drive the car."
#         ;;
#     *)
#         echo "Invalid response. Please enter yes or no."
#         ;;
# esac


# ##############################################################

# SIMPLE LOOP

# NAMES="Jo Umar Mike Nabil"
# for NAME in $NAMES
# do 
# echo "Hello, your name is $NAME"
# done

# ##############################################################


# FOR LOOP TO RENAME FILES

# FILES=$(ls *.txt)
# APPEND="new"   # This renames each txt file by appending the word 'new' to it
#     for FILE in $FILES
#     do  # For each file (FILE) in the files variable (FILES)
#         echo "Renaming $FILE to new-$FILE"  # This prints out the relevant message
#         mv $FILE $APPEND-$FILE
#     done


# ##############################################################


# WHILE LOOP -RED THROUGH A FILE LINE BY LINE

# LINE=1
# while read -r CURRENT_LINE
#     do
#         echo "$LINE: $CURRENT_LINE" # $CURRENT_LINE represents the text of the line. 
#         ((LINE++))
#     done < "./rondo.txt"


# ##############################################################

# # FUNCTION

# function sayHELLO () {
#     echo "Hello Mr Windows"
# }
# sayHELLO

# ##############################################################

# FUNCTION WITH PARAMETERS

# function greet() {
#     echo "Hello, I am $1 and I am $2"
# }
# greet "Mark" "37"   # This calls the function and states the param of $1 and $2 in order. 

# ##############################################################

# CREATE FOLDER + WRITE TO A FILE

# mkdir hello
# touch "hello/juice.txt"
# echo "Hello world mr musa" >> "hello/juice.txt"
# echo "File juice.txt created"

# ##############################################################

# read -p "Enter as number: " NUM

# if [ $NUM -gt 0 ]
# then 
#     echo "The number $NUM is greater than 0, a positie number"
# elif [ $NUM -lt 0 ]
# then
#     echo "The number $NUM is less than 0, a negative number"
# elif [ $NUM -eq 0 ]
# then
#     echo "The number $NUM is equal to 0"


###############

git add .
git commit -am 'images'
git push
