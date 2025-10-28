set util_rpt_path "C:/Users/dell/Desktop/CAD/TCL/file_handling/util.rpt " 
set write_util_path "C:/Users/dell/Desktop/CAD/TCL/file_handling/write_util.rpt"
set fp [open $util_rpt_path r]
set fp_write [open $write_util_path w+]

while {[gets $fp each_line ] >= 0} {
     if {[regexp {Utilization Ratio} $each_line ]} {
     puts $fp_write $each_line
     }
}

close $fp
close $fp_write