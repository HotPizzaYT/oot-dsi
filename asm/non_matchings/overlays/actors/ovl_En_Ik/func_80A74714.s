glabel func_80A74714
/* 00404 80A74714 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00408 80A74718 AFB00028 */  sw      $s0, 0x0028($sp)
/* 0040C 80A7471C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00410 80A74720 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00414 80A74724 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00418 80A74728 0C028800 */  jal     SkelAnime_GetFrameCount

/* 0041C 80A7472C 2484CD70 */  addiu   $a0, $a0, 0xCD70           ## $a0 = 0600CD70
/* 00420 80A74730 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00424 80A74734 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00428 80A74738 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 0042C 80A7473C 46802020 */  cvt.s.w $f0, $f4
/* 00430 80A74740 29C10002 */  slti    $at, $t6, 0x0002
/* 00434 80A74744 24A5CD70 */  addiu   $a1, $a1, 0xCD70           ## $a1 = 0600CD70
/* 00438 80A74748 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0043C 80A7474C 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 00440 80A74750 14200005 */  bne     $at, $zero, .L80A74768
/* 00444 80A74754 46000306 */  mov.s   $f12, $f0
/* 00448 80A74758 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0044C 80A7475C 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 00450 80A74760 10000003 */  beq     $zero, $zero, .L80A74770
/* 00454 80A74764 46060081 */  sub.s   $f2, $f0, $f6
.L80A74768:
/* 00458 80A74768 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 0045C 80A7476C 00000000 */  nop
.L80A74770:
/* 00460 80A74770 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00464 80A74774 44071000 */  mfc1    $a3, $f2
/* 00468 80A74778 E7AC0010 */  swc1    $f12, 0x0010($sp)
/* 0046C 80A7477C 44060000 */  mfc1    $a2, $f0
/* 00470 80A74780 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 00474 80A74784 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00478 80A74788 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 0047C 80A7478C 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00480 80A74790 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 00484 80A74794 3C0580A7 */  lui     $a1, %hi(func_80A747C0)    ## $a1 = 80A70000
/* 00488 80A74798 A21802F8 */  sb      $t8, 0x02F8($s0)           ## 000002F8
/* 0048C 80A7479C 24A547C0 */  addiu   $a1, $a1, %lo(func_80A747C0) ## $a1 = 80A747C0
/* 00490 80A747A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00494 80A747A4 0C29D0E4 */  jal     func_80A74390
/* 00498 80A747A8 E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 0049C 80A747AC 8FBF002C */  lw      $ra, 0x002C($sp)
/* 004A0 80A747B0 8FB00028 */  lw      $s0, 0x0028($sp)
/* 004A4 80A747B4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 004A8 80A747B8 03E00008 */  jr      $ra
/* 004AC 80A747BC 00000000 */  nop
