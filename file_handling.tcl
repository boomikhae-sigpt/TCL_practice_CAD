
set util_rpt "C:/Users/dell/Desktop/CAD/TCL/file_handling/util.rpt"

set fp_read [open $util_rpt r]


while {[gets $fp_read each_line ] >= 0} {
      # if {[regexp {^Total Area:} $each_line]} 
      #   if {[regexp {Capacity Area:} $each_line]} 
        if {[regexp {^Total Area:\s+([0-9.]+)} $each_line match area_value ]} {
              puts $area_value
              puts $each_line
      }
      
}

close $fp_read

set fp_write [open "C:/Users/dell/Desktop/CAD/TCL/WRITE.rpt" w+]

puts $fp_write $each_line
close $fp_write
