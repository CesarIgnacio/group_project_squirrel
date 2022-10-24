BEGIN {
    FS = ","
    print "\nFrequency of every squirrel primary fur color:\n"

    gray = 0
    cinnamon = 0
    black = 0
    unidentify = 0
    
    adultGray = 0
    adultCinnamon = 0
    adultBlack = 0
    adultUnidentify = 0

    juvenileGray = 0
    juvenileCinnamon = 0
    juvenileBlack = 0
    juvenileUnidentify = 0
}

{
    if($9 == "Gray"){
        gray++
        $8 == "Adult" ? adultGray++ : juvenileGray++;
    } else if($9 == "Cinnamon") {
        cinnamon++
        $8 == "Adult" ? adultCinnamon++ : juvenileCinnamon++;
    } else if($9 == "Black") {
        black++
        $8 == "Adult" ? adultBlack++ : juvenileBlack++;
    } else {
        unidentify++
        $8 == "Adult" ? adultUnidentify++ : juvenileUnidentify++;
    }

    if(gray > cinnamon && gray > black) {
        greatets = "Gray"
    } else if(cinnamon > gray && cinnamon > black) {
        greatets = "Cinnamon"
    } else if(black > cinnamon && black > gray) {
        greatets = "Black"
    } else {
        greatets = "Unidentify"
    }
}

END {

    printf "%-12s%6s%8s%7s%10s%7s\n","Color","Amount","Adults","%","Juvenile","%"
    printf "%-12s%6s%8s%7s%10s%7s\n","-----","------","------","-","--------","-"
    
    percentA = adultCinnamon / (NR - 1) * 100
    percentJ = juvenileCinnamon / (NR - 1) * 100
    printf "%-12s%6d%8d%7.1f%10d%7.1f\n", "Cinnamon", cinnamon, adultCinnamon, percentA, juvenileCinnamon, percentJ
    
    percentA = adultBlack / NR * 100
    percentJ = juvenileBlack / (NR - 1) * 100
    printf "%-12s%6d%8d%7.1f%10d%7.1f\n", "Black", black, adultBlack, percentA, juvenileBlack, percentJ
    
    percentA = adultGray / (NR - 1) * 100
    percentJ = juvenileGray / (NR - 1) * 100
    printf "%-12s%6d%8d%7.1f%10d%7.1f\n", "Gray", gray, adultGray, percentA, juvenileGray, percentJ
    
    percentA = adultUnidentify / (NR - 1) * 100
    percentJ = juvenileUnidentify / (NR - 1) * 100
    printf "%-12s%6d%8d%7.1f%10d%7.1f\n", "Unidentify", unidentify, adultUnidentify, percentA, juvenileUnidentify, percentJ
    
    print "\nThe MOST common fur color is " greatets
    print "Total number of squirrels " (NR - 1) "\n"
}