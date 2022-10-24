BEGIN {
    FS = ","
    print "\nHow do squirrels react to a camera / person with a camera?\n"
    
    runs = 0
    no_runs = 0
    approaches = 0
    no_approaches = 0
    indifferents = 0
    no_indifferents = 0

    no_runs_indifferents = 0
    no_runs_no_indifferents = 0
    
    no_runs_no_indifferents_approaches = 0
    no_runs_no_indifferents_no_approaches = 0
}

{
    if($29 == "true")
        runs++
    else {
        no_runs++
        if($28 == "true") {
            no_runs_indifferents++
        } else {
            no_runs_no_indifferents++
            if($27 == "true") {
                no_runs_no_indifferents_approaches++
            } else {
                no_runs_no_indifferents_no_approaches++
            }
        }
    }

    if($28 == "true")
        indifferents++
    else
        no_indifferents++

    if($27 == "true")
        approaches++
    else
        no_approaches++
}

END {
    print "\nThere are " runs " squirrels that run from the camera, and " no_runs " that don't run."
    print "\t- Out of the " no_runs " that don't run, " no_runs_indifferents " are indifferent , and " no_runs_no_indifferents " that aren't"
    print "\t\t-- Out of the " no_runs_no_indifferents " no indifferent ones, " no_runs_no_indifferents_approaches " approaches, and " no_runs_no_indifferents_no_approaches " don't\n"

    print "\nThere are " approaches " squirrels that approaches, and " no_approaches " that don't approaches"
    print "There are " indifferents " squirrels that indifferent to the camera, and " no_indifferents " that aren't"
    print "There are " runs " squirrels that run from the camera, and " no_runs " that don't\n"
}