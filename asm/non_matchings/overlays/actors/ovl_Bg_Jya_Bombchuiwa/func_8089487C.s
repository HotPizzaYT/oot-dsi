glabel func_8089487C
/* 003DC 8089487C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 003E0 80894880 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 003E4 80894884 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 003E8 80894888 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 003EC 8089488C 908E0161 */  lbu     $t6, 0x0161($a0)           ## 00000161
/* 003F0 80894890 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 003F4 80894894 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 003F8 80894898 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 003FC 8089489C 55E00007 */  bnel    $t7, $zero, .L808948BC     
/* 00400 808948A0 860201B4 */  lh      $v0, 0x01B4($s0)           ## 000001B4
/* 00404 808948A4 849801B4 */  lh      $t8, 0x01B4($a0)           ## 000001B4
/* 00408 808948A8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0040C 808948AC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00410 808948B0 1B00001D */  blez    $t8, .L80894928            
/* 00414 808948B4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00418 808948B8 860201B4 */  lh      $v0, 0x01B4($s0)           ## 000001B4
.L808948BC:
/* 0041C 808948BC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00420 808948C0 24050D52 */  addiu   $a1, $zero, 0x0D52         ## $a1 = 00000D52
/* 00424 808948C4 14400005 */  bne     $v0, $zero, .L808948DC     
/* 00428 808948C8 2406FF9D */  addiu   $a2, $zero, 0xFF9D         ## $a2 = FFFFFF9D
/* 0042C 808948CC 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 00430 808948D0 0C02003E */  jal     func_800800F8              
/* 00434 808948D4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00438 808948D8 860201B4 */  lh      $v0, 0x01B4($s0)           ## 000001B4
.L808948DC:
/* 0043C 808948DC 24590001 */  addiu   $t9, $v0, 0x0001           ## $t9 = 00000001
/* 00440 808948E0 A61901B4 */  sh      $t9, 0x01B4($s0)           ## 000001B4
/* 00444 808948E4 860801B4 */  lh      $t0, 0x01B4($s0)           ## 000001B4
/* 00448 808948E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0044C 808948EC 2901000B */  slti    $at, $t0, 0x000B           
/* 00450 808948F0 54200017 */  bnel    $at, $zero, .L80894950     
/* 00454 808948F4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00458 808948F8 0C22516D */  jal     func_808945B4              
/* 0045C 808948FC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00460 80894900 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00464 80894904 0C225258 */  jal     func_80894960              
/* 00468 80894908 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0046C 8089490C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00470 80894910 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00474 80894914 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 00478 80894918 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 0047C 8089491C 24072810 */  addiu   $a3, $zero, 0x2810         ## $a3 = 00002810
/* 00480 80894920 1000000B */  beq     $zero, $zero, .L80894950   
/* 00484 80894924 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80894928:
/* 00488 80894928 02212821 */  addu    $a1, $s1, $at              
/* 0048C 8089492C 26060150 */  addiu   $a2, $s0, 0x0150           ## $a2 = 00000150
/* 00490 80894930 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 00494 80894934 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00498 80894938 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0049C 8089493C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 004A0 80894940 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 004A4 80894944 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 004A8 80894948 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 004AC 8089494C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80894950:
/* 004B0 80894950 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 004B4 80894954 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 004B8 80894958 03E00008 */  jr      $ra                        
/* 004BC 8089495C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
