glabel func_80B52098
/* 03708 80B52098 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0370C 80B5209C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03710 80B520A0 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 03714 80B520A4 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 03718 80B520A8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0371C 80B520AC 0C2D3F33 */  jal     func_80B4FCCC              
/* 03720 80B520B0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 03724 80B520B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03728 80B520B8 0C2D3B4B */  jal     func_80B4ED2C              
/* 0372C 80B520BC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 03730 80B520C0 0C2D3A6C */  jal     func_80B4E9B0              
/* 03734 80B520C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03738 80B520C8 0C2D3B5D */  jal     func_80B4ED74              
/* 0373C 80B520CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03740 80B520D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03744 80B520D4 0C2D4749 */  jal     func_80B51D24              
/* 03748 80B520D8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0374C 80B520DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03750 80B520E0 0C2D47CE */  jal     func_80B51F38              
/* 03754 80B520E4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 03758 80B520E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0375C 80B520EC 0C2D4769 */  jal     func_80B51DA4              
/* 03760 80B520F0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 03764 80B520F4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03768 80B520F8 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 0376C 80B520FC 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 03770 80B52100 03E00008 */  jr      $ra                        
/* 03774 80B52104 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
