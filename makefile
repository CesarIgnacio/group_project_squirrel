rAll:
	make run n=prog1
	make run n=prog2

run:
	gawk -f ${n} 2018_Central_Park_Squirrel_Census_-_Squirrel_Data.txt    