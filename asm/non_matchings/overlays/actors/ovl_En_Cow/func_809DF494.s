.late_rodata
glabel D_809E0120
    .float 0.01
glabel D_809E0124
    .float 0.01
glabel D_809E0128
    .float 0.01
glabel D_809E012C
    .float 0.01
glabel D_809E0130
    .float 0.01

.text
glabel func_809DF494
/* 00694 809DF494 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00698 809DF498 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0069C 809DF49C AFB00028 */  sw      $s0, 0x0028($sp)
/* 006A0 809DF4A0 AFA50034 */  sw      $a1, 0x0034($sp)
/* 006A4 809DF4A4 94820278 */  lhu     $v0, 0x0278($a0)           ## 00000278
/* 006A8 809DF4A8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 006AC 809DF4AC 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 006B0 809DF4B0 18400003 */  blez    $v0, .L809DF4C0
/* 006B4 809DF4B4 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 006B8 809DF4B8 1000003A */  beq     $zero, $zero, .L809DF5A4
/* 006BC 809DF4BC A48E0278 */  sh      $t6, 0x0278($a0)           ## 00000278
.L809DF4C0:
/* 006C0 809DF4C0 44816000 */  mtc1    $at, $f12                  ## $f12 = 500.00
/* 006C4 809DF4C4 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 006C8 809DF4C8 00000000 */  nop
/* 006CC 809DF4CC 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 006D0 809DF4D0 44812000 */  mtc1    $at, $f4                   ## $f4 = 40.00
/* 006D4 809DF4D4 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 006D8 809DF4D8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 006DC 809DF4DC 46040180 */  add.s   $f6, $f0, $f4
/* 006E0 809DF4E0 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 006E4 809DF4E4 248401CC */  addiu   $a0, $a0, 0x01CC           ## $a0 = 060001CC
/* 006E8 809DF4E8 444FF800 */  cfc1    $t7, $31
/* 006EC 809DF4EC 44D8F800 */  ctc1    $t8, $31
/* 006F0 809DF4F0 00000000 */  nop
/* 006F4 809DF4F4 46003224 */  cvt.w.s $f8, $f6
/* 006F8 809DF4F8 4458F800 */  cfc1    $t8, $31
/* 006FC 809DF4FC 00000000 */  nop
/* 00700 809DF500 33180078 */  andi    $t8, $t8, 0x0078           ## $t8 = 00000000
/* 00704 809DF504 53000013 */  beql    $t8, $zero, .L809DF554
/* 00708 809DF508 44184000 */  mfc1    $t8, $f8
/* 0070C 809DF50C 44814000 */  mtc1    $at, $f8                   ## $f8 = 2147483648.00
/* 00710 809DF510 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00714 809DF514 46083201 */  sub.s   $f8, $f6, $f8
/* 00718 809DF518 44D8F800 */  ctc1    $t8, $31
/* 0071C 809DF51C 00000000 */  nop
/* 00720 809DF520 46004224 */  cvt.w.s $f8, $f8
/* 00724 809DF524 4458F800 */  cfc1    $t8, $31
/* 00728 809DF528 00000000 */  nop
/* 0072C 809DF52C 33180078 */  andi    $t8, $t8, 0x0078           ## $t8 = 00000000
/* 00730 809DF530 17000005 */  bne     $t8, $zero, .L809DF548
/* 00734 809DF534 00000000 */  nop
/* 00738 809DF538 44184000 */  mfc1    $t8, $f8
/* 0073C 809DF53C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00740 809DF540 10000007 */  beq     $zero, $zero, .L809DF560
/* 00744 809DF544 0301C025 */  or      $t8, $t8, $at              ## $t8 = 80000000
.L809DF548:
/* 00748 809DF548 10000005 */  beq     $zero, $zero, .L809DF560
/* 0074C 809DF54C 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 00750 809DF550 44184000 */  mfc1    $t8, $f8
.L809DF554:
/* 00754 809DF554 00000000 */  nop
/* 00758 809DF558 0700FFFB */  bltz    $t8, .L809DF548
/* 0075C 809DF55C 00000000 */  nop
.L809DF560:
/* 00760 809DF560 44CFF800 */  ctc1    $t7, $31
/* 00764 809DF564 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00768 809DF568 A6180278 */  sh      $t8, 0x0278($s0)           ## 00000278
/* 0076C 809DF56C 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 00770 809DF570 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00774 809DF574 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 00778 809DF578 46805420 */  cvt.s.w $f16, $f10
/* 0077C 809DF57C 8E0701FC */  lw      $a3, 0x01FC($s0)           ## 000001FC
/* 00780 809DF580 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00784 809DF584 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 00788 809DF588 AFB90014 */  sw      $t9, 0x0014($sp)
/* 0078C 809DF58C 24A501CC */  addiu   $a1, $a1, 0x01CC           ## $a1 = 060001CC
/* 00790 809DF590 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 00794 809DF594 260401E4 */  addiu   $a0, $s0, 0x01E4           ## $a0 = 000001E4
/* 00798 809DF598 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0079C 809DF59C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 007A0 809DF5A0 E7B20018 */  swc1    $f18, 0x0018($sp)
.L809DF5A4:
/* 007A4 809DF5A4 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 007A8 809DF5A8 44813000 */  mtc1    $at, $f6                   ## $f6 = 150.00
/* 007AC 809DF5AC C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 007B0 809DF5B0 4606203C */  c.lt.s  $f4, $f6
/* 007B4 809DF5B4 00000000 */  nop
/* 007B8 809DF5B8 4502000C */  bc1fl   .L809DF5EC
/* 007BC 809DF5BC 960C027A */  lhu     $t4, 0x027A($s0)           ## 0000027A
/* 007C0 809DF5C0 96020276 */  lhu     $v0, 0x0276($s0)           ## 00000276
/* 007C4 809DF5C4 30480002 */  andi    $t0, $v0, 0x0002           ## $t0 = 00000000
/* 007C8 809DF5C8 15000007 */  bne     $t0, $zero, .L809DF5E8
/* 007CC 809DF5CC 34490002 */  ori     $t1, $v0, 0x0002           ## $t1 = 00000002
/* 007D0 809DF5D0 8E0B01EC */  lw      $t3, 0x01EC($s0)           ## 000001EC
/* 007D4 809DF5D4 3C0A0600 */  lui     $t2, 0x0600                ## $t2 = 06000000
/* 007D8 809DF5D8 254A01CC */  addiu   $t2, $t2, 0x01CC           ## $t2 = 060001CC
/* 007DC 809DF5DC 154B0002 */  bne     $t2, $t3, .L809DF5E8
/* 007E0 809DF5E0 A6090276 */  sh      $t1, 0x0276($s0)           ## 00000276
/* 007E4 809DF5E4 A6000278 */  sh      $zero, 0x0278($s0)         ## 00000278
.L809DF5E8:
/* 007E8 809DF5E8 960C027A */  lhu     $t4, 0x027A($s0)           ## 0000027A
.L809DF5EC:
/* 007EC 809DF5EC 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 007F0 809DF5F0 31A2FFFF */  andi    $v0, $t5, 0xFFFF           ## $v0 = 00000001
/* 007F4 809DF5F4 28410031 */  slti    $at, $v0, 0x0031
/* 007F8 809DF5F8 14200003 */  bne     $at, $zero, .L809DF608
/* 007FC 809DF5FC A60D027A */  sh      $t5, 0x027A($s0)           ## 0000027A
/* 00800 809DF600 A600027A */  sh      $zero, 0x027A($s0)         ## 0000027A
/* 00804 809DF604 3002FFFF */  andi    $v0, $zero, 0xFFFF         ## $v0 = 00000000
.L809DF608:
/* 00808 809DF608 28410020 */  slti    $at, $v0, 0x0020
/* 0080C 809DF60C 1020000F */  beq     $at, $zero, .L809DF64C
/* 00810 809DF610 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 00814 809DF614 00042680 */  sll     $a0, $a0, 26
/* 00818 809DF618 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0081C 809DF61C 00042403 */  sra     $a0, $a0, 16
/* 00820 809DF620 3C01809E */  lui     $at, %hi(D_809E0120)       ## $at = 809E0000
/* 00824 809DF624 C4220120 */  lwc1    $f2, %lo(D_809E0120)($at)
/* 00828 809DF628 3C01809E */  lui     $at, %hi(D_809E0124)       ## $at = 809E0000
/* 0082C 809DF62C C4280124 */  lwc1    $f8, %lo(D_809E0124)($at)
/* 00830 809DF630 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00834 809DF634 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 00838 809DF638 46080282 */  mul.s   $f10, $f0, $f8
/* 0083C 809DF63C 46105480 */  add.s   $f18, $f10, $f16
/* 00840 809DF640 46029102 */  mul.s   $f4, $f18, $f2
/* 00844 809DF644 10000004 */  beq     $zero, $zero, .L809DF658
/* 00848 809DF648 E6040050 */  swc1    $f4, 0x0050($s0)           ## 00000050
.L809DF64C:
/* 0084C 809DF64C 3C01809E */  lui     $at, %hi(D_809E0128)       ## $at = 809E0000
/* 00850 809DF650 C4220128 */  lwc1    $f2, %lo(D_809E0128)($at)
/* 00854 809DF654 E6020050 */  swc1    $f2, 0x0050($s0)           ## 00000050
.L809DF658:
/* 00858 809DF658 9602027A */  lhu     $v0, 0x027A($s0)           ## 0000027A
/* 0085C 809DF65C 28410011 */  slti    $at, $v0, 0x0011
/* 00860 809DF660 14200010 */  bne     $at, $zero, .L809DF6A4
/* 00864 809DF664 00022280 */  sll     $a0, $v0, 10
/* 00868 809DF668 2484C000 */  addiu   $a0, $a0, 0xC000           ## $a0 = FFFFC000
/* 0086C 809DF66C 00042400 */  sll     $a0, $a0, 16
/* 00870 809DF670 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00874 809DF674 00042403 */  sra     $a0, $a0, 16
/* 00878 809DF678 3C01809E */  lui     $at, %hi(D_809E012C)       ## $at = 809E0000
/* 0087C 809DF67C C422012C */  lwc1    $f2, %lo(D_809E012C)($at)
/* 00880 809DF680 3C01809E */  lui     $at, %hi(D_809E0130)       ## $at = 809E0000
/* 00884 809DF684 C4260130 */  lwc1    $f6, %lo(D_809E0130)($at)
/* 00888 809DF688 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0088C 809DF68C 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 00890 809DF690 46060202 */  mul.s   $f8, $f0, $f6
/* 00894 809DF694 460A4400 */  add.s   $f16, $f8, $f10
/* 00898 809DF698 46028482 */  mul.s   $f18, $f16, $f2
/* 0089C 809DF69C 10000002 */  beq     $zero, $zero, .L809DF6A8
/* 008A0 809DF6A0 E6120054 */  swc1    $f18, 0x0054($s0)          ## 00000054
.L809DF6A4:
/* 008A4 809DF6A4 E6020054 */  swc1    $f2, 0x0054($s0)           ## 00000054
.L809DF6A8:
/* 008A8 809DF6A8 8FBF002C */  lw      $ra, 0x002C($sp)
/* 008AC 809DF6AC 8FB00028 */  lw      $s0, 0x0028($sp)
/* 008B0 809DF6B0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 008B4 809DF6B4 03E00008 */  jr      $ra
/* 008B8 809DF6B8 00000000 */  nop
