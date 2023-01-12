puts "Enter a list of number to calculate"
gets stdin list1
set N [llength $list1]
set sum 0.0
set avg 0
set squareroot 0
set stderror 0
set stddv 0
foreach item $list1 {
	set sum [expr $sum + $item]
}
puts "summation is =$sum"
set avg [expr $sum/$N]
puts "average is [format %0.3f $avg]"
set squareroot [expr sqrt([lindex $list1 end])]
puts "squreroot of end number is [format %0.3f $squareroot]"
foreach item2 $list1 { 
	set stderror [expr $stderror + ($item2 -$avg)**2]
}
set stddv [expr sqrt($stderror/($N -1))]
puts "stddv is [format %0.3f $stddv]"
