glabel func_80980184
/* 02B14 80980184 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 02B18 80980188 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02B1C 8098018C 94A21D74 */  lhu     $v0, 0x1D74($a1)           ## 00001D74
/* 02B20 80980190 28410404 */  slti    $at, $v0, 0x0404           
/* 02B24 80980194 1420001C */  bne     $at, $zero, .L80980208     
/* 02B28 80980198 28410407 */  slti    $at, $v0, 0x0407           
/* 02B2C 8098019C 5020001B */  beql    $at, $zero, .L8098020C     
/* 02B30 809801A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02B34 809801A4 C4840024 */  lwc1    $f4, 0x0024($a0)           ## 00000024
/* 02B38 809801A8 3C014377 */  lui     $at, 0x4377                ## $at = 43770000
/* 02B3C 809801AC 44814000 */  mtc1    $at, $f8                   ## $f8 = 247.00
/* 02B40 809801B0 E7A40024 */  swc1    $f4, 0x0024($sp)           
/* 02B44 809801B4 C4860028 */  lwc1    $f6, 0x0028($a0)           ## 00000028
/* 02B48 809801B8 3C038098 */  lui     $v1, %hi(D_8098265C)       ## $v1 = 80980000
/* 02B4C 809801BC 8C63265C */  lw      $v1, %lo(D_8098265C)($v1)  
/* 02B50 809801C0 46083280 */  add.s   $f10, $f6, $f8             
/* 02B54 809801C4 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 02B58 809801C8 C7B20024 */  lwc1    $f18, 0x0024($sp)          
/* 02B5C 809801CC E7AA0028 */  swc1    $f10, 0x0028($sp)          
/* 02B60 809801D0 C490002C */  lwc1    $f16, 0x002C($a0)          ## 0000002C
/* 02B64 809801D4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 02B68 809801D8 14600006 */  bne     $v1, $zero, .L809801F4     
/* 02B6C 809801DC E7B0002C */  swc1    $f16, 0x002C($sp)          
/* 02B70 809801E0 0C25F659 */  jal     func_8097D964              
/* 02B74 809801E4 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFE4
/* 02B78 809801E8 3C018098 */  lui     $at, %hi(D_8098265C)       ## $at = 80980000
/* 02B7C 809801EC 10000006 */  beq     $zero, $zero, .L80980208   
/* 02B80 809801F0 AC22265C */  sw      $v0, %lo(D_8098265C)($at)  
.L809801F4:
/* 02B84 809801F4 E4720024 */  swc1    $f18, 0x0024($v1)          ## 00000024
/* 02B88 809801F8 C7A40028 */  lwc1    $f4, 0x0028($sp)           
/* 02B8C 809801FC E4640028 */  swc1    $f4, 0x0028($v1)           ## 00000028
/* 02B90 80980200 C7A6002C */  lwc1    $f6, 0x002C($sp)           
/* 02B94 80980204 E466002C */  swc1    $f6, 0x002C($v1)           ## 0000002C
.L80980208:
/* 02B98 80980208 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8098020C:
/* 02B9C 8098020C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 02BA0 80980210 03E00008 */  jr      $ra                        
/* 02BA4 80980214 00000000 */  nop
