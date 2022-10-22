BEGIN {
    print "Frequency of every squirrel primary fur color"
    gray = 0
    cinnamon = 0
    black = 0
    unidentify = 0
}

{
    if($9 == "Gray"){
        gray++
    } else if($9 == "Cinnamon") {
        cinnamon++
    } else if($9 == "Black") {
        black++
    } else {
        unidentify++
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
    print "The most commun fur color is " greatets
    printf "%-12s%d\n","Cinnamon",cinnamon
    printf "%-12s%d\n","Black",black
    printf "%-12s%d\n","Gray",gray
    printf "%-12s%d\n","Unidentify",unidentify
}