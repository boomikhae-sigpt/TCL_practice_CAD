set util_report_path "C:/Users/dell/Desktop/CAD/TCL/file_handling/util.rpt "

set fp [open $util_report_path r]

    while {[gets $fp each_line ] >= 0} {
        if {[regexp {^Total} $each_line] && ![regexp {cells} $each_line ]} {
            puts $each_line
        } 
    }

close $fp  