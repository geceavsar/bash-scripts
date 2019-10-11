function gacp {
	argc=$#
	argv=("$@")
	while [ $argc -gt 0 ]
	do	
		if [ $argc -gt 1 ]
		then
			for (( i=0;i<$(($argc-1));i++ ))
			do
				git add ${argv[i]}
			done
		else
			git add .
		fi
		git commit -m "${argv[-1]}"
		git push origin
		return 1
	done
	echo not enough input arguments
}

