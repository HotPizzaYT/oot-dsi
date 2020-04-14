glabel EnBox_Update
/* 013E0 809CA1A0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 013E4 809CA1A4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 013E8 809CA1A8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 013EC 809CA1AC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 013F0 809CA1B0 908201F6 */  lbu     $v0, 0x01F6($a0)           ## 000001F6
/* 013F4 809CA1B4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 013F8 809CA1B8 304E0010 */  andi    $t6, $v0, 0x0010           ## $t6 = 00000000
/* 013FC 809CA1BC 11C00004 */  beq     $t6, $zero, .L809CA1D0     
/* 01400 809CA1C0 304FFFEF */  andi    $t7, $v0, 0xFFEF           ## $t7 = 00000000
/* 01404 809CA1C4 A08F01F6 */  sb      $t7, 0x01F6($a0)           ## 000001F6
/* 01408 809CA1C8 0C272372 */  jal     func_809C8DC8              
/* 0140C 809CA1CC 8FA5002C */  lw      $a1, 0x002C($sp)           
.L809CA1D0:
/* 01410 809CA1D0 8E1901B4 */  lw      $t9, 0x01B4($s0)           ## 000001B4
/* 01414 809CA1D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01418 809CA1D8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0141C 809CA1DC 0320F809 */  jalr    $ra, $t9                   
/* 01420 809CA1E0 00000000 */  nop
/* 01424 809CA1E4 921801F6 */  lbu     $t8, 0x01F6($s0)           ## 000001F6
/* 01428 809CA1E8 33080001 */  andi    $t0, $t8, 0x0001           ## $t0 = 00000000
/* 0142C 809CA1EC 5500000D */  bnel    $t0, $zero, .L809CA224     
/* 01430 809CA1F0 920201F9 */  lbu     $v0, 0x01F9($s0)           ## 000001F9
/* 01434 809CA1F4 0C00B638 */  jal     Actor_MoveForward
              
/* 01438 809CA1F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0143C 809CA1FC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01440 809CA200 2409001C */  addiu   $t1, $zero, 0x001C         ## $t1 = 0000001C
/* 01444 809CA204 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 01448 809CA208 44060000 */  mfc1    $a2, $f0                   
/* 0144C 809CA20C 44070000 */  mfc1    $a3, $f0                   
/* 01450 809CA210 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 01454 809CA214 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01458 809CA218 0C00B92D */  jal     func_8002E4B4              
/* 0145C 809CA21C E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 01460 809CA220 920201F9 */  lbu     $v0, 0x01F9($s0)           ## 000001F9
.L809CA224:
/* 01464 809CA224 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01468 809CA228 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0146C 809CA22C 10410007 */  beq     $v0, $at, .L809CA24C       
/* 01470 809CA230 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 01474 809CA234 10410005 */  beq     $v0, $at, .L809CA24C       
/* 01478 809CA238 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 0147C 809CA23C 10410003 */  beq     $v0, $at, .L809CA24C       
/* 01480 809CA240 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 01484 809CA244 14410005 */  bne     $v0, $at, .L809CA25C       
/* 01488 809CA248 3C054220 */  lui     $a1, 0x4220                ## $a1 = 42200000
.L809CA24C:
/* 0148C 809CA24C 0C00B56E */  jal     Actor_SetHeight
              
/* 01490 809CA250 3C0541A0 */  lui     $a1, 0x41A0                ## $a1 = 41A00000
/* 01494 809CA254 10000004 */  beq     $zero, $zero, .L809CA268   
/* 01498 809CA258 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
.L809CA25C:
/* 0149C 809CA25C 0C00B56E */  jal     Actor_SetHeight
              
/* 014A0 809CA260 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 014A4 809CA264 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
.L809CA268:
/* 014A8 809CA268 2401007C */  addiu   $at, $zero, 0x007C         ## $at = 0000007C
/* 014AC 809CA26C 000A5943 */  sra     $t3, $t2,  5               
/* 014B0 809CA270 316C007F */  andi    $t4, $t3, 0x007F           ## $t4 = 00000000
/* 014B4 809CA274 55810014 */  bnel    $t4, $at, .L809CA2C8       
/* 014B8 809CA278 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 014BC 809CA27C 8E0E01B4 */  lw      $t6, 0x01B4($s0)           ## 000001B4
/* 014C0 809CA280 3C0D809D */  lui     $t5, %hi(func_809C9D70)    ## $t5 = 809D0000
/* 014C4 809CA284 25AD9D70 */  addiu   $t5, $t5, %lo(func_809C9D70) ## $t5 = 809C9D70
/* 014C8 809CA288 15AE000E */  bne     $t5, $t6, .L809CA2C4       
/* 014CC 809CA28C 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 014D0 809CA290 44812000 */  mtc1    $at, $f4                   ## $f4 = 45.00
/* 014D4 809CA294 C606017C */  lwc1    $f6, 0x017C($s0)           ## 0000017C
/* 014D8 809CA298 4606203C */  c.lt.s  $f4, $f6                   
/* 014DC 809CA29C 00000000 */  nop
/* 014E0 809CA2A0 45020009 */  bc1fl   .L809CA2C8                 
/* 014E4 809CA2A4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 014E8 809CA2A8 920F01FA */  lbu     $t7, 0x01FA($s0)           ## 000001FA
/* 014EC 809CA2AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 014F0 809CA2B0 29E10064 */  slti    $at, $t7, 0x0064           
/* 014F4 809CA2B4 50200004 */  beql    $at, $zero, .L809CA2C8     
/* 014F8 809CA2B8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 014FC 809CA2BC 0C2727BE */  jal     func_809C9EF8              
/* 01500 809CA2C0 8FA5002C */  lw      $a1, 0x002C($sp)           
.L809CA2C4:
/* 01504 809CA2C4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809CA2C8:
/* 01508 809CA2C8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0150C 809CA2CC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01510 809CA2D0 03E00008 */  jr      $ra                        
/* 01514 809CA2D4 00000000 */  nop
