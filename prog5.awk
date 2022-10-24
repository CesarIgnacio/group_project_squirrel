#!/usr/bin/awk

BEGIN {
    print "\nQ5: Finding the greater Age group:\n"
    JCount = 0
    ACount = 0
    UCount= 0
    total = 0
    ans1 = ""
    ans2 = ""
    FS =","
}


{
    if($8 == "Juvenile") {
        JCount++
    } else if($8 == "Adult") {
        ACount++
    } else {
        UCount++
    }

    if(JCount > ACount) {
        ans1 = "Juveniles"
        ans2 = "Adults"
    }

    else if(ACount > JCount) {
        ans1 = "Adults"
        ans2 = "Juveniles"
    }

}

END {

    perCJuvenile = JCount/(NR - 1)*100
    perCAdult = ACount/(NR - 1)*100
    perUnidentified = UCount/(NR - 1)*100

    printf "%s%d%s%.1f%s\n", "There are ", JCount, " juvenile squirrels. This represents the ", perCJuvenile, "% of the total"
    printf "%s%d%s%.1f%s\n", "There are ", ACount, " adult squirrels. This represents the ", perCAdult, "% of the total"
    printf "%s%d%s%.2f%s\n", "There are ", UCount, " squirrels that weren't identified as Juveniles or adults. This represents the ", perUnidentified, "% of the total"
    
    print "\nIn general, there are more " ans1 " than " ans2 " in Central Park\n"
}  