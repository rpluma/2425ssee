##
## Core Generator Run Script, generator for Project Navigator checkversion command
##

proc findRtfPath { relativePath } {
   set xilenv ""
   if { [info exists ::env(XILINX) ] } {
      if { [info exists ::env(MYXILINX)] } {
         set xilenv [join [list $::env(MYXILINX) $::env(XILINX)] $::xilinx::path_sep ]
      } else {
         set xilenv $::env(XILINX)
      }
   }
   foreach path [ split $xilenv $::xilinx::path_sep ] {
      set fullPath [ file join $path $relativePath ]
      if { [ file exists $fullPath ] } {
         return $fullPath
      }
   }
   return ""
}

source [ findRtfPath "data/projnav/scripts/dpm_cgUtils.tcl" ]

set result [ run_cg_vcheck {C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/ipcore_dir/dcm_100m_5m.xco C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/ipcore_dir/cont_16bits.xco C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/ipcore_dir/cont_3b.xco C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/ipcore_dir/bIpMemory.xco C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/ipcore_dir/bIpMultiplier.xco C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/ipcore_dir/biPAccumlator.xco C:/Users/Usuario_UMA/Desktop/ssee_convol_p1/ipcore_dir/bIpSumador.xco} xc6slx16-3csg324 ]

if { $result == 0 } {
   puts "Core Generator checkversion command completed successfully."
} elseif { $result == 1 } {
   puts "Core Generator checkversion command failed."
} elseif { $result == 3 || $result == 4 } {
   # convert 'version check' result to real return range, bypassing any messages.
   set result [ expr $result - 3 ]
} else {
   puts "Core Generator checkversion cancelled."
}
exit $result
