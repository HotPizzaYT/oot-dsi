glabel func_80A02F2C
/* 012FC 80A02F2C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01300 80A02F30 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01304 80A02F34 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01308 80A02F38 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0130C 80A02F3C 848402AA */  lh      $a0, 0x02AA($a0)           ## 000002AA
/* 01310 80A02F40 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01314 80A02F44 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 01318 80A02F48 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 0131C 80A02F4C 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 01320 80A02F50 3C0180A0 */  lui     $at, %hi(D_80A061BC)       ## $at = 80A00000
/* 01324 80A02F54 C4E402B4 */  lwc1    $f4, 0x02B4($a3)           ## 000002B4
/* 01328 80A02F58 C5C80004 */  lwc1    $f8, 0x0004($t6)           ## 00000004
/* 0132C 80A02F5C C4F00028 */  lwc1    $f16, 0x0028($a3)          ## 00000028
/* 01330 80A02F60 46040182 */  mul.s   $f6, $f0, $f4              
/* 01334 80A02F64 C42461BC */  lwc1    $f4, %lo(D_80A061BC)($at)  
/* 01338 80A02F68 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 0133C 80A02F6C 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 01340 80A02F70 46083280 */  add.s   $f10, $f6, $f8             
/* 01344 80A02F74 46105481 */  sub.s   $f18, $f10, $f16           
/* 01348 80A02F78 46049082 */  mul.s   $f2, $f18, $f4             
/* 0134C 80A02F7C 4602703E */  c.le.s  $f14, $f2                  
/* 01350 80A02F80 46001005 */  abs.s   $f0, $f2                   
/* 01354 80A02F84 45020006 */  bc1fl   .L80A02FA0                 
/* 01358 80A02F88 44816000 */  mtc1    $at, $f12                  ## $f12 = -1.00
/* 0135C 80A02F8C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01360 80A02F90 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 01364 80A02F94 10000004 */  beq     $zero, $zero, .L80A02FA8   
/* 01368 80A02F98 460E003C */  c.lt.s  $f0, $f14                  
/* 0136C 80A02F9C 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
.L80A02FA0:
/* 01370 80A02FA0 00000000 */  nop
/* 01374 80A02FA4 460E003C */  c.lt.s  $f0, $f14                  
.L80A02FA8:
/* 01378 80A02FA8 84EF02AA */  lh      $t7, 0x02AA($a3)           ## 000002AA
/* 0137C 80A02FAC 84F802AE */  lh      $t8, 0x02AE($a3)           ## 000002AE
/* 01380 80A02FB0 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01384 80A02FB4 01F8C821 */  addu    $t9, $t7, $t8              
/* 01388 80A02FB8 45000003 */  bc1f    .L80A02FC8                 
/* 0138C 80A02FBC A4F902AA */  sh      $t9, 0x02AA($a3)           ## 000002AA
/* 01390 80A02FC0 1000000B */  beq     $zero, $zero, .L80A02FF0   
/* 01394 80A02FC4 46007006 */  mov.s   $f0, $f14                  
.L80A02FC8:
/* 01398 80A02FC8 44817000 */  mtc1    $at, $f14                  ## $f14 = 20.00
/* 0139C 80A02FCC 00000000 */  nop
/* 013A0 80A02FD0 4600703C */  c.lt.s  $f14, $f0                  
/* 013A4 80A02FD4 00000000 */  nop
/* 013A8 80A02FD8 45020004 */  bc1fl   .L80A02FEC                 
/* 013AC 80A02FDC 46000086 */  mov.s   $f2, $f0                   
/* 013B0 80A02FE0 10000002 */  beq     $zero, $zero, .L80A02FEC   
/* 013B4 80A02FE4 46007086 */  mov.s   $f2, $f14                  
/* 013B8 80A02FE8 46000086 */  mov.s   $f2, $f0                   
.L80A02FEC:
/* 013BC 80A02FEC 46001006 */  mov.s   $f0, $f2                   
.L80A02FF0:
/* 013C0 80A02FF0 460C0182 */  mul.s   $f6, $f0, $f12             
/* 013C4 80A02FF4 24E40060 */  addiu   $a0, $a3, 0x0060           ## $a0 = 00000060
/* 013C8 80A02FF8 3C063FC0 */  lui     $a2, 0x3FC0                ## $a2 = 3FC00000
/* 013CC 80A02FFC 44053000 */  mfc1    $a1, $f6                   
/* 013D0 80A03000 0C01DE80 */  jal     Math_ApproxF
              
/* 013D4 80A03004 00000000 */  nop
/* 013D8 80A03008 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 013DC 80A0300C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 013E0 80A03010 03E00008 */  jr      $ra                        
/* 013E4 80A03014 00000000 */  nop
