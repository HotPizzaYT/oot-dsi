glabel func_80B161C0
/* 02720 80B161C0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02724 80B161C4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02728 80B161C8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0272C 80B161CC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 02730 80B161D0 948E010E */  lhu     $t6, 0x010E($a0)           ## 0000010E
/* 02734 80B161D4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02738 80B161D8 24012085 */  addiu   $at, $zero, 0x2085         ## $at = 00002085
/* 0273C 80B161DC 15C10003 */  bne     $t6, $at, .L80B161EC       
/* 02740 80B161E0 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 02744 80B161E4 10000002 */  beq     $zero, $zero, .L80B161F0   
/* 02748 80B161E8 24030005 */  addiu   $v1, $zero, 0x0005         ## $v1 = 00000005
.L80B161EC:
/* 0274C 80B161EC 2403000A */  addiu   $v1, $zero, 0x000A         ## $v1 = 0000000A
.L80B161F0:
/* 02750 80B161F0 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 02754 80B161F4 0C042F6F */  jal     func_8010BDBC              
/* 02758 80B161F8 AFA30024 */  sw      $v1, 0x0024($sp)           
/* 0275C 80B161FC 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 02760 80B16200 1441002F */  bne     $v0, $at, .L80B162C0       
/* 02764 80B16204 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 02768 80B16208 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0276C 80B1620C 0C041AF2 */  jal     func_80106BC8              
/* 02770 80B16210 AFA30024 */  sw      $v1, 0x0024($sp)           
/* 02774 80B16214 1040002A */  beq     $v0, $zero, .L80B162C0     
/* 02778 80B16218 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 0277C 80B1621C 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 02780 80B16220 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 02784 80B16224 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 02788 80B16228 00461021 */  addu    $v0, $v0, $a2              
/* 0278C 80B1622C 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 02790 80B16230 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 02794 80B16234 10400005 */  beq     $v0, $zero, .L80B1624C     
/* 02798 80B16238 00000000 */  nop
/* 0279C 80B1623C 1041001A */  beq     $v0, $at, .L80B162A8       
/* 027A0 80B16240 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 027A4 80B16244 1000001F */  beq     $zero, $zero, .L80B162C4   
/* 027A8 80B16248 960202E0 */  lhu     $v0, 0x02E0($s0)           ## 000002E0
.L80B1624C:
/* 027AC 80B1624C 85EFE694 */  lh      $t7, -0x196C($t7)          ## 8015E694
/* 027B0 80B16250 00032023 */  subu    $a0, $zero, $v1            
/* 027B4 80B16254 24050085 */  addiu   $a1, $zero, 0x0085         ## $a1 = 00000085
/* 027B8 80B16258 01E3082A */  slt     $at, $t7, $v1              
/* 027BC 80B1625C 1020000B */  beq     $at, $zero, .L80B1628C     
/* 027C0 80B16260 00042400 */  sll     $a0, $a0, 16               
/* 027C4 80B16264 0C042DC8 */  jal     func_8010B720              
/* 027C8 80B16268 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 027CC 80B1626C 3C0580B1 */  lui     $a1, %hi(func_80B15034)    ## $a1 = 80B10000
/* 027D0 80B16270 3C0680B1 */  lui     $a2, %hi(func_80B16938)    ## $a2 = 80B10000
/* 027D4 80B16274 24C66938 */  addiu   $a2, $a2, %lo(func_80B16938) ## $a2 = 80B16938
/* 027D8 80B16278 24A55034 */  addiu   $a1, $a1, %lo(func_80B15034) ## $a1 = 80B15034
/* 027DC 80B1627C 0C2C4EA8 */  jal     func_80B13AA0              
/* 027E0 80B16280 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 027E4 80B16284 1000000F */  beq     $zero, $zero, .L80B162C4   
/* 027E8 80B16288 960202E0 */  lhu     $v0, 0x02E0($s0)           ## 000002E0
.L80B1628C:
/* 027EC 80B1628C 0C021CC3 */  jal     Rupees_ChangeBy              
/* 027F0 80B16290 00042403 */  sra     $a0, $a0, 16               
/* 027F4 80B16294 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 027F8 80B16298 0C2C5764 */  jal     func_80B15D90              
/* 027FC 80B1629C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02800 80B162A0 10000008 */  beq     $zero, $zero, .L80B162C4   
/* 02804 80B162A4 960202E0 */  lhu     $v0, 0x02E0($s0)           ## 000002E0
.L80B162A8:
/* 02808 80B162A8 3C0580B1 */  lui     $a1, %hi(func_80B16504)    ## $a1 = 80B10000
/* 0280C 80B162AC 0C2C53C8 */  jal     func_80B14F20              
/* 02810 80B162B0 24A56504 */  addiu   $a1, $a1, %lo(func_80B16504) ## $a1 = 80B16504
/* 02814 80B162B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02818 80B162B8 0C2C4EAB */  jal     func_80B13AAC              
/* 0281C 80B162BC 8FA5002C */  lw      $a1, 0x002C($sp)           
.L80B162C0:
/* 02820 80B162C0 960202E0 */  lhu     $v0, 0x02E0($s0)           ## 000002E0
.L80B162C4:
/* 02824 80B162C4 30580010 */  andi    $t8, $v0, 0x0010           ## $t8 = 00000000
/* 02828 80B162C8 13000002 */  beq     $t8, $zero, .L80B162D4     
/* 0282C 80B162CC 34590001 */  ori     $t9, $v0, 0x0001           ## $t9 = 00000001
/* 02830 80B162D0 A61902E0 */  sh      $t9, 0x02E0($s0)           ## 000002E0
.L80B162D4:
/* 02834 80B162D4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02838 80B162D8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0283C 80B162DC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02840 80B162E0 03E00008 */  jr      $ra                        
/* 02844 80B162E4 00000000 */  nop
