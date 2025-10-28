set file_path "C:/Users/dell/Desktop/CAD/TCL/file_handling/util.rpt"

set fp [open $file_path r]

while {[gets $fp each_line] >= 0} {
    if {[regexp {Total Area:\s*([0-9.]+)} $each_line match total_area]} {
    } elseif {[regexp {Total Area of cells:\s*([0-9.]+)} $each_line match cells_area ]} {
        puts [expr $cells_area / $total_area * 100]
    }
}