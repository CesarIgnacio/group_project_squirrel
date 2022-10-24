rAll:
	make run n=prog1
	make run n=prog2
	make run n=prog4
	make run n=Q3

run:
	gawk -f ${n} Squirrels.csv    