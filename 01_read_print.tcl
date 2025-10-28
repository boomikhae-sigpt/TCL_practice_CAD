set util_rpt_path "C:/Users/dell/Desktop/CAD/TCL/file_handling/util.rpt"

set fp [open $util_rpt_path r]

    while {[gets $fp each_line] >= 0} {
         if {[regexp {Design} $each_line]} {
            puts $each_line
         }
    }

close $fp 