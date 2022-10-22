#!/usr/bin/awk
BEGIN {
    print "\nDistribution of the squirrels in Central Park:\n"
    NE = 0
    NW = 0
    SE = 0
    SW = 0
    total = 0
}

{
    max = "";
    latitude = 40.785091;
    longitude = -73.968285;
        
    if($2 < latitude && $1 < longitude){
        SE++

    } else if($2 < latitude && $1 > longitude) {
        SW++

    } else if($2 > latitude && $1 < longitude) {
        NE++

    } else if($2 > latitude && $1 > longitude) {
        NW++
    }
        
if(NE > NW && NE > SE && NE > SW){
                total = NE
                max = "North-East"
        }
        else if(NW > NE && NW > SE && NW > SW ){
                total = NW
                max = "North-West"
        }
        else if(SE >= NE && SE >= NW && SE >= SW){
                total = SE
                max = "South-East"
        }
        else {
                total = SW
                max = "South-West"
        }
    
}

END {
    printf "%-10s%8s\n", "Location", "Amount"
    printf "%-10s%8s\n", "--------", "------"
    printf "%-10s%8d\n", "North-East", NE
    printf "%-10s%8d\n", "North-West", NW
    printf "%-10s%8d\n", "South-East", SE
    printf "%-10s%8d\n", "South-West", SW
    
    print "\nThe majority of these squirrels live in the "max " quadrant of Central Park,\nwith a total of " total " squirrels\n"
}