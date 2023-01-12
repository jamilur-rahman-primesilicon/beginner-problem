######################################
#Title:Beginner Problem 05(Prime Number)
#Author:Md. Jamilur Rahman
#Version:01
#Date :29-11-2022
#####################################

set clockinput [clock clicks -microseconds]

puts "Finding Prime numbers between ‘0-N’ please press 1"
puts "Finding Prime numbers between ‘M-N’ please press 2"
puts "Finding a number is prime or not please press 3"
gets stdin n
if {$n==1} {
    puts "Please enter the value of N:"
	gets stdin N
	set flag 1
	for {set j 2} {$j<=$N} {incr j} {
	    for {set i 2} {$i<$j} {incr i} {
		if {[expr $j%$i]==0} {
		    set flag 0
			break 
		} else {
		    set flag 1
		}

	    }
	    if {$flag} {
		puts -nonewline " $j"
	    }
	}
}
if {$n==2} {
    puts "Please enter the value of M-N:"
	gets stdin M
	gets stdin N
	set flag 1
	for {set j $M} {$j<=$N} {incr j} {
	    for {set i 2} {$i<$j} {incr i} {
		if {[expr $j%$i]==0} {
		    set flag 0
			break
		} else {
		    set flag 1
		}

	    }
	    if {$flag} {
		puts -nonewline "$j "
	    }
	}
}
if {$n==3} {
    puts "Please enter a number to check whether the number is prime or not :"
	gets stdin N
	if {$N ==0 || $N==1} {
	    puts "$N is not a prime number"
	} else {
	    set flag 1
		for {set i 2} {$i<$N} {incr i} {
		    if {[expr $N%$i]==0} {
			set flag 0
			    puts "$N is not a prime number"
			    break
		    } else {
			set flag 1
		    }

		}
	    if {$flag} {
		puts "$N is prime number"
	    }
	}
}

set clockoutput [clock clicks -microseconds]
set t [expr $clockoutput - $clockinput]
puts "\n\ntime stamp: $t us"
