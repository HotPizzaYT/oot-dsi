glabel func_80805B2C
/* 01DEC 80805B2C 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01DF0 80805B30 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01DF4 80805B34 34218000 */  ori     $at, $at, 0x8000           ## $at = 00018000
/* 01DF8 80805B38 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01DFC 80805B3C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01E00 80805B40 00814021 */  addu    $t0, $a0, $at              
/* 01E04 80805B44 85034A38 */  lh      $v1, 0x4A38($t0)           ## 00004A38
/* 01E08 80805B48 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
/* 01E0C 80805B4C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01E10 80805B50 55230006 */  bnel    $t1, $v1, .L80805B6C       
/* 01E14 80805B54 96020020 */  lhu     $v0, 0x0020($s0)           ## 00000020
/* 01E18 80805B58 948E0020 */  lhu     $t6, 0x0020($a0)           ## 00000020
/* 01E1C 80805B5C 31CF9000 */  andi    $t7, $t6, 0x9000           ## $t7 = 00000000
/* 01E20 80805B60 55E00007 */  bnel    $t7, $zero, .L80805B80     
/* 01E24 80805B64 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 01E28 80805B68 96020020 */  lhu     $v0, 0x0020($s0)           ## 00000020
.L80805B6C:
/* 01E2C 80805B6C 2401BFFF */  addiu   $at, $zero, 0xBFFF         ## $at = FFFFBFFF
/* 01E30 80805B70 0041C027 */  nor     $t8, $v0, $at              
/* 01E34 80805B74 17000021 */  bne     $t8, $zero, .L80805BFC     
/* 01E38 80805B78 304E9000 */  andi    $t6, $v0, 0x9000           ## $t6 = 00000000
/* 01E3C 80805B7C 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
.L80805B80:
/* 01E40 80805B80 00300821 */  addu    $at, $at, $s0              
/* 01E44 80805B84 24190004 */  addiu   $t9, $zero, 0x0004         ## $t9 = 00000004
/* 01E48 80805B88 A439CA38 */  sh      $t9, -0x35C8($at)          ## 0001CA38
/* 01E4C 80805B8C 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 01E50 80805B90 00300821 */  addu    $at, $at, $s0              
/* 01E54 80805B94 240A0008 */  addiu   $t2, $zero, 0x0008         ## $t2 = 00000008
/* 01E58 80805B98 A42ACA50 */  sh      $t2, -0x35B0($at)          ## 0001CA50
/* 01E5C 80805B9C 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 01E60 80805BA0 00300821 */  addu    $at, $at, $s0              
/* 01E64 80805BA4 A420CA66 */  sh      $zero, -0x359A($at)        ## 0001CA66
/* 01E68 80805BA8 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 01E6C 80805BAC 00300821 */  addu    $at, $at, $s0              
/* 01E70 80805BB0 240B001E */  addiu   $t3, $zero, 0x001E         ## $t3 = 0000001E
/* 01E74 80805BB4 A42BCA3E */  sh      $t3, -0x35C2($at)          ## 0001CA3E
/* 01E78 80805BB8 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 01E7C 80805BBC 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 01E80 80805BC0 00300821 */  addu    $at, $at, $s0              
/* 01E84 80805BC4 240CFFFF */  addiu   $t4, $zero, 0xFFFF         ## $t4 = FFFFFFFF
/* 01E88 80805BC8 3C0D8013 */  lui     $t5, 0x8013                ## $t5 = 80130000
/* 01E8C 80805BCC 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 01E90 80805BD0 A42CCA60 */  sh      $t4, -0x35A0($at)          ## 0001CA60
/* 01E94 80805BD4 25AD33E8 */  addiu   $t5, $t5, 0x33E8           ## $t5 = 801333E8
/* 01E98 80805BD8 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 01E9C 80805BDC 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 01EA0 80805BE0 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 01EA4 80805BE4 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 01EA8 80805BE8 2404483C */  addiu   $a0, $zero, 0x483C         ## $a0 = 0000483C
/* 01EAC 80805BEC 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 01EB0 80805BF0 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01EB4 80805BF4 100000AC */  beq     $zero, $zero, .L80805EA8   
/* 01EB8 80805BF8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80805BFC:
/* 01EBC 80805BFC 11C00045 */  beq     $t6, $zero, .L80805D14     
/* 01EC0 80805C00 00037840 */  sll     $t7, $v1,  1               
/* 01EC4 80805C04 3C188013 */  lui     $t8, 0x8013                ## $t8 = 80130000
/* 01EC8 80805C08 030FC021 */  addu    $t8, $t8, $t7              
/* 01ECC 80805C0C 9718A4E0 */  lhu     $t8, -0x5B20($t8)          ## 8012A4E0
/* 01ED0 80805C10 8E1901E0 */  lw      $t9, 0x01E0($s0)           ## 000001E0
/* 01ED4 80805C14 2404005A */  addiu   $a0, $zero, 0x005A         ## $a0 = 0000005A
/* 01ED8 80805C18 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 01EDC 80805C1C 03191021 */  addu    $v0, $t8, $t9              
/* 01EE0 80805C20 904A001C */  lbu     $t2, 0x001C($v0)           ## 0000001C
/* 01EE4 80805C24 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 01EE8 80805C28 24180008 */  addiu   $t8, $zero, 0x0008         ## $t8 = 00000008
/* 01EEC 80805C2C 108A0016 */  beq     $a0, $t2, .L80805C88       
/* 01EF0 80805C30 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 01EF4 80805C34 904B001D */  lbu     $t3, 0x001D($v0)           ## 0000001D
/* 01EF8 80805C38 24010045 */  addiu   $at, $zero, 0x0045         ## $at = 00000045
/* 01EFC 80805C3C 51610013 */  beql    $t3, $at, .L80805C8C       
/* 01F00 80805C40 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 01F04 80805C44 904C001E */  lbu     $t4, 0x001E($v0)           ## 0000001E
/* 01F08 80805C48 2401004C */  addiu   $at, $zero, 0x004C         ## $at = 0000004C
/* 01F0C 80805C4C 5181000F */  beql    $t4, $at, .L80805C8C       
/* 01F10 80805C50 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 01F14 80805C54 904D001F */  lbu     $t5, 0x001F($v0)           ## 0000001F
/* 01F18 80805C58 24010044 */  addiu   $at, $zero, 0x0044         ## $at = 00000044
/* 01F1C 80805C5C 51A1000B */  beql    $t5, $at, .L80805C8C       
/* 01F20 80805C60 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 01F24 80805C64 904E0020 */  lbu     $t6, 0x0020($v0)           ## 00000020
/* 01F28 80805C68 24010041 */  addiu   $at, $zero, 0x0041         ## $at = 00000041
/* 01F2C 80805C6C 51C10007 */  beql    $t6, $at, .L80805C8C       
/* 01F30 80805C70 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 01F34 80805C74 904F0021 */  lbu     $t7, 0x0021($v0)           ## 00000021
/* 01F38 80805C78 3C0D8013 */  lui     $t5, 0x8013                ## $t5 = 80130000
/* 01F3C 80805C7C 25AD33E8 */  addiu   $t5, $t5, 0x33E8           ## $t5 = 801333E8
/* 01F40 80805C80 148F001A */  bne     $a0, $t7, .L80805CEC       
/* 01F44 80805C84 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
.L80805C88:
/* 01F48 80805C88 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
.L80805C8C:
/* 01F4C 80805C8C 00300821 */  addu    $at, $at, $s0              
/* 01F50 80805C90 A438CA50 */  sh      $t8, -0x35B0($at)          ## 0001CA50
/* 01F54 80805C94 85194A38 */  lh      $t9, 0x4A38($t0)           ## 00004A38
/* 01F58 80805C98 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 01F5C 80805C9C 00300821 */  addu    $at, $at, $s0              
/* 01F60 80805CA0 A439CA46 */  sh      $t9, -0x35BA($at)          ## 0001CA46
/* 01F64 80805CA4 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 01F68 80805CA8 00300821 */  addu    $at, $at, $s0              
/* 01F6C 80805CAC 240A0016 */  addiu   $t2, $zero, 0x0016         ## $t2 = 00000016
/* 01F70 80805CB0 A42ACA3E */  sh      $t2, -0x35C2($at)          ## 0001CA3E
/* 01F74 80805CB4 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 01F78 80805CB8 00300821 */  addu    $at, $at, $s0              
/* 01F7C 80805CBC 240B0007 */  addiu   $t3, $zero, 0x0007         ## $t3 = 00000007
/* 01F80 80805CC0 3C0C8013 */  lui     $t4, 0x8013                ## $t4 = 80130000
/* 01F84 80805CC4 A42BCA66 */  sh      $t3, -0x359A($at)          ## 0001CA66
/* 01F88 80805CC8 258C33E8 */  addiu   $t4, $t4, 0x33E8           ## $t4 = 801333E8
/* 01F8C 80805CCC AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 01F90 80805CD0 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 01F94 80805CD4 2404483B */  addiu   $a0, $zero, 0x483B         ## $a0 = 0000483B
/* 01F98 80805CD8 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 01F9C 80805CDC 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 01FA0 80805CE0 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01FA4 80805CE4 10000070 */  beq     $zero, $zero, .L80805EA8   
/* 01FA8 80805CE8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80805CEC:
/* 01FAC 80805CEC 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 01FB0 80805CF0 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 01FB4 80805CF4 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 01FB8 80805CF8 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 01FBC 80805CFC AFA70010 */  sw      $a3, 0x0010($sp)           
/* 01FC0 80805D00 2404483D */  addiu   $a0, $zero, 0x483D         ## $a0 = 0000483D
/* 01FC4 80805D04 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 01FC8 80805D08 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 01FCC 80805D0C 10000066 */  beq     $zero, $zero, .L80805EA8   
/* 01FD0 80805D10 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80805D14:
/* 01FD4 80805D14 85024ABC */  lh      $v0, 0x4ABC($t0)           ## 00004ABC
/* 01FD8 80805D18 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 01FDC 80805D1C 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 01FE0 80805D20 04400003 */  bltz    $v0, .L80805D30            
/* 01FE4 80805D24 00022023 */  subu    $a0, $zero, $v0            
/* 01FE8 80805D28 10000001 */  beq     $zero, $zero, .L80805D30   
/* 01FEC 80805D2C 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
.L80805D30:
/* 01FF0 80805D30 2881001E */  slti    $at, $a0, 0x001E           
/* 01FF4 80805D34 14200029 */  bne     $at, $zero, .L80805DDC     
/* 01FF8 80805D38 24044839 */  addiu   $a0, $zero, 0x4839         ## $a0 = 00004839
/* 01FFC 80805D3C 3C0E8013 */  lui     $t6, 0x8013                ## $t6 = 80130000
/* 02000 80805D40 25CE33E8 */  addiu   $t6, $t6, 0x33E8           ## $t6 = 801333E8
/* 02004 80805D44 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 02008 80805D48 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 0200C 80805D4C AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 02010 80805D50 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 02014 80805D54 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 02018 80805D58 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 0201C 80805D5C AFA8002C */  sw      $t0, 0x002C($sp)           
/* 02020 80805D60 8FA8002C */  lw      $t0, 0x002C($sp)           
/* 02024 80805D64 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
/* 02028 80805D68 850F4ABC */  lh      $t7, 0x4ABC($t0)           ## 00004ABC
/* 0202C 80805D6C 29E1001E */  slti    $at, $t7, 0x001E           
/* 02030 80805D70 5420000F */  bnel    $at, $zero, .L80805DB0     
/* 02034 80805D74 850A4A38 */  lh      $t2, 0x4A38($t0)           ## 00004A38
/* 02038 80805D78 85184A38 */  lh      $t8, 0x4A38($t0)           ## 00004A38
/* 0203C 80805D7C 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 02040 80805D80 00300821 */  addu    $at, $at, $s0              
/* 02044 80805D84 2719FFFF */  addiu   $t9, $t8, 0xFFFF           ## $t9 = FFFFFFFF
/* 02048 80805D88 A439CA38 */  sh      $t9, -0x35C8($at)          ## 0001CA38
/* 0204C 80805D8C 85034A38 */  lh      $v1, 0x4A38($t0)           ## 00004A38
/* 02050 80805D90 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 02054 80805D94 00300821 */  addu    $at, $at, $s0              
/* 02058 80805D98 04610010 */  bgez    $v1, .L80805DDC            
/* 0205C 80805D9C 00000000 */  nop
/* 02060 80805DA0 A429CA38 */  sh      $t1, -0x35C8($at)          ## 0001CA38
/* 02064 80805DA4 1000000D */  beq     $zero, $zero, .L80805DDC   
/* 02068 80805DA8 85034A38 */  lh      $v1, 0x4A38($t0)           ## 00004A38
/* 0206C 80805DAC 850A4A38 */  lh      $t2, 0x4A38($t0)           ## 00004A38
.L80805DB0:
/* 02070 80805DB0 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 02074 80805DB4 00300821 */  addu    $at, $at, $s0              
/* 02078 80805DB8 254B0001 */  addiu   $t3, $t2, 0x0001           ## $t3 = 00000001
/* 0207C 80805DBC A42BCA38 */  sh      $t3, -0x35C8($at)          ## 0001CA38
/* 02080 80805DC0 85034A38 */  lh      $v1, 0x4A38($t0)           ## 00004A38
/* 02084 80805DC4 28610004 */  slti    $at, $v1, 0x0004           
/* 02088 80805DC8 14200004 */  bne     $at, $zero, .L80805DDC     
/* 0208C 80805DCC 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 02090 80805DD0 00300821 */  addu    $at, $at, $s0              
/* 02094 80805DD4 A420CA38 */  sh      $zero, -0x35C8($at)        ## 0001CA38
/* 02098 80805DD8 85034A38 */  lh      $v1, 0x4A38($t0)           ## 00004A38
.L80805DDC:
/* 0209C 80805DDC 1123002E */  beq     $t1, $v1, .L80805E98       
/* 020A0 80805DE0 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 020A4 80805DE4 00036040 */  sll     $t4, $v1,  1               
/* 020A8 80805DE8 3C0D8013 */  lui     $t5, 0x8013                ## $t5 = 80130000
/* 020AC 80805DEC 01AC6821 */  addu    $t5, $t5, $t4              
/* 020B0 80805DF0 95ADA4E0 */  lhu     $t5, -0x5B20($t5)          ## 8012A4E0
/* 020B4 80805DF4 8E0E01E0 */  lw      $t6, 0x01E0($s0)           ## 000001E0
/* 020B8 80805DF8 2404005A */  addiu   $a0, $zero, 0x005A         ## $a0 = 0000005A
/* 020BC 80805DFC 01AE1021 */  addu    $v0, $t5, $t6              
/* 020C0 80805E00 904F001C */  lbu     $t7, 0x001C($v0)           ## 0000001C
/* 020C4 80805E04 508F0020 */  beql    $a0, $t7, .L80805E88       
/* 020C8 80805E08 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 020CC 80805E0C 9058001D */  lbu     $t8, 0x001D($v0)           ## 0000001D
/* 020D0 80805E10 24010045 */  addiu   $at, $zero, 0x0045         ## $at = 00000045
/* 020D4 80805E14 5301001C */  beql    $t8, $at, .L80805E88       
/* 020D8 80805E18 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 020DC 80805E1C 9059001E */  lbu     $t9, 0x001E($v0)           ## 0000001E
/* 020E0 80805E20 2401004C */  addiu   $at, $zero, 0x004C         ## $at = 0000004C
/* 020E4 80805E24 53210018 */  beql    $t9, $at, .L80805E88       
/* 020E8 80805E28 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 020EC 80805E2C 904A001F */  lbu     $t2, 0x001F($v0)           ## 0000001F
/* 020F0 80805E30 24010044 */  addiu   $at, $zero, 0x0044         ## $at = 00000044
/* 020F4 80805E34 51410014 */  beql    $t2, $at, .L80805E88       
/* 020F8 80805E38 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 020FC 80805E3C 904B0020 */  lbu     $t3, 0x0020($v0)           ## 00000020
/* 02100 80805E40 24010041 */  addiu   $at, $zero, 0x0041         ## $at = 00000041
/* 02104 80805E44 51610010 */  beql    $t3, $at, .L80805E88       
/* 02108 80805E48 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0210C 80805E4C 904C0021 */  lbu     $t4, 0x0021($v0)           ## 00000021
/* 02110 80805E50 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 02114 80805E54 00300821 */  addu    $at, $at, $s0              
/* 02118 80805E58 108C000A */  beq     $a0, $t4, .L80805E84       
/* 0211C 80805E5C 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 02120 80805E60 A429CA60 */  sh      $t1, -0x35A0($at)          ## 0001CA60
/* 02124 80805E64 850D4A38 */  lh      $t5, 0x4A38($t0)           ## 00004A38
/* 02128 80805E68 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0212C 80805E6C 00300821 */  addu    $at, $at, $s0              
/* 02130 80805E70 A42DCA62 */  sh      $t5, -0x359E($at)          ## 0001CA62
/* 02134 80805E74 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 02138 80805E78 00300821 */  addu    $at, $at, $s0              
/* 0213C 80805E7C 10000009 */  beq     $zero, $zero, .L80805EA4   
/* 02140 80805E80 A42ECAA0 */  sh      $t6, -0x3560($at)          ## 0001CAA0
.L80805E84:
/* 02144 80805E84 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
.L80805E88:
/* 02148 80805E88 00300821 */  addu    $at, $at, $s0              
/* 0214C 80805E8C 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 02150 80805E90 10000004 */  beq     $zero, $zero, .L80805EA4   
/* 02154 80805E94 A42FCA60 */  sh      $t7, -0x35A0($at)          ## 0001CA60
.L80805E98:
/* 02158 80805E98 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 0215C 80805E9C 00300821 */  addu    $at, $at, $s0              
/* 02160 80805EA0 A438CA60 */  sh      $t8, -0x35A0($at)          ## 0001CA60
.L80805EA4:
/* 02164 80805EA4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80805EA8:
/* 02168 80805EA8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0216C 80805EAC 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 02170 80805EB0 03E00008 */  jr      $ra                        
/* 02174 80805EB4 00000000 */  nop
