glabel func_80871FB8
/* 005B8 80871FB8 27BDFF18 */  addiu   $sp, $sp, 0xFF18           ## $sp = FFFFFF18
/* 005BC 80871FBC 3C0F8087 */  lui     $t7, %hi(D_808725CC)       ## $t7 = 80870000
/* 005C0 80871FC0 AFB40040 */  sw      $s4, 0x0040($sp)           
/* 005C4 80871FC4 AFB10034 */  sw      $s1, 0x0034($sp)           
/* 005C8 80871FC8 25EF25CC */  addiu   $t7, $t7, %lo(D_808725CC)  ## $t7 = 808725CC
/* 005CC 80871FCC 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 005D0 80871FD0 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 005D4 80871FD4 AFBF0044 */  sw      $ra, 0x0044($sp)           
/* 005D8 80871FD8 AFB3003C */  sw      $s3, 0x003C($sp)           
/* 005DC 80871FDC AFB20038 */  sw      $s2, 0x0038($sp)           
/* 005E0 80871FE0 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 005E4 80871FE4 F7B40028 */  sdc1    $f20, 0x0028($sp)          
/* 005E8 80871FE8 25E80084 */  addiu   $t0, $t7, 0x0084           ## $t0 = 80872650
/* 005EC 80871FEC 27AE0058 */  addiu   $t6, $sp, 0x0058           ## $t6 = FFFFFF70
.L80871FF0:
/* 005F0 80871FF0 8DF90000 */  lw      $t9, 0x0000($t7)           ## 808725CC
/* 005F4 80871FF4 25EF000C */  addiu   $t7, $t7, 0x000C           ## $t7 = 808725D8
/* 005F8 80871FF8 25CE000C */  addiu   $t6, $t6, 0x000C           ## $t6 = FFFFFF7C
/* 005FC 80871FFC ADD9FFF4 */  sw      $t9, -0x000C($t6)          ## FFFFFF70
/* 00600 80872000 8DF8FFF8 */  lw      $t8, -0x0008($t7)          ## 808725D0
/* 00604 80872004 ADD8FFF8 */  sw      $t8, -0x0008($t6)          ## FFFFFF74
/* 00608 80872008 8DF9FFFC */  lw      $t9, -0x0004($t7)          ## 808725D4
/* 0060C 8087200C 15E8FFF8 */  bne     $t7, $t0, .L80871FF0       
/* 00610 80872010 ADD9FFFC */  sw      $t9, -0x0004($t6)          ## FFFFFF78
/* 00614 80872014 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00618 80872018 02811021 */  addu    $v0, $s4, $at              
/* 0061C 8087201C 84431D30 */  lh      $v1, 0x1D30($v0)           ## 00001D30
/* 00620 80872020 286100FF */  slti    $at, $v1, 0x00FF           
/* 00624 80872024 10200002 */  beq     $at, $zero, .L80872030     
/* 00628 80872028 24690005 */  addiu   $t1, $v1, 0x0005           ## $t1 = 00000005
/* 0062C 8087202C A4491D30 */  sh      $t1, 0x1D30($v0)           ## 00001D30
.L80872030:
/* 00630 80872030 84431D32 */  lh      $v1, 0x1D32($v0)           ## 00001D32
/* 00634 80872034 286100FF */  slti    $at, $v1, 0x00FF           
/* 00638 80872038 10200002 */  beq     $at, $zero, .L80872044     
/* 0063C 8087203C 246A0005 */  addiu   $t2, $v1, 0x0005           ## $t2 = 00000005
/* 00640 80872040 A44A1D32 */  sh      $t2, 0x1D32($v0)           ## 00001D32
.L80872044:
/* 00644 80872044 844B1D30 */  lh      $t3, 0x1D30($v0)           ## 00001D30
/* 00648 80872048 240300FF */  addiu   $v1, $zero, 0x00FF         ## $v1 = 000000FF
/* 0064C 8087204C 146B0006 */  bne     $v1, $t3, .L80872068       
/* 00650 80872050 00000000 */  nop
/* 00654 80872054 844C1D32 */  lh      $t4, 0x1D32($v0)           ## 00001D32
/* 00658 80872058 3C028087 */  lui     $v0, %hi(D_80872824)       ## $v0 = 80870000
/* 0065C 8087205C 24422824 */  addiu   $v0, $v0, %lo(D_80872824)  ## $v0 = 80872824
/* 00660 80872060 506C0008 */  beql    $v1, $t4, .L80872084       
/* 00664 80872064 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 80872824
.L80872068:
/* 00668 80872068 3C028087 */  lui     $v0, %hi(D_80872824)       ## $v0 = 80870000
/* 0066C 8087206C 24422824 */  addiu   $v0, $v0, %lo(D_80872824)  ## $v0 = 80872824
/* 00670 80872070 8C4D0000 */  lw      $t5, 0x0000($v0)           ## 80872824
/* 00674 80872074 25A8FFFF */  addiu   $t0, $t5, 0xFFFF           ## $t0 = FFFFFFFF
/* 00678 80872078 10000077 */  beq     $zero, $zero, .L80872258   
/* 0067C 8087207C AC480000 */  sw      $t0, 0x0000($v0)           ## 80872824
/* 00680 80872080 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 80872824
.L80872084:
/* 00684 80872084 2401006C */  addiu   $at, $zero, 0x006C         ## $at = 0000006C
/* 00688 80872088 27B000D0 */  addiu   $s0, $sp, 0x00D0           ## $s0 = FFFFFFE8
/* 0068C 8087208C 15E1001F */  bne     $t7, $at, .L8087210C       
/* 00690 80872090 27B30058 */  addiu   $s3, $sp, 0x0058           ## $s3 = FFFFFF70
/* 00694 80872094 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00698 80872098 4481A000 */  mtc1    $at, $f20                  ## $f20 = 2.00
/* 0069C 8087209C 27B200DC */  addiu   $s2, $sp, 0x00DC           ## $s2 = FFFFFFF4
/* 006A0 808720A0 C6040000 */  lwc1    $f4, 0x0000($s0)           ## FFFFFFE8
.L808720A4:
/* 006A4 808720A4 C6260024 */  lwc1    $f6, 0x0024($s1)           ## 00000024
/* 006A8 808720A8 4406A000 */  mfc1    $a2, $f20                  
/* 006AC 808720AC 240E00C8 */  addiu   $t6, $zero, 0x00C8         ## $t6 = 000000C8
/* 006B0 808720B0 46062200 */  add.s   $f8, $f4, $f6              
/* 006B4 808720B4 2418004B */  addiu   $t8, $zero, 0x004B         ## $t8 = 0000004B
/* 006B8 808720B8 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 006BC 808720BC 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 006C0 808720C0 E7A800DC */  swc1    $f8, 0x00DC($sp)           
/* 006C4 808720C4 C6300028 */  lwc1    $f16, 0x0028($s1)          ## 00000028
/* 006C8 808720C8 C60A0004 */  lwc1    $f10, 0x0004($s0)          ## FFFFFFEC
/* 006CC 808720CC 02402825 */  or      $a1, $s2, $zero            ## $a1 = FFFFFFF4
/* 006D0 808720D0 24070003 */  addiu   $a3, $zero, 0x0003         ## $a3 = 00000003
/* 006D4 808720D4 46105480 */  add.s   $f18, $f10, $f16           
/* 006D8 808720D8 E7B200E0 */  swc1    $f18, 0x00E0($sp)          
/* 006DC 808720DC C626002C */  lwc1    $f6, 0x002C($s1)           ## 0000002C
/* 006E0 808720E0 C6040008 */  lwc1    $f4, 0x0008($s0)           ## FFFFFFF0
/* 006E4 808720E4 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 006E8 808720E8 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 006EC 808720EC 46062200 */  add.s   $f8, $f4, $f6              
/* 006F0 808720F0 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 006F4 808720F4 0C00CD20 */  jal     func_80033480              
/* 006F8 808720F8 E7A800E4 */  swc1    $f8, 0x00E4($sp)           
/* 006FC 808720FC 2610FFF4 */  addiu   $s0, $s0, 0xFFF4           ## $s0 = FFFFFFDC
/* 00700 80872100 0213082B */  sltu    $at, $s0, $s3              
/* 00704 80872104 5020FFE7 */  beql    $at, $zero, .L808720A4     
/* 00708 80872108 C6040000 */  lwc1    $f4, 0x0000($s0)           ## FFFFFFDC
.L8087210C:
/* 0070C 8087210C 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00710 80872110 4481A000 */  mtc1    $at, $f20                  ## $f20 = 200.00
/* 00714 80872114 C62A0024 */  lwc1    $f10, 0x0024($s1)          ## 00000024
/* 00718 80872118 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0071C 8087211C 44812000 */  mtc1    $at, $f4                   ## $f4 = 20.00
/* 00720 80872120 46145400 */  add.s   $f16, $f10, $f20           
/* 00724 80872124 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00728 80872128 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 0072C 8087212C 27B200DC */  addiu   $s2, $sp, 0x00DC           ## $s2 = FFFFFFF4
/* 00730 80872130 E7B000DC */  swc1    $f16, 0x00DC($sp)          
/* 00734 80872134 C6320028 */  lwc1    $f18, 0x0028($s1)          ## 00000028
/* 00738 80872138 02402025 */  or      $a0, $s2, $zero            ## $a0 = FFFFFFF4
/* 0073C 8087213C 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 00740 80872140 46049181 */  sub.s   $f6, $f18, $f4             
/* 00744 80872144 E7A600E0 */  swc1    $f6, 0x00E0($sp)           
/* 00748 80872148 C628002C */  lwc1    $f8, 0x002C($s1)           ## 0000002C
/* 0074C 8087214C 460A4400 */  add.s   $f16, $f8, $f10            
/* 00750 80872150 0C21C682 */  jal     func_80871A08              
/* 00754 80872154 E7B000E4 */  swc1    $f16, 0x00E4($sp)          
/* 00758 80872158 C6320024 */  lwc1    $f18, 0x0024($s1)          ## 00000024
/* 0075C 8087215C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00760 80872160 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 00764 80872164 46149101 */  sub.s   $f4, $f18, $f20            
/* 00768 80872168 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0076C 8087216C 44819000 */  mtc1    $at, $f18                  ## $f18 = 100.00
/* 00770 80872170 02402025 */  or      $a0, $s2, $zero            ## $a0 = FFFFFFF4
/* 00774 80872174 E7A400DC */  swc1    $f4, 0x00DC($sp)           
/* 00778 80872178 C6260028 */  lwc1    $f6, 0x0028($s1)           ## 00000028
/* 0077C 8087217C 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 00780 80872180 46083281 */  sub.s   $f10, $f6, $f8             
/* 00784 80872184 E7AA00E0 */  swc1    $f10, 0x00E0($sp)          
/* 00788 80872188 C630002C */  lwc1    $f16, 0x002C($s1)          ## 0000002C
/* 0078C 8087218C 46128100 */  add.s   $f4, $f16, $f18            
/* 00790 80872190 0C21C682 */  jal     func_80871A08              
/* 00794 80872194 E7A400E4 */  swc1    $f4, 0x00E4($sp)           
/* 00798 80872198 26240164 */  addiu   $a0, $s1, 0x0164           ## $a0 = 00000164
/* 0079C 8087219C 24050064 */  addiu   $a1, $zero, 0x0064         ## $a1 = 00000064
/* 007A0 808721A0 0C01DE5F */  jal     Math_ApproxS
              
/* 007A4 808721A4 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 007A8 808721A8 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 007AC 808721AC 44816000 */  mtc1    $at, $f12                  ## $f12 = 500.00
/* 007B0 808721B0 24050078 */  addiu   $a1, $zero, 0x0078         ## $a1 = 00000078
/* 007B4 808721B4 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 007B8 808721B8 0C02A800 */  jal     func_800AA000              
/* 007BC 808721BC 2407000A */  addiu   $a3, $zero, 0x000A         ## $a3 = 0000000A
/* 007C0 808721C0 86290164 */  lh      $t1, 0x0164($s1)           ## 00000164
/* 007C4 808721C4 240A006E */  addiu   $t2, $zero, 0x006E         ## $t2 = 0000006E
/* 007C8 808721C8 240B0032 */  addiu   $t3, $zero, 0x0032         ## $t3 = 00000032
/* 007CC 808721CC 01493023 */  subu    $a2, $t2, $t1              
/* 007D0 808721D0 00063400 */  sll     $a2, $a2, 16               
/* 007D4 808721D4 00063403 */  sra     $a2, $a2, 16               
/* 007D8 808721D8 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 007DC 808721DC 262400B4 */  addiu   $a0, $s1, 0x00B4           ## $a0 = 000000B4
/* 007E0 808721E0 24051333 */  addiu   $a1, $zero, 0x1333         ## $a1 = 00001333
/* 007E4 808721E4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 007E8 808721E8 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 007EC 808721EC 14400011 */  bne     $v0, $zero, .L80872234     
/* 007F0 808721F0 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 007F4 808721F4 3C058087 */  lui     $a1, %hi(func_8087227C)    ## $a1 = 80870000
/* 007F8 808721F8 24A5227C */  addiu   $a1, $a1, %lo(func_8087227C) ## $a1 = 8087227C
/* 007FC 808721FC 0C21C680 */  jal     BgDodoago_SetupAction              
/* 00800 80872200 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00804 80872204 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 00808 80872208 3C0C8013 */  lui     $t4, 0x8013                ## $t4 = 80130000
/* 0080C 8087220C 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 00810 80872210 258C33E8 */  addiu   $t4, $t4, 0x33E8           ## $t4 = 801333E8
/* 00814 80872214 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 00818 80872218 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 0081C 8087221C 2404281D */  addiu   $a0, $zero, 0x281D         ## $a0 = 0000281D
/* 00820 80872220 262500E4 */  addiu   $a1, $s1, 0x00E4           ## $a1 = 000000E4
/* 00824 80872224 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00828 80872228 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 0082C 8087222C 1000000B */  beq     $zero, $zero, .L8087225C   
/* 00830 80872230 8FBF0044 */  lw      $ra, 0x0044($sp)           
.L80872234:
/* 00834 80872234 3C0D8013 */  lui     $t5, 0x8013                ## $t5 = 80130000
/* 00838 80872238 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 000033E0
/* 0083C 8087223C 25AD33E8 */  addiu   $t5, $t5, 0x33E8           ## $t5 = 801333E8
/* 00840 80872240 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 00844 80872244 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00848 80872248 2404201E */  addiu   $a0, $zero, 0x201E         ## $a0 = 0000201E
/* 0084C 8087224C 262500E4 */  addiu   $a1, $s1, 0x00E4           ## $a1 = 000000E4
/* 00850 80872250 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00854 80872254 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
.L80872258:
/* 00858 80872258 8FBF0044 */  lw      $ra, 0x0044($sp)           
.L8087225C:
/* 0085C 8087225C D7B40028 */  ldc1    $f20, 0x0028($sp)          
/* 00860 80872260 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00864 80872264 8FB10034 */  lw      $s1, 0x0034($sp)           
/* 00868 80872268 8FB20038 */  lw      $s2, 0x0038($sp)           
/* 0086C 8087226C 8FB3003C */  lw      $s3, 0x003C($sp)           
/* 00870 80872270 8FB40040 */  lw      $s4, 0x0040($sp)           
/* 00874 80872274 03E00008 */  jr      $ra                        
/* 00878 80872278 27BD00E8 */  addiu   $sp, $sp, 0x00E8           ## $sp = 00000000
