glabel func_80B9B8C8
/* 00748 80B9B8C8 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 0074C 80B9B8CC AFBE0050 */  sw      $s8, 0x0050($sp)           
/* 00750 80B9B8D0 AFB10034 */  sw      $s1, 0x0034($sp)           
/* 00754 80B9B8D4 F7B60028 */  sdc1    $f22, 0x0028($sp)          
/* 00758 80B9B8D8 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 0075C 80B9B8DC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00760 80B9B8E0 AFB7004C */  sw      $s7, 0x004C($sp)           
/* 00764 80B9B8E4 AFB60048 */  sw      $s6, 0x0048($sp)           
/* 00768 80B9B8E8 AFB50044 */  sw      $s5, 0x0044($sp)           
/* 0076C 80B9B8EC AFB40040 */  sw      $s4, 0x0040($sp)           
/* 00770 80B9B8F0 AFB3003C */  sw      $s3, 0x003C($sp)           
/* 00774 80B9B8F4 AFB20038 */  sw      $s2, 0x0038($sp)           
/* 00778 80B9B8F8 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 0077C 80B9B8FC 3C1180BA */  lui     $s1, %hi(D_80B9CA6C)       ## $s1 = 80BA0000
/* 00780 80B9B900 3C1E80BA */  lui     $s8, %hi(D_80B9CAA8)       ## $s8 = 80BA0000
/* 00784 80B9B904 4481A000 */  mtc1    $at, $f20                  ## $f20 = 10.00
/* 00788 80B9B908 4480B000 */  mtc1    $zero, $f22                ## $f22 = 0.00
/* 0078C 80B9B90C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00790 80B9B910 AFBF0054 */  sw      $ra, 0x0054($sp)           
/* 00794 80B9B914 27DECAA8 */  addiu   $s8, $s8, %lo(D_80B9CAA8)  ## $s8 = 80B9CAA8
/* 00798 80B9B918 2631CA6C */  addiu   $s1, $s1, %lo(D_80B9CA6C)  ## $s1 = 80B9CA6C
/* 0079C 80B9B91C 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 007A0 80B9B920 24930194 */  addiu   $s3, $a0, 0x0194           ## $s3 = 00000194
/* 007A4 80B9B924 24940180 */  addiu   $s4, $a0, 0x0180           ## $s4 = 00000180
/* 007A8 80B9B928 27B50080 */  addiu   $s5, $sp, 0x0080           ## $s5 = FFFFFFF0
/* 007AC 80B9B92C 24B607C0 */  addiu   $s6, $a1, 0x07C0           ## $s6 = 000007C0
/* 007B0 80B9B930 27B70074 */  addiu   $s7, $sp, 0x0074           ## $s7 = FFFFFFE4
.L80B9B934:
/* 007B4 80B9B934 C6060050 */  lwc1    $f6, 0x0050($s0)           ## 00000050
/* 007B8 80B9B938 C6240000 */  lwc1    $f4, 0x0000($s1)           ## 80B9CA6C
/* 007BC 80B9B93C C6300004 */  lwc1    $f16, 0x0004($s1)          ## 80B9CA70
/* 007C0 80B9B940 46143202 */  mul.s   $f8, $f6, $f20             
/* 007C4 80B9B944 02A02025 */  or      $a0, $s5, $zero            ## $a0 = FFFFFFF0
/* 007C8 80B9B948 02E02825 */  or      $a1, $s7, $zero            ## $a1 = FFFFFFE4
/* 007CC 80B9B94C 46082282 */  mul.s   $f10, $f4, $f8             
/* 007D0 80B9B950 C6280008 */  lwc1    $f8, 0x0008($s1)           ## 80B9CA74
/* 007D4 80B9B954 E7AA0074 */  swc1    $f10, 0x0074($sp)          
/* 007D8 80B9B958 C6120054 */  lwc1    $f18, 0x0054($s0)          ## 00000054
/* 007DC 80B9B95C 46149182 */  mul.s   $f6, $f18, $f20            
/* 007E0 80B9B960 00000000 */  nop
/* 007E4 80B9B964 46068102 */  mul.s   $f4, $f16, $f6             
/* 007E8 80B9B968 E7A40078 */  swc1    $f4, 0x0078($sp)           
/* 007EC 80B9B96C C60A0058 */  lwc1    $f10, 0x0058($s0)          ## 00000058
/* 007F0 80B9B970 46145482 */  mul.s   $f18, $f10, $f20           
/* 007F4 80B9B974 00000000 */  nop
/* 007F8 80B9B978 46124402 */  mul.s   $f16, $f8, $f18            
/* 007FC 80B9B97C E7B0007C */  swc1    $f16, 0x007C($sp)          
/* 00800 80B9B980 8E070170 */  lw      $a3, 0x0170($s0)           ## 00000170
/* 00804 80B9B984 0C2E6C82 */  jal     func_80B9B208              
/* 00808 80B9B988 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 0080C 80B9B98C C7A60080 */  lwc1    $f6, 0x0080($sp)           
/* 00810 80B9B990 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00814 80B9B994 C7A80084 */  lwc1    $f8, 0x0084($sp)           
/* 00818 80B9B998 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 000007C0
/* 0081C 80B9B99C 46043280 */  add.s   $f10, $f6, $f4             
/* 00820 80B9B9A0 C7A60088 */  lwc1    $f6, 0x0088($sp)           
/* 00824 80B9B9A4 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000194
/* 00828 80B9B9A8 02803025 */  or      $a2, $s4, $zero            ## $a2 = 00000180
/* 0082C 80B9B9AC E7AA0080 */  swc1    $f10, 0x0080($sp)          
/* 00830 80B9B9B0 C6120104 */  lwc1    $f18, 0x0104($s0)          ## 00000104
/* 00834 80B9B9B4 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 00838 80B9B9B8 46124400 */  add.s   $f16, $f8, $f18            
/* 0083C 80B9B9BC E7B00084 */  swc1    $f16, 0x0084($sp)          
/* 00840 80B9B9C0 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 00844 80B9B9C4 E7B60014 */  swc1    $f22, 0x0014($sp)          
/* 00848 80B9B9C8 AFB50010 */  sw      $s5, 0x0010($sp)           
/* 0084C 80B9B9CC 46043280 */  add.s   $f10, $f6, $f4             
/* 00850 80B9B9D0 0C00F299 */  jal     func_8003CA64              
/* 00854 80B9B9D4 E7AA0088 */  swc1    $f10, 0x0088($sp)          
/* 00858 80B9B9D8 2631000C */  addiu   $s1, $s1, 0x000C           ## $s1 = 80B9CA78
/* 0085C 80B9B9DC 26520004 */  addiu   $s2, $s2, 0x0004           ## $s2 = 00000004
/* 00860 80B9B9E0 26730004 */  addiu   $s3, $s3, 0x0004           ## $s3 = 00000198
/* 00864 80B9B9E4 26940004 */  addiu   $s4, $s4, 0x0004           ## $s4 = 00000184
/* 00868 80B9B9E8 163EFFD2 */  bne     $s1, $s8, .L80B9B934       
/* 0086C 80B9B9EC E64001A4 */  swc1    $f0, 0x01A4($s2)           ## 000001A8
/* 00870 80B9B9F0 8FBF0054 */  lw      $ra, 0x0054($sp)           
/* 00874 80B9B9F4 D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 00878 80B9B9F8 D7B60028 */  ldc1    $f22, 0x0028($sp)          
/* 0087C 80B9B9FC 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00880 80B9BA00 8FB10034 */  lw      $s1, 0x0034($sp)           
/* 00884 80B9BA04 8FB20038 */  lw      $s2, 0x0038($sp)           
/* 00888 80B9BA08 8FB3003C */  lw      $s3, 0x003C($sp)           
/* 0088C 80B9BA0C 8FB40040 */  lw      $s4, 0x0040($sp)           
/* 00890 80B9BA10 8FB50044 */  lw      $s5, 0x0044($sp)           
/* 00894 80B9BA14 8FB60048 */  lw      $s6, 0x0048($sp)           
/* 00898 80B9BA18 8FB7004C */  lw      $s7, 0x004C($sp)           
/* 0089C 80B9BA1C 8FBE0050 */  lw      $s8, 0x0050($sp)           
/* 008A0 80B9BA20 03E00008 */  jr      $ra                        
/* 008A4 80B9BA24 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000
