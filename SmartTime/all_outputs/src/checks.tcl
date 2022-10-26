#Clock Constraint Check
countPattern "CLKIN,Clock Constraint.*10.000" 0

#Input Delay Constraint Check
grepPattern "Output Delay Constraint.*1.200" 2 

if { $err == 0 } \
{
    puts "\nINFO:_TC Test run PASSED with 0 errors";
} \
else \
{
    puts "\nERROR:_TC Test run FAILED";
	
}