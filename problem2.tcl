######################################
#Title:Beginner Problem 02(Fibonacci series) 
#Author:Md. Jamilur Rahman
#Version:01
#Date :29-11-2022
#####################################

set clockinput [clock clicks -microseconds]
puts "Enter a fibonacci series value: "
gets stdin n
set first_term 0
set second_term 1
set fibo 0
set next_term 0
set i 2
puts -nonewline "The fibonacci series is:  $first_term $second_term"
while {$i<$n} {
	set next_term [expr $first_term + $second_term]
	set fibo $next_term
	set first_term $second_term
	set second_term $next_term
	puts -nonewline " $fibo"
	incr i
	}
	


set clockoutput [clock clicks -microseconds]
set t [expr $clockoutput - $clockinput]
puts "\n\ntime stamp: $t us\n"

