.late_rodata
glabel D_80A23B18
 .word 0x464B2000
glabel D_80A23B1C
 .word 0x477FFF00

.text
glabel func_80A23204
/* 01344 80A23204 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 01348 80A23208 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0134C 80A2320C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01350 80A23210 AFA60050 */  sw      $a2, 0x0050($sp)           
/* 01354 80A23214 AFA70054 */  sw      $a3, 0x0054($sp)           
/* 01358 80A23218 8483015C */  lh      $v1, 0x015C($a0)           ## 0000015C
/* 0135C 80A2321C 00073C00 */  sll     $a3, $a3, 16               
/* 01360 80A23220 00063400 */  sll     $a2, $a2, 16               
/* 01364 80A23224 00063403 */  sra     $a2, $a2, 16               
/* 01368 80A23228 00073C03 */  sra     $a3, $a3, 16               
/* 0136C 80A2322C 249001C8 */  addiu   $s0, $a0, 0x01C8           ## $s0 = 000001C8
/* 01370 80A23230 18600033 */  blez    $v1, .L80A23300            
/* 01374 80A23234 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A23238:
/* 01378 80A23238 920E0012 */  lbu     $t6, 0x0012($s0)           ## 000001DA
/* 0137C 80A2323C 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 01380 80A23240 00021400 */  sll     $v0, $v0, 16               
/* 01384 80A23244 15C0002B */  bne     $t6, $zero, .L80A232F4     
/* 01388 80A23248 00021403 */  sra     $v0, $v0, 16               
/* 0138C 80A2324C 8CB80000 */  lw      $t8, 0x0000($a1)           ## 00000000
/* 01390 80A23250 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01394 80A23254 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 01398 80A23258 AE180000 */  sw      $t8, 0x0000($s0)           ## 000001C8
/* 0139C 80A2325C 8CAF0004 */  lw      $t7, 0x0004($a1)           ## 00000004
/* 013A0 80A23260 2419001E */  addiu   $t9, $zero, 0x001E         ## $t9 = 0000001E
/* 013A4 80A23264 44816000 */  mtc1    $at, $f12                  ## $f12 = 1000.00
/* 013A8 80A23268 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 000001CC
/* 013AC 80A2326C 8CB80008 */  lw      $t8, 0x0008($a1)           ## 00000008
/* 013B0 80A23270 A606000C */  sh      $a2, 0x000C($s0)           ## 000001D4
/* 013B4 80A23274 A6070010 */  sh      $a3, 0x0010($s0)           ## 000001D8
/* 013B8 80A23278 A619000E */  sh      $t9, 0x000E($s0)           ## 000001D6
/* 013BC 80A2327C E6000020 */  swc1    $f0, 0x0020($s0)           ## 000001E8
/* 013C0 80A23280 E6000024 */  swc1    $f0, 0x0024($s0)           ## 000001EC
/* 013C4 80A23284 E6000028 */  swc1    $f0, 0x0028($s0)           ## 000001F0
/* 013C8 80A23288 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 013CC 80A2328C AE180008 */  sw      $t8, 0x0008($s0)           ## 000001D0
/* 013D0 80A23290 3C0180A2 */  lui     $at, %hi(D_80A23B18)       ## $at = 80A20000
/* 013D4 80A23294 C4243B18 */  lwc1    $f4, %lo(D_80A23B18)($at)  
/* 013D8 80A23298 3C0180A2 */  lui     $at, %hi(D_80A23B1C)       ## $at = 80A20000
/* 013DC 80A2329C C42C3B1C */  lwc1    $f12, %lo(D_80A23B1C)($at) 
/* 013E0 80A232A0 46040181 */  sub.s   $f6, $f0, $f4              
/* 013E4 80A232A4 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 013E8 80A232A8 E7A60030 */  swc1    $f6, 0x0030($sp)           
/* 013EC 80A232AC 46000306 */  mov.s   $f12, $f0                  
/* 013F0 80A232B0 0C034348 */  jal     Matrix_RotateY              
/* 013F4 80A232B4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 013F8 80A232B8 C7AC0030 */  lwc1    $f12, 0x0030($sp)          
/* 013FC 80A232BC 0C0342DC */  jal     Matrix_RotateX              
/* 01400 80A232C0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01404 80A232C4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01408 80A232C8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0140C 80A232CC 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 01410 80A232D0 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFEC
/* 01414 80A232D4 26050014 */  addiu   $a1, $s0, 0x0014           ## $a1 = 000001DC
/* 01418 80A232D8 E7A00038 */  swc1    $f0, 0x0038($sp)           
/* 0141C 80A232DC E7A00034 */  swc1    $f0, 0x0034($sp)           
/* 01420 80A232E0 0C0346BD */  jal     Matrix_MultVec3f              
/* 01424 80A232E4 E7A8003C */  swc1    $f8, 0x003C($sp)           
/* 01428 80A232E8 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 0142C 80A232EC 10000004 */  beq     $zero, $zero, .L80A23300   
/* 01430 80A232F0 A2080012 */  sb      $t0, 0x0012($s0)           ## 000001DA
.L80A232F4:
/* 01434 80A232F4 0043082A */  slt     $at, $v0, $v1              
/* 01438 80A232F8 1420FFCF */  bne     $at, $zero, .L80A23238     
/* 0143C 80A232FC 2610002C */  addiu   $s0, $s0, 0x002C           ## $s0 = 000001F4
.L80A23300:
/* 01440 80A23300 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01444 80A23304 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01448 80A23308 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 0144C 80A2330C 03E00008 */  jr      $ra                        
/* 01450 80A23310 00000000 */  nop
