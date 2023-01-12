######################################
#Title:Beginner Problem 01 (Calculation a list of Number)
#Author:Md. Jamilur Rahman
#Version:01
#Date :29-11-2022
#####################################

set clockinput [clock clicks -microseconds]


puts "Enter a list of number"
gets stdin list1
set N [llength $list1]
set sum 0.0
set average 0
set squareroot 0
set standarderror 0
foreach item $list1 {
	set sum [expr $item+$sum]
	}
puts "Sum = $sum"
set average [expr $sum/$N]
puts "Avg = [format %0.3f $average]"
set squareroot [expr sqrt([lindex $list1 end])]
puts "Sqrt = [format %0.3f $squareroot]"
foreach item2 $list1 {
	set standarderror [expr $standarderror + ($item2 -$average)**2]
	}
set standarddeviation [expr sqrt($standarderror/[expr $N -1 ])]
puts "Standard deviation : [format %0.3f $standarddeviation]"



set clockoutput [clock clicks -microseconds]
set t [expr $clockoutput - $clockinput]
puts "time stamp: $t us"
                              
