#!/usr/bin/awk
BEGIN {
    print "Location of every Squirrel"
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
    print "North-East " NE;
    print "North-West " NW;
    print "South-East " SE;
    print "South-West " SW;
    print "There are " total " squirrels that live in the " max " part of Central Park";
    print "Majority of these Squirrels are "max " central park"; }