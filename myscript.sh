#!/bin/bash

#Prompt the user to enter a directory name
read -p "Enter a directory name: " dir_name

#Defining submission.txt and submission.txt
file1=submission1.txt
file2=submission2.txt

#Using the i condition
if [ -f "$dir_name" ]; then
	echo "Error $dir_name already exists as a file!"
elif [ -d "$dir_name" ]; then
	echo "Directory $dir_name already exist!"
	touch "$dir_name/$file1"
	touch "$dir_name/$file2"
elif [ -f "$dir_name/$file1" ]; then
	echo "the file $file1 already exist in the $dir_name"
elif [ -f "$dir_name/$file2" ]; then
	echo "the file $file2 already exist in the $dir_name"
elif [ ! -d "$dir_name" ]; then
	echo "Directory $dir_name doesn't exist"
	mkdir $dir_name
	touch "$dir_name/file1"
	touch "$dir_name/file2"
else
	echo "Welldone"
fi
