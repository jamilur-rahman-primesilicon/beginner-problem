######################################
#Title:Beginner Problem 03(Assign Variable Value from a file) 
#Author:Md. Jamilur Rahman
#Version:01
#Date :29-11-2022
#####################################

set clockinput [clock clicks -microseconds]

proc fileproc {file_name} {
    if {[file exists $file_name]} {
	set fi [open "$file_name" r]
	    while {[gets $fi line] >=0} {
		if {[regexp {value} $line]} {
		    set val [lrange $line 1 end]
		}
		if {[regexp {variable_name} $line]} {
		    set var_name [lrange $line 1 end]
		}
	    }

	foreach item1 $var_name item2 $val {
	    puts " $item1 = $item2 "
	}

	close $fi
    } else { puts "\n\nError there no file exists in such name"}
}

puts -nonewline "Enter file name: "
flush stdout
gets stdin a
fileproc $a


set clockoutput [clock clicks -microseconds]
set t [expr $clockoutput - $clockinput]
puts "\n\ntime stamp: $t us"

