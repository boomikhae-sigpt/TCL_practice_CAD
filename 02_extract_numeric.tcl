set util_file_path "C:/Users/dell/Desktop/CAD/TCL/file_handling/util.rpt"

set fp [open $util_file_path r]
 
    while {[gets $fp each_line ] >= 0} {
        if {[regexp {^Total Capacity Area:\s+([0-9.]+)} $each_line match value ]} {
            puts $value 
            # puts $each_line

        }
        
    }

close $fp