glabel func_8091631C
/* 0090C 8091631C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00910 80916320 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00914 80916324 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00918 80916328 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0091C 8091632C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00920 80916330 248429F0 */  addiu   $a0, $a0, 0x29F0           ## $a0 = 060029F0
/* 00924 80916334 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00928 80916338 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 0092C 8091633C 44814000 */  mtc1    $at, $f8                   ## $f8 = -10.00
/* 00930 80916340 468021A0 */  cvt.s.w $f6, $f4
/* 00934 80916344 8FA40028 */  lw      $a0, 0x0028($sp)
/* 00938 80916348 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0093C 8091634C 24A529F0 */  addiu   $a1, $a1, 0x29F0           ## $a1 = 060029F0
/* 00940 80916350 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00944 80916354 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00948 80916358 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 0094C 8091635C AFA00014 */  sw      $zero, 0x0014($sp)
/* 00950 80916360 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00954 80916364 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00958 80916368 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0095C 8091636C 8FA20028 */  lw      $v0, 0x0028($sp)
/* 00960 80916370 3C0E8092 */  lui     $t6, %hi(func_80919548)    ## $t6 = 80920000
/* 00964 80916374 25CE9548 */  addiu   $t6, $t6, %lo(func_80919548) ## $t6 = 80919548
/* 00968 80916378 240F0046 */  addiu   $t7, $zero, 0x0046         ## $t7 = 00000046
/* 0096C 8091637C AC4E0190 */  sw      $t6, 0x0190($v0)           ## 00000190
/* 00970 80916380 A44F01D2 */  sh      $t7, 0x01D2($v0)           ## 000001D2
/* 00974 80916384 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00978 80916388 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0097C 8091638C 03E00008 */  jr      $ra
/* 00980 80916390 00000000 */  nop
