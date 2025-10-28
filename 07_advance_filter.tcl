set file_path "C:/Users/dell/Desktop/CAD/TCL/file_handling/util.rpt"

set fp [open $file_path r]

while {[gets $fp each_line] >= 0} {
    if {[regexp {^((?!Total Capacity Area).)*(Area|Utilization)} $each_line ]} {
        puts $each_line
    }
}