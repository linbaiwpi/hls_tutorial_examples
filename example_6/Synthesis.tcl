open_project hls 
open_solution example6 
set_part xcku5p-sfvb784-3-e 
add_files -cflags "-DHLSLIB_SYNTHESIS -std=c++11 -I../hlslib/include" "Example6.cpp Entry.cpp" 
set_top Entry 
create_clock -period 300Hz -name default
config_rtl -disable_start_propagation
csynth_design
exit
