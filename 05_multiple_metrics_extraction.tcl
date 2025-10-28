set file_path "C:/Users/dell/Desktop/CAD/TCL/file_handling/util.rpt"

set fp [open $file_path r] 

while {[gets $fp each_line ] >= 0} {
    if {[regexp {Total Area:\s*([0-9.]+)} $each_line match area_value]} {
        puts "Total Area = $area_value"
    } elseif {[regexp {Total Capacity Area:\s*([0-9.]+)} $each_line match capacity_area]} {
        puts "Capacity Area = $capacity_area "
    } elseif {[regexp {Total Area of cells:\s*([0-9.]+)} $each_line match area_of_cell]} {
        puts "Cells Area =  $area_of_cell"
    }

}