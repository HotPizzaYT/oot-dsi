glabel func_80B26C50
/* 005A0 80B26C50 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 005A4 80B26C54 AFB40040 */  sw      $s4, 0x0040($sp)           
/* 005A8 80B26C58 AFB3003C */  sw      $s3, 0x003C($sp)           
/* 005AC 80B26C5C AFB20038 */  sw      $s2, 0x0038($sp)           
/* 005B0 80B26C60 AFB10034 */  sw      $s1, 0x0034($sp)           
/* 005B4 80B26C64 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 005B8 80B26C68 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005BC 80B26C6C 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 005C0 80B26C70 AFBF0044 */  sw      $ra, 0x0044($sp)           
/* 005C4 80B26C74 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 005C8 80B26C78 24B21C24 */  addiu   $s2, $a1, 0x1C24           ## $s2 = 00001C24
/* 005CC 80B26C7C 24130003 */  addiu   $s3, $zero, 0x0003         ## $s3 = 00000003
.L80B26C80:
/* 005D0 80B26C80 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 005D4 80B26C84 8E070024 */  lw      $a3, 0x0024($s0)           ## 00000024
/* 005D8 80B26C88 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00001C24
/* 005DC 80B26C8C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 005E0 80B26C90 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 005E4 80B26C94 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 005E8 80B26C98 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 005EC 80B26C9C E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 005F0 80B26CA0 860E0032 */  lh      $t6, 0x0032($s0)           ## 00000032
/* 005F4 80B26CA4 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 005F8 80B26CA8 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 005FC 80B26CAC 24060034 */  addiu   $a2, $zero, 0x0034         ## $a2 = 00000034
/* 00600 80B26CB0 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00604 80B26CB4 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 00608 80B26CB8 860F0032 */  lh      $t7, 0x0032($s0)           ## 00000032
/* 0060C 80B26CBC 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 00610 80B26CC0 25F85555 */  addiu   $t8, $t7, 0x5555           ## $t8 = 00005555
/* 00614 80B26CC4 1633FFEE */  bne     $s1, $s3, .L80B26C80       
/* 00618 80B26CC8 A6180032 */  sh      $t8, 0x0032($s0)           ## 00000032
/* 0061C 80B26CCC 26110024 */  addiu   $s1, $s0, 0x0024           ## $s1 = 00000024
/* 00620 80B26CD0 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000024
/* 00624 80B26CD4 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00628 80B26CD8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0062C 80B26CDC 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 00630 80B26CE0 24070050 */  addiu   $a3, $zero, 0x0050         ## $a3 = 00000050
/* 00634 80B26CE4 2404000A */  addiu   $a0, $zero, 0x000A         ## $a0 = 0000000A
/* 00638 80B26CE8 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 0063C 80B26CEC 2405000A */  addiu   $a1, $zero, 0x000A         ## $a1 = 0000000A
/* 00640 80B26CF0 9219040D */  lbu     $t9, 0x040D($s0)           ## 0000040D
/* 00644 80B26CF4 A6020196 */  sh      $v0, 0x0196($s0)           ## 00000196
/* 00648 80B26CF8 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 0064C 80B26CFC 3328FFFE */  andi    $t0, $t9, 0xFFFE           ## $t0 = 00000000
/* 00650 80B26D00 A208040D */  sb      $t0, 0x040D($s0)           ## 0000040D
/* 00654 80B26D04 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000024
/* 00658 80B26D08 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 0065C 80B26D0C 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00660 80B26D10 24073887 */  addiu   $a3, $zero, 0x3887         ## $a3 = 00003887
/* 00664 80B26D14 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
/* 00668 80B26D18 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 0066C 80B26D1C 3C0B80B2 */  lui     $t3, %hi(func_80B274A0)    ## $t3 = 80B20000
/* 00670 80B26D20 256B74A0 */  addiu   $t3, $t3, %lo(func_80B274A0) ## $t3 = 80B274A0
/* 00674 80B26D24 01215024 */  and     $t2, $t1, $at              
/* 00678 80B26D28 AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
/* 0067C 80B26D2C AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
/* 00680 80B26D30 AE0B0190 */  sw      $t3, 0x0190($s0)           ## 00000190
/* 00684 80B26D34 8FBF0044 */  lw      $ra, 0x0044($sp)           
/* 00688 80B26D38 8FB40040 */  lw      $s4, 0x0040($sp)           
/* 0068C 80B26D3C 8FB3003C */  lw      $s3, 0x003C($sp)           
/* 00690 80B26D40 8FB20038 */  lw      $s2, 0x0038($sp)           
/* 00694 80B26D44 8FB10034 */  lw      $s1, 0x0034($sp)           
/* 00698 80B26D48 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 0069C 80B26D4C 03E00008 */  jr      $ra                        
/* 006A0 80B26D50 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
