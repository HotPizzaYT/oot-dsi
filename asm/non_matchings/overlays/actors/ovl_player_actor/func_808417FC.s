glabel func_808417FC
/* 0F5EC 808417FC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0F5F0 80841800 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0F5F4 80841804 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0F5F8 80841808 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0F5FC 8084180C 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 0F600 80841810 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0F604 80841814 0C028EF0 */  jal     func_800A3BC0              
/* 0F608 80841818 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 0F60C 8084181C 3C068085 */  lui     $a2, %hi(D_80854400)       ## $a2 = 80850000
/* 0F610 80841820 AFA2001C */  sw      $v0, 0x001C($sp)           
/* 0F614 80841824 24C64400 */  addiu   $a2, $a2, %lo(D_80854400)  ## $a2 = 80854400
/* 0F618 80841828 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0F61C 8084182C 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 0F620 80841830 0C20DCD2 */  jal     func_80837348              
/* 0F624 80841834 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0F628 80841838 14400005 */  bne     $v0, $zero, .L80841850     
/* 0F62C 8084183C 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 0F630 80841840 11C00003 */  beq     $t6, $zero, .L80841850     
/* 0F634 80841844 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0F638 80841848 0C20E7CC */  jal     func_80839F30              
/* 0F63C 8084184C 8FA50024 */  lw      $a1, 0x0024($sp)           
.L80841850:
/* 0F640 80841850 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0F644 80841854 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0F648 80841858 03E00008 */  jr      $ra                        
/* 0F64C 8084185C 00000000 */  nop
