#!/bin/bash

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


		./badloops <<< a
		echo "----------"		
		./badloops <<< ProgrammingCisAAAwesome
		echo "----------"
		./badloops <<< aaaaaaaaaaaaaaaahhhhhhhhhhhhhhhh
	echo "===================="		
	done
cd /home/grads/dai/CSCI1730/lab2
done







