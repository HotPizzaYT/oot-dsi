glabel func_808A1B00
/* 00300 808A1B00 90820160 */  lbu     $v0, 0x0160($a0)           ## 00000160
/* 00304 808A1B04 30420002 */  andi    $v0, $v0, 0x0002           ## $v0 = 00000000
/* 00308 808A1B08 0002102B */  sltu    $v0, $zero, $v0            
/* 0030C 808A1B0C 10400012 */  beq     $v0, $zero, .L808A1B58     
/* 00310 808A1B10 00000000 */  nop
/* 00314 808A1B14 90820170 */  lbu     $v0, 0x0170($a0)           ## 00000170
/* 00318 808A1B18 30420002 */  andi    $v0, $v0, 0x0002           ## $v0 = 00000000
/* 0031C 808A1B1C 2C420001 */  sltiu   $v0, $v0, 0x0001           
/* 00320 808A1B20 1040000D */  beq     $v0, $zero, .L808A1B58     
/* 00324 808A1B24 00000000 */  nop
/* 00328 808A1B28 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 0032C 808A1B2C C4860028 */  lwc1    $f6, 0x0028($a0)           ## 00000028
/* 00330 808A1B30 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00334 808A1B34 C5C40028 */  lwc1    $f4, 0x0028($t6)           ## 00000028
/* 00338 808A1B38 44815000 */  mtc1    $at, $f10                  ## $f10 = 80.00
/* 0033C 808A1B3C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00340 808A1B40 46062201 */  sub.s   $f8, $f4, $f6              
/* 00344 808A1B44 460A403C */  c.lt.s  $f8, $f10                  
/* 00348 808A1B48 00000000 */  nop
/* 0034C 808A1B4C 45000002 */  bc1f    .L808A1B58                 
/* 00350 808A1B50 00000000 */  nop
/* 00354 808A1B54 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L808A1B58:
/* 00358 808A1B58 03E00008 */  jr      $ra                        
/* 0035C 808A1B5C 00000000 */  nop

