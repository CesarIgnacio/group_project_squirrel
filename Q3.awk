#!/usr/bin/awk
BEGIN{print "Ratio of multicolored and single colored squirrel fur "
	multi = 0; single =0; Sqrl = 0;FS = "," }
{
	#print $9,$10
	if($10){
		multi++
	}
	else{
		single++
	}
	Sqrl++
	
}
END{
	multi = (multi/Sqrl)*100
	single = (single/Sqrl)*100
	print "Out of "Sqrl" Squirrels"
	print multi"% have multiple fur colors and"
	print single"% have only one fur color"
}