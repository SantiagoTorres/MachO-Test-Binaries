#!/bin/sh 

# This is used to build the Results directory for future comparison


# Commented out lines are either tests that failed to run initially
# Or tests that took too long to run so were omitted from this script



#x86 tests 

./RopTool -f x86/MachO-OSX-x86-ls -c luaScipts/x86/call_reg.lua | tail -n +7 >  Results/Test1
./RopTool -f x86/MachO-OSX-x86-ls -c luaScipts/x86/pop_ecx.lua | tail -n +7 >  Results/Test2
./RopTool -f x86/MachO-OSX-x86-ls -c luaScipts/x86/pvtdown.lua | tail -n +7 >  Results/Test3
./RopTool -f x86/MachO-OSX-x86-ls -c luaScipts/x86/pvtfinder.lua | tail -n +7 >  Results/Test4
./RopTool -f x86/MachO-OSX-x86-ls -c luaScipts/x86/pvtfinder2.lua | tail -n +7 >  Results/Test5
./RopTool -f x86/MachO-OSX-x86-ls -c luaScipts/x86/vcall.lua | tail -n +7 >  Results/Test6
./RopTool -f x86/MachO-OSX-x86-ls -c luaScipts/x86/vcall2.lua | tail -n +7 >  Results/Test7
./RopTool -f x86/MachO-OSX-x86-ls -c luaScipts/x86/transfer_arith_with_branch.lua | tail -n +7 >  Results/Test8

#x64 tests ( ommitted all filezilla tests due to their size) 


./RopTool -c luaScipts/x64/call_reg.lua -f x64/cat | tail -n +7 >  Results/Test9
./RopTool -c luaScipts/x64/call_reg.lua -f x64/chmod | tail -n +7 >  Results/Test10 
./RopTool -c luaScipts/x64/call_reg.lua -f x64/cp | tail -n +7 >  Results/Test11
./RopTool -c luaScipts/x64/call_reg.lua -f x64/csh | tail -n +7 >  Results/Test12
./RopTool -c luaScipts/x64/call_reg.lua -f x64/date | tail -n +7 >  Results/Test13
./RopTool -c luaScipts/x64/call_reg.lua -f x64/dd | tail -n +7 >  Results/Test14 
./RopTool -c luaScipts/x64/call_reg.lua -f x64/df | tail -n +7 >  Results/Test15 
./RopTool -c luaScipts/x64/call_reg.lua -f x64/domainname | tail -n +7 >  Results/Test16
./RopTool -c luaScipts/x64/call_reg.lua -f x64/echo | tail -n +7 >  Results/Test17
./RopTool -c luaScipts/x64/call_reg.lua -f x64/ed | tail -n +7 >  Results/Test18
./RopTool -c luaScipts/x64/call_reg.lua -f x64/expr | tail -n +7 >  Results/Test19 
./RopTool -c luaScipts/x64/call_reg.lua -f x64/hostname | tail -n +7 >  Results/Test20
./RopTool -c luaScipts/x64/call_reg.lua -f x64/kill | tail -n +7 >  Results/Test21
#Failed Core Dumped
#./RopTool -c luaScipts/x64/call_reg.lua -f x64/ksh | tail -n +7 >  Results/Test22
#Failed Core Dumped
#./RopTool -c luaScipts/x64/call_reg.lua -f x64/launchctl | tail -n +7 >  Results/Test23
./RopTool -c luaScipts/x64/call_reg.lua -f x64/link | tail -n +7 >  Results/Test24
./RopTool -c luaScipts/x64/call_reg.lua -f x64/ln  | tail -n +7 >  Results/Test25 
./RopTool -c luaScipts/x64/call_reg.lua -f x64/ls | tail -n +7 >  Results/Test26
./RopTool -c luaScipts/x64/call_reg.lua -f x64/MachO-OSX-x64-ls | tail -n +7 >  Results/Test27
./RopTool -c luaScipts/x64/call_reg.lua -f x64/mkdir | tail -n +7 >  Results/Test28 
./RopTool -c luaScipts/x64/call_reg.lua -f x64/mv | tail -n +7 >  Results/Test29 
./RopTool -c luaScipts/x64/call_reg.lua -f x64/pax | tail -n +7 >  Results/Test30
./RopTool -c luaScipts/x64/call_reg.lua -f x64/ps | tail -n +7 >  Results/Test31
./RopTool -c luaScipts/x64/call_reg.lua -f x64/pwd | tail -n +7 >  Results/Test32
./RopTool -c luaScipts/x64/call_reg.lua -f x64/rcp | tail -n +7 >  Results/Test33
./RopTool -c luaScipts/x64/call_reg.lua -f x64/rm | tail -n +7 >  Results/Test34
./RopTool -c luaScipts/x64/call_reg.lua -f x64/rmdir | tail -n +7 >  Results/Test35
./RopTool -c luaScipts/x64/call_reg.lua -f x64/sleep | tail -n +7 >  Results/Test36
./RopTool -c luaScipts/x64/call_reg.lua -f x64/stty | tail -n +7 >  Results/Test37
./RopTool -c luaScipts/x64/call_reg.lua -f x64/tcsh | tail -n +7 >  Results/Test38
./RopTool -c luaScipts/x64/call_reg.lua -f x64/test | tail -n +7 >  Results/Test39
./RopTool -c luaScipts/x64/call_reg.lua -f x64/unlink | tail -n +7 >  Results/Test40
./RopTool -c luaScipts/x64/call_reg.lua -f x64/wait4path | tail -n +7 >  Results/Test41 
#Failed Core Dumped
#./RopTool -c luaScipts/x64/call_reg.lua -f x64/zsh | tail -n +7 >  Results/Test42 




#x86_64_FAT tests ( ommitted MachO-OSX-ppc-and-i386-bash due to size) 
#As x86 

# Too Slow
#./RopTool -a x86 -f x86_64_FAT/bash -c luaScipts/x86/call_reg.lua | tail -n +7 >  Results/Test43
#./RopTool -a x86 -f x86_64_FAT/bash -c luaScipts/x86/pop_ecx.lua | tail -n +7 >  Results/Test44
./RopTool -a x86 -f x86_64_FAT/bash -c luaScipts/x86/pvtdown.lua | tail -n +7 >  Results/Test45
#./RopTool -a x86 -f x86_64_FAT/bash -c luaScipts/x86/pvtfinder.lua | tail -n +7 >  Results/Test46
# Too Slow
#./RopTool -a x86 -f x86_64_FAT/bash -c luaScipts/x86/pvtfinder2.lua | tail -n +7 >  Results/Test47 
#./RopTool -a x86 -f x86_64_FAT/bash -c luaScipts/x86/vcall.lua | tail -n +7 >  Results/Test48
# Too Slow
#./RopTool -a x86 -f x86_64_FAT/bash -c luaScipts/x86/vcall2.lua | tail -n +7 >  Results/Test49
# Too Slow
#./RopTool -a x86 -f x86_64_FAT/bash -c luaScipts/x86/transfer_arith_with_branch.lua | tail -n +7 >  Results/Test50



# # Way Too Slow
./RopTool -a x86 -f x86_64_FAT/sh -c luaScipts/x86/call_reg.lua | tail -n +7 >  Results/Test51
#./RopTool -a x86 -f x86_64_FAT/sh -c luaScipts/x86/pop_ecx.lua | tail -n +7 >  Results/Test52
#./RopTool -a x86 -f x86_64_FAT/sh -c luaScipts/x86/pvtdown.lua | tail -n +7 >  Results/Test53 
#./RopTool -a x86 -f x86_64_FAT/sh -c luaScipts/x86/pvtfinder.lua | tail -n +7 >  Results/Test54
#./RopTool -a x86 -f x86_64_FAT/sh -c luaScipts/x86/pvtfinder2.lua | tail -n +7 >  Results/Test55
#./RopTool -a x86 -f x86_64_FAT/sh -c luaScipts/x86/vcall.lua | tail -n +7 >  Results/Test56 
#./RopTool -a x86 -f x86_64_FAT/sh -c luaScipts/x86/vcall2.lua | tail -n +7 >  Results/Test57 
#./RopTool -a x86 -f x86_64_FAT/sh -c luaScipts/x86/transfer_arith_with_branch.lua | tail -n +7 >  Results/Test58 


./RopTool -a x86 -f x86_64_FAT/sync -c luaScipts/x86/call_reg.lua | tail -n +7 >  Results/Test59
./RopTool -a x86 -f x86_64_FAT/sync -c luaScipts/x86/pop_ecx.lua | tail -n +7 >  Results/Test60
./RopTool -a x86 -f x86_64_FAT/sync -c luaScipts/x86/pvtdown.lua | tail -n +7 >  Results/Test61
./RopTool -a x86 -f x86_64_FAT/sync -c luaScipts/x86/pvtfinder.lua | tail -n +7 >  Results/Test62
./RopTool -a x86 -f x86_64_FAT/sync -c luaScipts/x86/pvtfinder2.lua | tail -n +7 >  Results/Test63
./RopTool -a x86 -f x86_64_FAT/sync -c luaScipts/x86/vcall.lua | tail -n +7 >  Results/Test64 
./RopTool -a x86 -f x86_64_FAT/sync -c luaScipts/x86/vcall2.lua | tail -n +7 >  Results/Test65 
./RopTool -a x86 -f x86_64_FAT/sync -c luaScipts/x86/transfer_arith_with_branch.lua | tail -n +7 >  Results/Test66




#As x64

#./RopTool -a x64 -c luaScipts/x64/call_reg.lua -f x86_64_FAT/bash | tail -n +7 >  Results/Test67
#./RopTool -a x64 -c luaScipts/x64/call_reg.lua -f x86_64_FAT/sh | tail -n +7 >  Results/Test68
./RopTool -a x64 -c luaScipts/x64/call_reg.lua -f x86_64_FAT/sync | tail -n +7 >  Results/Test69

