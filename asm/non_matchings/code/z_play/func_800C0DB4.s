glabel func_800C0DB4
/* B37F54 800C0DB4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B37F58 800C0DB8 AFBF001C */  sw    $ra, 0x1c($sp)
/* B37F5C 800C0DBC AFA50044 */  sw    $a1, 0x44($sp)
/* B37F60 800C0DC0 8CB90000 */  lw    $t9, ($a1)
/* B37F64 800C0DC4 27AE002C */  addiu $t6, $sp, 0x2c
/* B37F68 800C0DC8 27A80030 */  addiu $t0, $sp, 0x30
/* B37F6C 800C0DCC ADD90000 */  sw    $t9, ($t6)
/* B37F70 800C0DD0 8CB80004 */  lw    $t8, 4($a1)
/* B37F74 800C0DD4 27A9003C */  addiu $t1, $sp, 0x3c
/* B37F78 800C0DD8 ADD80004 */  sw    $t8, 4($t6)
/* B37F7C 800C0DDC 8CB90008 */  lw    $t9, 8($a1)
/* B37F80 800C0DE0 248507C0 */  addiu $a1, $a0, 0x7c0
/* B37F84 800C0DE4 ADD90008 */  sw    $t9, 8($t6)
/* B37F88 800C0DE8 AFA50024 */  sw    $a1, 0x24($sp)
/* B37F8C 800C0DEC AFA90014 */  sw    $t1, 0x14($sp)
/* B37F90 800C0DF0 AFA80010 */  sw    $t0, 0x10($sp)
/* B37F94 800C0DF4 8FA70034 */  lw    $a3, 0x34($sp)
/* B37F98 800C0DF8 0C01084F */  jal   func_8004213C
/* B37F9C 800C0DFC 8FA6002C */   lw    $a2, 0x2c($sp)
/* B37FA0 800C0E00 24010001 */  li    $at, 1
/* B37FA4 800C0E04 14410014 */  bne   $v0, $at, .L800C0E58
/* B37FA8 800C0E08 8FAA0044 */   lw    $t2, 0x44($sp)
/* B37FAC 800C0E0C C5440004 */  lwc1  $f4, 4($t2)
/* B37FB0 800C0E10 C7A60030 */  lwc1  $f6, 0x30($sp)
/* B37FB4 800C0E14 8FA40024 */  lw    $a0, 0x24($sp)
/* B37FB8 800C0E18 27A50038 */  addiu $a1, $sp, 0x38
/* B37FBC 800C0E1C 4606203C */  c.lt.s $f4, $f6
/* B37FC0 800C0E20 27A60028 */  addiu $a2, $sp, 0x28
/* B37FC4 800C0E24 4502000D */  bc1fl .L800C0E5C
/* B37FC8 800C0E28 00001025 */   move  $v0, $zero
/* B37FCC 800C0E2C 0C00F250 */  jal   func_8003C940
/* B37FD0 800C0E30 27A7002C */   addiu $a3, $sp, 0x2c
/* B37FD4 800C0E34 3C01C6FA */  li    $at, 0xC6FA0000 # 0.000000
/* B37FD8 800C0E38 44814000 */  mtc1  $at, $f8
/* B37FDC 800C0E3C 00000000 */  nop   
/* B37FE0 800C0E40 46080032 */  c.eq.s $f0, $f8
/* B37FE4 800C0E44 00000000 */  nop   
/* B37FE8 800C0E48 45030004 */  bc1tl .L800C0E5C
/* B37FEC 800C0E4C 00001025 */   move  $v0, $zero
/* B37FF0 800C0E50 10000002 */  b     .L800C0E5C
/* B37FF4 800C0E54 24020001 */   li    $v0, 1
.L800C0E58:
/* B37FF8 800C0E58 00001025 */  move  $v0, $zero
.L800C0E5C:
/* B37FFC 800C0E5C 8FBF001C */  lw    $ra, 0x1c($sp)
/* B38000 800C0E60 27BD0040 */  addiu $sp, $sp, 0x40
/* B38004 800C0E64 03E00008 */  jr    $ra
/* B38008 800C0E68 00000000 */   nop   