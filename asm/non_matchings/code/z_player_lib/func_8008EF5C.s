glabel func_8008EF5C
/* B060FC 8008EF5C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B06100 8008EF60 AFBF0014 */  sw    $ra, 0x14($sp)
/* B06104 8008EF64 AFA7003C */  sw    $a3, 0x3c($sp)
/* B06108 8008EF68 8C821C44 */  lw    $v0, 0x1c44($a0)
/* B0610C 8008EF6C 44866000 */  mtc1  $a2, $f12
/* B06110 8008EF70 24010006 */  li    $at, 6
/* B06114 8008EF74 804E0151 */  lb    $t6, 0x151($v0)
/* B06118 8008EF78 55C1002A */  bnel  $t6, $at, .L8008F024
/* B0611C 8008EF7C 00001025 */   move  $v0, $zero
/* B06120 8008EF80 844F0860 */  lh    $t7, 0x860($v0)
/* B06124 8008EF84 244408B8 */  addiu $a0, $v0, 0x8b8
/* B06128 8008EF88 27A60020 */  addiu $a2, $sp, 0x20
/* B0612C 8008EF8C 51E00025 */  beql  $t7, $zero, .L8008F024
/* B06130 8008EF90 00001025 */   move  $v0, $zero
/* B06134 8008EF94 0C01DFB4 */  jal   Math_Vec3f_Diff
/* B06138 8008EF98 E7AC0038 */   swc1  $f12, 0x38($sp)
/* B0613C 8008EF9C C7A00020 */  lwc1  $f0, 0x20($sp)
/* B06140 8008EFA0 C7A20028 */  lwc1  $f2, 0x28($sp)
/* B06144 8008EFA4 C7AC0038 */  lwc1  $f12, 0x38($sp)
/* B06148 8008EFA8 46000102 */  mul.s $f4, $f0, $f0
/* B0614C 8008EFAC C7A00024 */  lwc1  $f0, 0x24($sp)
/* B06150 8008EFB0 00001025 */  move  $v0, $zero
/* B06154 8008EFB4 46021182 */  mul.s $f6, $f2, $f2
/* B06158 8008EFB8 46062200 */  add.s $f8, $f4, $f6
/* B0615C 8008EFBC 460C6282 */  mul.s $f10, $f12, $f12
/* B06160 8008EFC0 460A403E */  c.le.s $f8, $f10
/* B06164 8008EFC4 00000000 */  nop   
/* B06168 8008EFC8 45000002 */  bc1f  .L8008EFD4
/* B0616C 8008EFCC 00000000 */   nop   
/* B06170 8008EFD0 24020001 */  li    $v0, 1
.L8008EFD4:
/* B06174 8008EFD4 50400014 */  beql  $v0, $zero, .L8008F028
/* B06178 8008EFD8 8FBF0014 */   lw    $ra, 0x14($sp)
/* B0617C 8008EFDC 44808000 */  mtc1  $zero, $f16
/* B06180 8008EFE0 00001025 */  move  $v0, $zero
/* B06184 8008EFE4 C7B2003C */  lwc1  $f18, 0x3c($sp)
/* B06188 8008EFE8 4600803E */  c.le.s $f16, $f0
/* B0618C 8008EFEC 00000000 */  nop   
/* B06190 8008EFF0 45000002 */  bc1f  .L8008EFFC
/* B06194 8008EFF4 00000000 */   nop   
/* B06198 8008EFF8 24020001 */  li    $v0, 1
.L8008EFFC:
/* B0619C 8008EFFC 5040000A */  beql  $v0, $zero, .L8008F028
/* B061A0 8008F000 8FBF0014 */   lw    $ra, 0x14($sp)
/* B061A4 8008F004 4612003E */  c.le.s $f0, $f18
/* B061A8 8008F008 00001025 */  move  $v0, $zero
/* B061AC 8008F00C 45020006 */  bc1fl .L8008F028
/* B061B0 8008F010 8FBF0014 */   lw    $ra, 0x14($sp)
/* B061B4 8008F014 24020001 */  li    $v0, 1
/* B061B8 8008F018 10000003 */  b     .L8008F028
/* B061BC 8008F01C 8FBF0014 */   lw    $ra, 0x14($sp)
/* B061C0 8008F020 00001025 */  move  $v0, $zero
.L8008F024:
/* B061C4 8008F024 8FBF0014 */  lw    $ra, 0x14($sp)
.L8008F028:
/* B061C8 8008F028 27BD0030 */  addiu $sp, $sp, 0x30
/* B061CC 8008F02C 03E00008 */  jr    $ra
/* B061D0 8008F030 00000000 */   nop   
