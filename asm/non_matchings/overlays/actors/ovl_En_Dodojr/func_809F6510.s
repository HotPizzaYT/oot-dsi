glabel func_809F6510
/* 00150 809F6510 27BDFF58 */  addiu   $sp, $sp, 0xFF58           ## $sp = FFFFFF58
/* 00154 809F6514 3C0E809F */  lui     $t6, %hi(D_809F7EE8)       ## $t6 = 809F0000
/* 00158 809F6518 AFBF006C */  sw      $ra, 0x006C($sp)           
/* 0015C 809F651C AFBE0068 */  sw      $s8, 0x0068($sp)           
/* 00160 809F6520 AFB70064 */  sw      $s7, 0x0064($sp)           
/* 00164 809F6524 AFB60060 */  sw      $s6, 0x0060($sp)           
/* 00168 809F6528 AFB5005C */  sw      $s5, 0x005C($sp)           
/* 0016C 809F652C AFB40058 */  sw      $s4, 0x0058($sp)           
/* 00170 809F6530 AFB30054 */  sw      $s3, 0x0054($sp)           
/* 00174 809F6534 AFB20050 */  sw      $s2, 0x0050($sp)           
/* 00178 809F6538 AFB1004C */  sw      $s1, 0x004C($sp)           
/* 0017C 809F653C AFB00048 */  sw      $s0, 0x0048($sp)           
/* 00180 809F6540 F7B80040 */  sdc1    $f24, 0x0040($sp)          
/* 00184 809F6544 F7B60038 */  sdc1    $f22, 0x0038($sp)          
/* 00188 809F6548 F7B40030 */  sdc1    $f20, 0x0030($sp)          
/* 0018C 809F654C 25CE7EE8 */  addiu   $t6, $t6, %lo(D_809F7EE8)  ## $t6 = 809F7EE8
/* 00190 809F6550 8DD80000 */  lw      $t8, 0x0000($t6)           ## 809F7EE8
/* 00194 809F6554 27B500A4 */  addiu   $s5, $sp, 0x00A4           ## $s5 = FFFFFFFC
/* 00198 809F6558 3C19809F */  lui     $t9, %hi(D_809F7EEC)       ## $t9 = 809F0000
/* 0019C 809F655C 27397EEC */  addiu   $t9, $t9, %lo(D_809F7EEC)  ## $t9 = 809F7EEC
/* 001A0 809F6560 AEB80000 */  sw      $t8, 0x0000($s5)           ## FFFFFFFC
/* 001A4 809F6564 8F290000 */  lw      $t1, 0x0000($t9)           ## 809F7EEC
/* 001A8 809F6568 27B600A0 */  addiu   $s6, $sp, 0x00A0           ## $s6 = FFFFFFF8
/* 001AC 809F656C 3C0A809F */  lui     $t2, %hi(D_809F7EF0)       ## $t2 = 809F0000
/* 001B0 809F6570 254A7EF0 */  addiu   $t2, $t2, %lo(D_809F7EF0)  ## $t2 = 809F7EF0
/* 001B4 809F6574 AEC90000 */  sw      $t1, 0x0000($s6)           ## FFFFFFF8
/* 001B8 809F6578 8D4C0000 */  lw      $t4, 0x0000($t2)           ## 809F7EF0
/* 001BC 809F657C 27B70094 */  addiu   $s7, $sp, 0x0094           ## $s7 = FFFFFFEC
/* 001C0 809F6580 3C0D809F */  lui     $t5, %hi(D_809F7EFC)       ## $t5 = 809F0000
/* 001C4 809F6584 AEEC0000 */  sw      $t4, 0x0000($s7)           ## FFFFFFEC
/* 001C8 809F6588 8D4B0004 */  lw      $t3, 0x0004($t2)           ## 809F7EF4
/* 001CC 809F658C 25AD7EFC */  addiu   $t5, $t5, %lo(D_809F7EFC)  ## $t5 = 809F7EFC
/* 001D0 809F6590 27BE0088 */  addiu   $s8, $sp, 0x0088           ## $s8 = FFFFFFE0
/* 001D4 809F6594 AEEB0004 */  sw      $t3, 0x0004($s7)           ## FFFFFFF0
/* 001D8 809F6598 8D4C0008 */  lw      $t4, 0x0008($t2)           ## 809F7EF8
/* 001DC 809F659C 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 001E0 809F65A0 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 001E4 809F65A4 AEEC0008 */  sw      $t4, 0x0008($s7)           ## FFFFFFF4
/* 001E8 809F65A8 8DAF0000 */  lw      $t7, 0x0000($t5)           ## 809F7EFC
/* 001EC 809F65AC AFCF0000 */  sw      $t7, 0x0000($s8)           ## FFFFFFE0
/* 001F0 809F65B0 8DAE0004 */  lw      $t6, 0x0004($t5)           ## 809F7F00
/* 001F4 809F65B4 AFCE0004 */  sw      $t6, 0x0004($s8)           ## FFFFFFE4
/* 001F8 809F65B8 8DAF0008 */  lw      $t7, 0x0008($t5)           ## 809F7F04
/* 001FC 809F65BC AFCF0008 */  sw      $t7, 0x0008($s8)           ## FFFFFFE8
/* 00200 809F65C0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00204 809F65C4 AFA600B0 */  sw      $a2, 0x00B0($sp)           
/* 00208 809F65C8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0020C 809F65CC 4481A000 */  mtc1    $at, $f20                  ## $f20 = 0.50
/* 00210 809F65D0 3C014780 */  lui     $at, 0x4780                ## $at = 47800000
/* 00214 809F65D4 44813000 */  mtc1    $at, $f6                   ## $f6 = 65536.00
/* 00218 809F65D8 46140101 */  sub.s   $f4, $f0, $f20             
/* 0021C 809F65DC 8FA600B0 */  lw      $a2, 0x00B0($sp)           
/* 00220 809F65E0 C65001F4 */  lwc1    $f16, 0x01F4($s2)          ## 000001F4
/* 00224 809F65E4 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 00228 809F65E8 46062202 */  mul.s   $f8, $f4, $f6              
/* 0022C 809F65EC 00C08825 */  or      $s1, $a2, $zero            ## $s1 = 00000000
/* 00230 809F65F0 E7B00080 */  swc1    $f16, 0x0080($sp)          
/* 00234 809F65F4 4600428D */  trunc.w.s $f10, $f8                  
/* 00238 809F65F8 44105000 */  mfc1    $s0, $f10                  
/* 0023C 809F65FC 00000000 */  nop
/* 00240 809F6600 00108400 */  sll     $s0, $s0, 16               
/* 00244 809F6604 04C0003B */  bltz    $a2, .L809F66F4            
/* 00248 809F6608 00108403 */  sra     $s0, $s0, 16               
/* 0024C 809F660C 0326001A */  div     $zero, $t9, $a2            
/* 00250 809F6610 14C00002 */  bne     $a2, $zero, .L809F661C     
/* 00254 809F6614 00000000 */  nop
/* 00258 809F6618 0007000D */  break 7
.L809F661C:
/* 0025C 809F661C 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 00260 809F6620 14C10004 */  bne     $a2, $at, .L809F6634       
/* 00264 809F6624 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00268 809F6628 17210002 */  bne     $t9, $at, .L809F6634       
/* 0026C 809F662C 00000000 */  nop
/* 00270 809F6630 0006000D */  break 6
.L809F6634:
/* 00274 809F6634 3C0141B0 */  lui     $at, 0x41B0                ## $at = 41B00000
/* 00278 809F6638 4481C000 */  mtc1    $at, $f24                  ## $f24 = 22.00
/* 0027C 809F663C 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00280 809F6640 00009812 */  mflo    $s3                        
/* 00284 809F6644 00139C00 */  sll     $s3, $s3, 16               
/* 00288 809F6648 4481B000 */  mtc1    $at, $f22                  ## $f22 = 4.00
/* 0028C 809F664C 00139C03 */  sra     $s3, $s3, 16               
.L809F6650:
/* 00290 809F6650 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00294 809F6654 00000000 */  nop
/* 00298 809F6658 46140481 */  sub.s   $f18, $f0, $f20            
/* 0029C 809F665C 46169102 */  mul.s   $f4, $f18, $f22            
/* 002A0 809F6660 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 002A4 809F6664 E7A40088 */  swc1    $f4, 0x0088($sp)           
/* 002A8 809F6668 46140181 */  sub.s   $f6, $f0, $f20             
/* 002AC 809F666C 00102400 */  sll     $a0, $s0, 16               
/* 002B0 809F6670 00042403 */  sra     $a0, $a0, 16               
/* 002B4 809F6674 46163202 */  mul.s   $f8, $f6, $f22             
/* 002B8 809F6678 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 002BC 809F667C E7A80090 */  swc1    $f8, 0x0090($sp)           
/* 002C0 809F6680 46180282 */  mul.s   $f10, $f0, $f24            
/* 002C4 809F6684 C65001F0 */  lwc1    $f16, 0x01F0($s2)          ## 000001F0
/* 002C8 809F6688 00102400 */  sll     $a0, $s0, 16               
/* 002CC 809F668C 00042403 */  sra     $a0, $a0, 16               
/* 002D0 809F6690 46105480 */  add.s   $f18, $f10, $f16           
/* 002D4 809F6694 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 002D8 809F6698 E7B2007C */  swc1    $f18, 0x007C($sp)          
/* 002DC 809F669C 46180102 */  mul.s   $f4, $f0, $f24             
/* 002E0 809F66A0 C64601F8 */  lwc1    $f6, 0x01F8($s2)           ## 000001F8
/* 002E4 809F66A4 24080078 */  addiu   $t0, $zero, 0x0078         ## $t0 = 00000078
/* 002E8 809F66A8 24090028 */  addiu   $t1, $zero, 0x0028         ## $t1 = 00000028
/* 002EC 809F66AC 240A000A */  addiu   $t2, $zero, 0x000A         ## $t2 = 0000000A
/* 002F0 809F66B0 AFAA0020 */  sw      $t2, 0x0020($sp)           
/* 002F4 809F66B4 AFA9001C */  sw      $t1, 0x001C($sp)           
/* 002F8 809F66B8 46062200 */  add.s   $f8, $f4, $f6              
/* 002FC 809F66BC AFA80018 */  sw      $t0, 0x0018($sp)           
/* 00300 809F66C0 AFB60014 */  sw      $s6, 0x0014($sp)           
/* 00304 809F66C4 AFB50010 */  sw      $s5, 0x0010($sp)           
/* 00308 809F66C8 E7A80084 */  swc1    $f8, 0x0084($sp)           
/* 0030C 809F66CC 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00310 809F66D0 27A5007C */  addiu   $a1, $sp, 0x007C           ## $a1 = FFFFFFD4
/* 00314 809F66D4 02E03025 */  or      $a2, $s7, $zero            ## $a2 = FFFFFFEC
/* 00318 809F66D8 0C00A0DB */  jal     func_8002836C              
/* 0031C 809F66DC 03C03825 */  or      $a3, $s8, $zero            ## $a3 = FFFFFFE0
/* 00320 809F66E0 02138021 */  addu    $s0, $s0, $s3              
/* 00324 809F66E4 00108400 */  sll     $s0, $s0, 16               
/* 00328 809F66E8 2631FFFF */  addiu   $s1, $s1, 0xFFFF           ## $s1 = FFFFFFFF
/* 0032C 809F66EC 0621FFD8 */  bgez    $s1, .L809F6650            
/* 00330 809F66F0 00108403 */  sra     $s0, $s0, 16               
.L809F66F4:
/* 00334 809F66F4 8FBF006C */  lw      $ra, 0x006C($sp)           
/* 00338 809F66F8 D7B40030 */  ldc1    $f20, 0x0030($sp)          
/* 0033C 809F66FC D7B60038 */  ldc1    $f22, 0x0038($sp)          
/* 00340 809F6700 D7B80040 */  ldc1    $f24, 0x0040($sp)          
/* 00344 809F6704 8FB00048 */  lw      $s0, 0x0048($sp)           
/* 00348 809F6708 8FB1004C */  lw      $s1, 0x004C($sp)           
/* 0034C 809F670C 8FB20050 */  lw      $s2, 0x0050($sp)           
/* 00350 809F6710 8FB30054 */  lw      $s3, 0x0054($sp)           
/* 00354 809F6714 8FB40058 */  lw      $s4, 0x0058($sp)           
/* 00358 809F6718 8FB5005C */  lw      $s5, 0x005C($sp)           
/* 0035C 809F671C 8FB60060 */  lw      $s6, 0x0060($sp)           
/* 00360 809F6720 8FB70064 */  lw      $s7, 0x0064($sp)           
/* 00364 809F6724 8FBE0068 */  lw      $s8, 0x0068($sp)           
/* 00368 809F6728 03E00008 */  jr      $ra                        
/* 0036C 809F672C 27BD00A8 */  addiu   $sp, $sp, 0x00A8           ## $sp = 00000000
