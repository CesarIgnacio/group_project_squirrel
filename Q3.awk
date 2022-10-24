#!/usr/bin/awk
BEGIN {
	print "\nQ3: Ratio of Single Colored and Multicolored squirrel fur:\n"
	multi = 0;
	single =0;
	Sqrl = 0;
	FS = ","
}

{

	if($10){
		multi++
	}
	else{
		single++
	}
	Sqrl++
	
}

END {
	multiP = (multi/Sqrl)*100
	singleP = (single/Sqrl)*100

	printf "%11s%11s%7s\n", "S.Colored", "M.Colored", "Total"
	printf "%11s%11s%7s\n", "---------", "---------", "-----"
	printf "%9d%11d%9d\n\n", single, multi, (NR - 1)
	
	printf "%s%.1f%s\n", "Out of ", Sqrl, " Squirrels"
	printf "\t- %.1f%s\n", multiP, "% have multiple fur colors, and"
	printf "\t- %.1f%s\n\n", singleP, "% have only one fur color"
}