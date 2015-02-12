#!/bin/bash

#to run type bash shellscript.sh > output.txt
#@author: Rich Dai

for i in `ls *.tar*`; do
	mkdir ${i%????????} 
	tar xvf ${i} -C ${i%????????}
	cd ${i%????????}
	echo "===================="
	echo ${PWD##*/}

	if [ " `find -type d` " != "" ]; then
		for f in `find -type d`; do
			cd ${f}
		done
	fi


	for f in *.c
	do
		echo "----------"
		cat $f
		echo "----------"
		make
		echo "----------"
		gcc -g -o badloops.c badloops

		#input1
		./badloops <<< a

		#input2
		echo "----------"		
		./badloops <<< ProgrammingCisAAAwesome

		#input3
		echo "----------"
		./badloops <<< aaaaaaaaaaaaaaaahhhhhhhhhhhhhhhh
	echo "===================="		
	done

#go back to the dir where you stored all the tar files
cd /home/grads/dai/CSCI1730/lab2
done







