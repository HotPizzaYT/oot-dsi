glabel func_80A442F0
/* 015C0 80A442F0 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 015C4 80A442F4 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 015C8 80A442F8 8C4E0004 */  lw      $t6, 0x0004($v0)           ## 8015E664
/* 015CC 80A442FC AFA40000 */  sw      $a0, 0x0000($sp)           
/* 015D0 80A44300 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 015D4 80A44304 11C0000B */  beq     $t6, $zero, .L80A44334     
/* 015D8 80A44308 24033043 */  addiu   $v1, $zero, 0x3043         ## $v1 = 00003043
/* 015DC 80A4430C 944F0F14 */  lhu     $t7, 0x0F14($v0)           ## 8015F574
/* 015E0 80A44310 2402300E */  addiu   $v0, $zero, 0x300E         ## $v0 = 0000300E
/* 015E4 80A44314 31F80008 */  andi    $t8, $t7, 0x0008           ## $t8 = 00000000
/* 015E8 80A44318 13000004 */  beq     $t8, $zero, .L80A4432C     
/* 015EC 80A4431C 00000000 */  nop
/* 015F0 80A44320 24023022 */  addiu   $v0, $zero, 0x3022         ## $v0 = 00003022
/* 015F4 80A44324 03E00008 */  jr      $ra                        
/* 015F8 80A44328 3042FFFF */  andi    $v0, $v0, 0xFFFF           ## $v0 = 00003022
.L80A4432C:
/* 015FC 80A4432C 03E00008 */  jr      $ra                        
/* 01600 80A44330 3042FFFF */  andi    $v0, $v0, 0xFFFF           ## $v0 = 00003022
.L80A44334:
/* 01604 80A44334 03E00008 */  jr      $ra                        
/* 01608 80A44338 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00003043
