
.section .text80061900, "ax"

osContStartQuery:
/* 03CD00 80061900 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03CD04 80061904 AFB00010 */  sw    $s0, 0x10($sp)
/* 03CD08 80061908 AFBF0014 */  sw    $ra, 0x14($sp)
/* 03CD0C 8006190C 0C019771 */  jal   osSiGetAccess
/* 03CD10 80061910 00808021 */   addu  $s0, $a0, $zero
/* 03CD14 80061914 3C02800A */  lui   $v0, 0x800a
/* 03CD18 80061918 9042A61C */  lbu   $v0, -0x59e4($v0)
/* 03CD1C 8006191C 1040000B */  beqz  $v0, .L8006194C
/* 03CD20 80061920 00000000 */   nop   
/* 03CD24 80061924 0C018774 */  jal   osPackRequestData
/* 03CD28 80061928 00002021 */   addu  $a0, $zero, $zero
/* 03CD2C 8006192C 3C05800B */  lui   $a1, 0x800b
/* 03CD30 80061930 24A50ED0 */  addiu $a1, $a1, 0xed0
/* 03CD34 80061934 0C019730 */  jal   osSiRawStartDma
/* 03CD38 80061938 24040001 */   addiu $a0, $zero, 1
/* 03CD3C 8006193C 02002021 */  addu  $a0, $s0, $zero
/* 03CD40 80061940 00002821 */  addu  $a1, $zero, $zero
/* 03CD44 80061944 0C0195BC */  jal   osRecvMesg
/* 03CD48 80061948 24060001 */   addiu $a2, $zero, 1
.L8006194C:
/* 03CD4C 8006194C 3C05800B */  lui   $a1, 0x800b
/* 03CD50 80061950 24A50ED0 */  addiu $a1, $a1, 0xed0
/* 03CD54 80061954 0C019730 */  jal   osSiRawStartDma
/* 03CD58 80061958 00002021 */   addu  $a0, $zero, $zero
/* 03CD5C 8006195C 3C01800A */  lui   $at, 0x800a
/* 03CD60 80061960 A020A61C */  sb    $zero, -0x59e4($at)
/* 03CD64 80061964 0C01978C */  jal   osSiRelAccess
/* 03CD68 80061968 00408021 */   addu  $s0, $v0, $zero
/* 03CD6C 8006196C 02001021 */  addu  $v0, $s0, $zero
/* 03CD70 80061970 8FBF0014 */  lw    $ra, 0x14($sp)
/* 03CD74 80061974 8FB00010 */  lw    $s0, 0x10($sp)
/* 03CD78 80061978 03E00008 */  jr    $ra
/* 03CD7C 8006197C 27BD0018 */   addiu $sp, $sp, 0x18

osContGetQuery:
/* 03CD80 80061980 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 03CD84 80061984 AFBF0018 */  sw    $ra, 0x18($sp)
/* 03CD88 80061988 00802821 */  addu  $a1, $a0, $zero
/* 03CD8C 8006198C 0C018747 */  jal   osContGetInitData
/* 03CD90 80061990 27A40010 */   addiu $a0, $sp, 0x10
/* 03CD94 80061994 8FBF0018 */  lw    $ra, 0x18($sp)
/* 03CD98 80061998 03E00008 */  jr    $ra
/* 03CD9C 8006199C 27BD0020 */   addiu $sp, $sp, 0x20

osContStartReadData:
/* 03CDA0 800619A0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03CDA4 800619A4 AFB00010 */  sw    $s0, 0x10($sp)
/* 03CDA8 800619A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 03CDAC 800619AC 0C019771 */  jal   osSiGetAccess
/* 03CDB0 800619B0 00808021 */   addu  $s0, $a0, $zero
/* 03CDB4 800619B4 3C03800A */  lui   $v1, 0x800a
/* 03CDB8 800619B8 9063A61C */  lbu   $v1, -0x59e4($v1)
/* 03CDBC 800619BC 24020001 */  addiu $v0, $zero, 1
/* 03CDC0 800619C0 1062000B */  beq   $v1, $v0, .L800619F0
/* 03CDC4 800619C4 00000000 */   nop   
/* 03CDC8 800619C8 0C0186B1 */  jal   osPackReadData
/* 03CDCC 800619CC 00000000 */   nop   
/* 03CDD0 800619D0 3C05800B */  lui   $a1, 0x800b
/* 03CDD4 800619D4 24A50ED0 */  addiu $a1, $a1, 0xed0
/* 03CDD8 800619D8 0C019730 */  jal   osSiRawStartDma
/* 03CDDC 800619DC 24040001 */   addiu $a0, $zero, 1
/* 03CDE0 800619E0 02002021 */  addu  $a0, $s0, $zero
/* 03CDE4 800619E4 00002821 */  addu  $a1, $zero, $zero
/* 03CDE8 800619E8 0C0195BC */  jal   osRecvMesg
/* 03CDEC 800619EC 24060001 */   addiu $a2, $zero, 1
.L800619F0:
/* 03CDF0 800619F0 3C05800B */  lui   $a1, 0x800b
/* 03CDF4 800619F4 24A50ED0 */  addiu $a1, $a1, 0xed0
/* 03CDF8 800619F8 0C019730 */  jal   osSiRawStartDma
/* 03CDFC 800619FC 00002021 */   addu  $a0, $zero, $zero
/* 03CE00 80061A00 24030001 */  addiu $v1, $zero, 1
/* 03CE04 80061A04 3C01800A */  lui   $at, 0x800a
/* 03CE08 80061A08 A023A61C */  sb    $v1, -0x59e4($at)
/* 03CE0C 80061A0C 0C01978C */  jal   osSiRelAccess
/* 03CE10 80061A10 00408021 */   addu  $s0, $v0, $zero
/* 03CE14 80061A14 02001021 */  addu  $v0, $s0, $zero
/* 03CE18 80061A18 8FBF0014 */  lw    $ra, 0x14($sp)
/* 03CE1C 80061A1C 8FB00010 */  lw    $s0, 0x10($sp)
/* 03CE20 80061A20 03E00008 */  jr    $ra
/* 03CE24 80061A24 27BD0018 */   addiu $sp, $sp, 0x18

osContGetReadData:
/* 03CE28 80061A28 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 03CE2C 80061A2C 00804821 */  addu  $t1, $a0, $zero
/* 03CE30 80061A30 3C02800A */  lui   $v0, 0x800a
/* 03CE34 80061A34 9042A606 */  lbu   $v0, -0x59fa($v0)
/* 03CE38 80061A38 3C08800B */  lui   $t0, 0x800b
/* 03CE3C 80061A3C 25080ED0 */  addiu $t0, $t0, 0xed0
/* 03CE40 80061A40 1840001D */  blez  $v0, .L80061AB8
/* 03CE44 80061A44 00003821 */   addu  $a3, $zero, $zero
/* 03CE48 80061A48 24860003 */  addiu $a2, $a0, 3
.L80061A4C:
/* 03CE4C 80061A4C 89020000 */  lwl   $v0, ($t0)
/* 03CE50 80061A50 99020003 */  lwr   $v0, 3($t0)
/* 03CE54 80061A54 89030004 */  lwl   $v1, 4($t0)
/* 03CE58 80061A58 99030007 */  lwr   $v1, 7($t0)
/* 03CE5C 80061A5C ABA20000 */  swl   $v0, ($sp)
/* 03CE60 80061A60 BBA20003 */  swr   $v0, 3($sp)
/* 03CE64 80061A64 ABA30004 */  swl   $v1, 4($sp)
/* 03CE68 80061A68 BBA30007 */  swr   $v1, 7($sp)
/* 03CE6C 80061A6C 93A20002 */  lbu   $v0, 2($sp)
/* 03CE70 80061A70 304200C0 */  andi  $v0, $v0, 0xc0
/* 03CE74 80061A74 00021102 */  srl   $v0, $v0, 4
/* 03CE78 80061A78 14400007 */  bnez  $v0, .L80061A98
/* 03CE7C 80061A7C A0C20001 */   sb    $v0, 1($a2)
/* 03CE80 80061A80 97A20004 */  lhu   $v0, 4($sp)
/* 03CE84 80061A84 A5220000 */  sh    $v0, ($t1)
/* 03CE88 80061A88 93A20006 */  lbu   $v0, 6($sp)
/* 03CE8C 80061A8C A0C2FFFF */  sb    $v0, -1($a2)
/* 03CE90 80061A90 93A20007 */  lbu   $v0, 7($sp)
/* 03CE94 80061A94 A0C20000 */  sb    $v0, ($a2)
.L80061A98:
/* 03CE98 80061A98 24E70001 */  addiu $a3, $a3, 1
/* 03CE9C 80061A9C 25080008 */  addiu $t0, $t0, 8
/* 03CEA0 80061AA0 3C02800A */  lui   $v0, 0x800a
/* 03CEA4 80061AA4 9042A606 */  lbu   $v0, -0x59fa($v0)
/* 03CEA8 80061AA8 24C60006 */  addiu $a2, $a2, 6
/* 03CEAC 80061AAC 00E2102A */  slt   $v0, $a3, $v0
/* 03CEB0 80061AB0 1440FFE6 */  bnez  $v0, .L80061A4C
/* 03CEB4 80061AB4 25290006 */   addiu $t1, $t1, 6
.L80061AB8:
/* 03CEB8 80061AB8 27BD0010 */  addiu $sp, $sp, 0x10
/* 03CEBC 80061ABC 03E00008 */  jr    $ra
/* 03CEC0 80061AC0 00000000 */   nop   

osPackReadData:
/* 03CEC4 80061AC4 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 03CEC8 80061AC8 3C07800B */  lui   $a3, 0x800b
/* 03CECC 80061ACC 24E70ED0 */  addiu $a3, $a3, 0xed0
/* 03CED0 80061AD0 2406000E */  addiu $a2, $zero, 0xe
/* 03CED4 80061AD4 24E20038 */  addiu $v0, $a3, 0x38
.L80061AD8:
/* 03CED8 80061AD8 AC400000 */  sw    $zero, ($v0)
/* 03CEDC 80061ADC 24C6FFFF */  addiu $a2, $a2, -1
/* 03CEE0 80061AE0 04C1FFFD */  bgez  $a2, .L80061AD8
/* 03CEE4 80061AE4 2442FFFC */   addiu $v0, $v0, -4
/* 03CEE8 80061AE8 24020001 */  addiu $v0, $zero, 1
/* 03CEEC 80061AEC 3C04800A */  lui   $a0, 0x800a
/* 03CEF0 80061AF0 9084A606 */  lbu   $a0, -0x59fa($a0)
/* 03CEF4 80061AF4 00003021 */  addu  $a2, $zero, $zero
/* 03CEF8 80061AF8 3C01800B */  lui   $at, 0x800b
/* 03CEFC 80061AFC AC220F0C */  sw    $v0, 0xf0c($at)
/* 03CF00 80061B00 240200FF */  addiu $v0, $zero, 0xff
/* 03CF04 80061B04 24030001 */  addiu $v1, $zero, 1
/* 03CF08 80061B08 A3A20000 */  sb    $v0, ($sp)
/* 03CF0C 80061B0C 24020004 */  addiu $v0, $zero, 4
/* 03CF10 80061B10 A3A20002 */  sb    $v0, 2($sp)
/* 03CF14 80061B14 3402FFFF */  ori   $v0, $zero, 0xffff
/* 03CF18 80061B18 A7A20004 */  sh    $v0, 4($sp)
/* 03CF1C 80061B1C 2402FFFF */  addiu $v0, $zero, -1
/* 03CF20 80061B20 A3A30001 */  sb    $v1, 1($sp)
/* 03CF24 80061B24 A3A30003 */  sb    $v1, 3($sp)
/* 03CF28 80061B28 A3A20006 */  sb    $v0, 6($sp)
/* 03CF2C 80061B2C 1880000F */  blez  $a0, .L80061B6C
/* 03CF30 80061B30 A3A20007 */   sb    $v0, 7($sp)
.L80061B34:
/* 03CF34 80061B34 8BA20000 */  lwl   $v0, ($sp)
/* 03CF38 80061B38 9BA20003 */  lwr   $v0, 3($sp)
/* 03CF3C 80061B3C 8BA30004 */  lwl   $v1, 4($sp)
/* 03CF40 80061B40 9BA30007 */  lwr   $v1, 7($sp)
/* 03CF44 80061B44 A8E20000 */  swl   $v0, ($a3)
/* 03CF48 80061B48 B8E20003 */  swr   $v0, 3($a3)
/* 03CF4C 80061B4C A8E30004 */  swl   $v1, 4($a3)
/* 03CF50 80061B50 B8E30007 */  swr   $v1, 7($a3)
/* 03CF54 80061B54 3C02800A */  lui   $v0, 0x800a
/* 03CF58 80061B58 9042A606 */  lbu   $v0, -0x59fa($v0)
/* 03CF5C 80061B5C 24C60001 */  addiu $a2, $a2, 1
/* 03CF60 80061B60 00C2102A */  slt   $v0, $a2, $v0
/* 03CF64 80061B64 1440FFF3 */  bnez  $v0, .L80061B34
/* 03CF68 80061B68 24E70008 */   addiu $a3, $a3, 8
.L80061B6C:
/* 03CF6C 80061B6C 240200FE */  addiu $v0, $zero, 0xfe
/* 03CF70 80061B70 A0E20000 */  sb    $v0, ($a3)
/* 03CF74 80061B74 03E00008 */  jr    $ra
/* 03CF78 80061B78 27BD0010 */   addiu $sp, $sp, 0x10

/* 03CF7C 80061B7C 00000000 */  nop   
osContInit:
/* 03CF80 80061B80 3C028009 */  lui   $v0, 0x8009
/* 03CF84 80061B84 8C423DB0 */  lw    $v0, 0x3db0($v0)
/* 03CF88 80061B88 27BDFF80 */  addiu $sp, $sp, -0x80
/* 03CF8C 80061B8C AFB40070 */  sw    $s4, 0x70($sp)
/* 03CF90 80061B90 0080A021 */  addu  $s4, $a0, $zero
/* 03CF94 80061B94 AFB50074 */  sw    $s5, 0x74($sp)
/* 03CF98 80061B98 00A0A821 */  addu  $s5, $a1, $zero
/* 03CF9C 80061B9C AFB60078 */  sw    $s6, 0x78($sp)
/* 03CFA0 80061BA0 00C0B021 */  addu  $s6, $a2, $zero
/* 03CFA4 80061BA4 AFBF007C */  sw    $ra, 0x7c($sp)
/* 03CFA8 80061BA8 AFB3006C */  sw    $s3, 0x6c($sp)
/* 03CFAC 80061BAC AFB20068 */  sw    $s2, 0x68($sp)
/* 03CFB0 80061BB0 AFB10064 */  sw    $s1, 0x64($sp)
/* 03CFB4 80061BB4 10400003 */  beqz  $v0, .L80061BC4
/* 03CFB8 80061BB8 AFB00060 */   sw    $s0, 0x60($sp)
/* 03CFBC 80061BBC 0801873D */  j     func_80061CF4
/* 03CFC0 80061BC0 00001021 */   addu  $v0, $zero, $zero

.L80061BC4:
/* 03CFC4 80061BC4 24020001 */  addiu $v0, $zero, 1
/* 03CFC8 80061BC8 3C018009 */  lui   $at, 0x8009
/* 03CFCC 80061BCC 0C0198A8 */  jal   osGetTime
/* 03CFD0 80061BD0 AC223DB0 */   sw    $v0, 0x3db0($at)
/* 03CFD4 80061BD4 00409021 */  addu  $s2, $v0, $zero
/* 03CFD8 80061BD8 00609821 */  addu  $s3, $v1, $zero
/* 03CFDC 80061BDC 56400022 */  bnezl $s2, .L80061C68
/* 03CFE0 80061BE0 24020004 */   addiu $v0, $zero, 4
/* 03CFE4 80061BE4 16400007 */  bnez  $s2, .L80061C04
/* 03CFE8 80061BE8 27B10040 */   addiu $s1, $sp, 0x40
/* 03CFEC 80061BEC 3C020165 */  lui   $v0, 0x165
/* 03CFF0 80061BF0 3442A0BB */  ori   $v0, $v0, 0xa0bb
/* 03CFF4 80061BF4 0053102B */  sltu  $v0, $v0, $s3
/* 03CFF8 80061BF8 1440001B */  bnez  $v0, .L80061C68
/* 03CFFC 80061BFC 24020004 */   addiu $v0, $zero, 4
/* 03D000 80061C00 27B10040 */  addiu $s1, $sp, 0x40
.L80061C04:
/* 03D004 80061C04 02202021 */  addu  $a0, $s1, $zero
/* 03D008 80061C08 27B00058 */  addiu $s0, $sp, 0x58
/* 03D00C 80061C0C 02002821 */  addu  $a1, $s0, $zero
/* 03D010 80061C10 0C019560 */  jal   osCreateMesgQueue
/* 03D014 80061C14 24060001 */   addiu $a2, $zero, 1
/* 03D018 80061C18 00004021 */  addu  $t0, $zero, $zero
/* 03D01C 80061C1C 00004821 */  addu  $t1, $zero, $zero
/* 03D020 80061C20 27A40020 */  addiu $a0, $sp, 0x20
/* 03D024 80061C24 24060000 */  addiu $a2, $zero, 0
/* 03D028 80061C28 3C070165 */  lui   $a3, 0x165
/* 03D02C 80061C2C 34E7A0BC */  ori   $a3, $a3, 0xa0bc
/* 03D030 80061C30 00F3102B */  sltu  $v0, $a3, $s3
/* 03D034 80061C34 00F33823 */  subu  $a3, $a3, $s3
/* 03D038 80061C38 00D23023 */  subu  $a2, $a2, $s2
/* 03D03C 80061C3C 00C23023 */  subu  $a2, $a2, $v0
/* 03D040 80061C40 AFA80010 */  sw    $t0, 0x10($sp)
/* 03D044 80061C44 AFA90014 */  sw    $t1, 0x14($sp)
/* 03D048 80061C48 AFB10018 */  sw    $s1, 0x18($sp)
/* 03D04C 80061C4C 0C0198D4 */  jal   osSetTimer
/* 03D050 80061C50 AFB0001C */   sw    $s0, 0x1c($sp)
/* 03D054 80061C54 02202021 */  addu  $a0, $s1, $zero
/* 03D058 80061C58 02002821 */  addu  $a1, $s0, $zero
/* 03D05C 80061C5C 0C0195BC */  jal   osRecvMesg
/* 03D060 80061C60 24060001 */   addiu $a2, $zero, 1
/* 03D064 80061C64 24020004 */  addiu $v0, $zero, 4
.L80061C68:
/* 03D068 80061C68 3C01800A */  lui   $at, 0x800a
/* 03D06C 80061C6C A022A606 */  sb    $v0, -0x59fa($at)
/* 03D070 80061C70 0C018774 */  jal   osPackRequestData
/* 03D074 80061C74 00002021 */   addu  $a0, $zero, $zero
/* 03D078 80061C78 24040001 */  addiu $a0, $zero, 1
/* 03D07C 80061C7C 3C11800B */  lui   $s1, 0x800b
/* 03D080 80061C80 26310ED0 */  addiu $s1, $s1, 0xed0
/* 03D084 80061C84 0C019730 */  jal   osSiRawStartDma
/* 03D088 80061C88 02202821 */   addu  $a1, $s1, $zero
/* 03D08C 80061C8C 02802021 */  addu  $a0, $s4, $zero
/* 03D090 80061C90 27B00058 */  addiu $s0, $sp, 0x58
/* 03D094 80061C94 02002821 */  addu  $a1, $s0, $zero
/* 03D098 80061C98 0C0195BC */  jal   osRecvMesg
/* 03D09C 80061C9C 24060001 */   addiu $a2, $zero, 1
/* 03D0A0 80061CA0 00002021 */  addu  $a0, $zero, $zero
/* 03D0A4 80061CA4 0C019730 */  jal   osSiRawStartDma
/* 03D0A8 80061CA8 02202821 */   addu  $a1, $s1, $zero
/* 03D0AC 80061CAC 02802021 */  addu  $a0, $s4, $zero
/* 03D0B0 80061CB0 02002821 */  addu  $a1, $s0, $zero
/* 03D0B4 80061CB4 24060001 */  addiu $a2, $zero, 1
/* 03D0B8 80061CB8 0C0195BC */  jal   osRecvMesg
/* 03D0BC 80061CBC 00408021 */   addu  $s0, $v0, $zero
/* 03D0C0 80061CC0 02A02021 */  addu  $a0, $s5, $zero
/* 03D0C4 80061CC4 0C018747 */  jal   osContGetInitData
/* 03D0C8 80061CC8 02C02821 */   addu  $a1, $s6, $zero
/* 03D0CC 80061CCC 3C01800A */  lui   $at, 0x800a
/* 03D0D0 80061CD0 0C01975C */  jal   osSiCreateAccessQueue
/* 03D0D4 80061CD4 A020A61C */   sb    $zero, -0x59e4($at)
/* 03D0D8 80061CD8 3C04800E */  lui   $a0, 0x800e
/* 03D0DC 80061CDC 2484AAC0 */  addiu $a0, $a0, -0x5540
/* 03D0E0 80061CE0 3C05800A */  lui   $a1, 0x800a
/* 03D0E4 80061CE4 24A5A620 */  addiu $a1, $a1, -0x59e0
/* 03D0E8 80061CE8 0C019560 */  jal   osCreateMesgQueue
/* 03D0EC 80061CEC 24060001 */   addiu $a2, $zero, 1
/* 03D0F0 80061CF0 02001021 */  addu  $v0, $s0, $zero
func_80061CF4:
/* 03D0F4 80061CF4 8FBF007C */  lw    $ra, 0x7c($sp)
/* 03D0F8 80061CF8 8FB60078 */  lw    $s6, 0x78($sp)
/* 03D0FC 80061CFC 8FB50074 */  lw    $s5, 0x74($sp)
/* 03D100 80061D00 8FB40070 */  lw    $s4, 0x70($sp)
/* 03D104 80061D04 8FB3006C */  lw    $s3, 0x6c($sp)
/* 03D108 80061D08 8FB20068 */  lw    $s2, 0x68($sp)
/* 03D10C 80061D0C 8FB10064 */  lw    $s1, 0x64($sp)
/* 03D110 80061D10 8FB00060 */  lw    $s0, 0x60($sp)
/* 03D114 80061D14 03E00008 */  jr    $ra
/* 03D118 80061D18 27BD0080 */   addiu $sp, $sp, 0x80

osContGetInitData:
/* 03D11C 80061D1C 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 03D120 80061D20 00805821 */  addu  $t3, $a0, $zero
/* 03D124 80061D24 00A04821 */  addu  $t1, $a1, $zero
/* 03D128 80061D28 00005021 */  addu  $t2, $zero, $zero
/* 03D12C 80061D2C 3C02800A */  lui   $v0, 0x800a
/* 03D130 80061D30 9042A606 */  lbu   $v0, -0x59fa($v0)
/* 03D134 80061D34 3C08800B */  lui   $t0, 0x800b
/* 03D138 80061D38 25080ED0 */  addiu $t0, $t0, 0xed0
/* 03D13C 80061D3C 18400021 */  blez  $v0, .L80061DC4
/* 03D140 80061D40 00003821 */   addu  $a3, $zero, $zero
/* 03D144 80061D44 240C0001 */  addiu $t4, $zero, 1
/* 03D148 80061D48 24A60002 */  addiu $a2, $a1, 2
.L80061D4C:
/* 03D14C 80061D4C 89020000 */  lwl   $v0, ($t0)
/* 03D150 80061D50 99020003 */  lwr   $v0, 3($t0)
/* 03D154 80061D54 89030004 */  lwl   $v1, 4($t0)
/* 03D158 80061D58 99030007 */  lwr   $v1, 7($t0)
/* 03D15C 80061D5C ABA20000 */  swl   $v0, ($sp)
/* 03D160 80061D60 BBA20003 */  swr   $v0, 3($sp)
/* 03D164 80061D64 ABA30004 */  swl   $v1, 4($sp)
/* 03D168 80061D68 BBA30007 */  swr   $v1, 7($sp)
/* 03D16C 80061D6C 93A20002 */  lbu   $v0, 2($sp)
/* 03D170 80061D70 304200C0 */  andi  $v0, $v0, 0xc0
/* 03D174 80061D74 00021102 */  srl   $v0, $v0, 4
/* 03D178 80061D78 1440000A */  bnez  $v0, .L80061DA4
/* 03D17C 80061D7C A0C20001 */   sb    $v0, 1($a2)
/* 03D180 80061D80 93A20005 */  lbu   $v0, 5($sp)
/* 03D184 80061D84 93A30004 */  lbu   $v1, 4($sp)
/* 03D188 80061D88 00021200 */  sll   $v0, $v0, 8
/* 03D18C 80061D8C 00621825 */  or    $v1, $v1, $v0
/* 03D190 80061D90 A5230000 */  sh    $v1, ($t1)
/* 03D194 80061D94 93A30006 */  lbu   $v1, 6($sp)
/* 03D198 80061D98 00EC1004 */  sllv  $v0, $t4, $a3
/* 03D19C 80061D9C 01425025 */  or    $t2, $t2, $v0
/* 03D1A0 80061DA0 A0C30000 */  sb    $v1, ($a2)
.L80061DA4:
/* 03D1A4 80061DA4 24E70001 */  addiu $a3, $a3, 1
/* 03D1A8 80061DA8 25080008 */  addiu $t0, $t0, 8
/* 03D1AC 80061DAC 3C02800A */  lui   $v0, 0x800a
/* 03D1B0 80061DB0 9042A606 */  lbu   $v0, -0x59fa($v0)
/* 03D1B4 80061DB4 24C60004 */  addiu $a2, $a2, 4
/* 03D1B8 80061DB8 00E2102A */  slt   $v0, $a3, $v0
/* 03D1BC 80061DBC 1440FFE3 */  bnez  $v0, .L80061D4C
/* 03D1C0 80061DC0 25290004 */   addiu $t1, $t1, 4
.L80061DC4:
/* 03D1C4 80061DC4 A16A0000 */  sb    $t2, ($t3)
/* 03D1C8 80061DC8 03E00008 */  jr    $ra
/* 03D1CC 80061DCC 27BD0010 */   addiu $sp, $sp, 0x10

osPackRequestData:
/* 03D1D0 80061DD0 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 03D1D4 80061DD4 00802821 */  addu  $a1, $a0, $zero
/* 03D1D8 80061DD8 2406000E */  addiu $a2, $zero, 0xe
/* 03D1DC 80061DDC 3C02800B */  lui   $v0, 0x800b
/* 03D1E0 80061DE0 24420F08 */  addiu $v0, $v0, 0xf08
.L80061DE4:
/* 03D1E4 80061DE4 AC400000 */  sw    $zero, ($v0)
/* 03D1E8 80061DE8 24C6FFFF */  addiu $a2, $a2, -1
/* 03D1EC 80061DEC 04C1FFFD */  bgez  $a2, .L80061DE4
/* 03D1F0 80061DF0 2442FFFC */   addiu $v0, $v0, -4
/* 03D1F4 80061DF4 3C03800B */  lui   $v1, 0x800b
/* 03D1F8 80061DF8 24630F0C */  addiu $v1, $v1, 0xf0c
/* 03D1FC 80061DFC 2467FFC4 */  addiu $a3, $v1, -0x3c
/* 03D200 80061E00 3C04800A */  lui   $a0, 0x800a
/* 03D204 80061E04 9084A606 */  lbu   $a0, -0x59fa($a0)
/* 03D208 80061E08 00003021 */  addu  $a2, $zero, $zero
/* 03D20C 80061E0C 24020001 */  addiu $v0, $zero, 1
/* 03D210 80061E10 AC620000 */  sw    $v0, ($v1)
/* 03D214 80061E14 240300FF */  addiu $v1, $zero, 0xff
/* 03D218 80061E18 24020001 */  addiu $v0, $zero, 1
/* 03D21C 80061E1C A3A20001 */  sb    $v0, 1($sp)
/* 03D220 80061E20 24020003 */  addiu $v0, $zero, 3
/* 03D224 80061E24 A3A30000 */  sb    $v1, ($sp)
/* 03D228 80061E28 A3A20002 */  sb    $v0, 2($sp)
/* 03D22C 80061E2C A3A50003 */  sb    $a1, 3($sp)
/* 03D230 80061E30 A3A30004 */  sb    $v1, 4($sp)
/* 03D234 80061E34 A3A30005 */  sb    $v1, 5($sp)
/* 03D238 80061E38 A3A30006 */  sb    $v1, 6($sp)
/* 03D23C 80061E3C 1880000F */  blez  $a0, .L80061E7C
/* 03D240 80061E40 A3A30007 */   sb    $v1, 7($sp)
.L80061E44:
/* 03D244 80061E44 8BA20000 */  lwl   $v0, ($sp)
/* 03D248 80061E48 9BA20003 */  lwr   $v0, 3($sp)
/* 03D24C 80061E4C 8BA30004 */  lwl   $v1, 4($sp)
/* 03D250 80061E50 9BA30007 */  lwr   $v1, 7($sp)
/* 03D254 80061E54 A8E20000 */  swl   $v0, ($a3)
/* 03D258 80061E58 B8E20003 */  swr   $v0, 3($a3)
/* 03D25C 80061E5C A8E30004 */  swl   $v1, 4($a3)
/* 03D260 80061E60 B8E30007 */  swr   $v1, 7($a3)
/* 03D264 80061E64 3C02800A */  lui   $v0, 0x800a
/* 03D268 80061E68 9042A606 */  lbu   $v0, -0x59fa($v0)
/* 03D26C 80061E6C 24C60001 */  addiu $a2, $a2, 1
/* 03D270 80061E70 00C2102A */  slt   $v0, $a2, $v0
/* 03D274 80061E74 1440FFF3 */  bnez  $v0, .L80061E44
/* 03D278 80061E78 24E70008 */   addiu $a3, $a3, 8
.L80061E7C:
/* 03D27C 80061E7C 240200FE */  addiu $v0, $zero, 0xfe
/* 03D280 80061E80 A0E20000 */  sb    $v0, ($a3)
/* 03D284 80061E84 03E00008 */  jr    $ra
/* 03D288 80061E88 27BD0010 */   addiu $sp, $sp, 0x10

/* 03D28C 80061E8C 00000000 */  nop   
osVirtualToPhysical:
/* 03D290 80061E90 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03D294 80061E94 3C031FFF */  lui   $v1, 0x1fff
/* 03D298 80061E98 3463FFFF */  ori   $v1, $v1, 0xffff
/* 03D29C 80061E9C 3C028000 */  lui   $v0, 0x8000
/* 03D2A0 80061EA0 00821023 */  subu  $v0, $a0, $v0
/* 03D2A4 80061EA4 0062102B */  sltu  $v0, $v1, $v0
/* 03D2A8 80061EA8 1040000A */  beqz  $v0, .L80061ED4
/* 03D2AC 80061EAC AFBF0010 */   sw    $ra, 0x10($sp)
/* 03D2B0 80061EB0 3C026000 */  lui   $v0, 0x6000
/* 03D2B4 80061EB4 00821021 */  addu  $v0, $a0, $v0
/* 03D2B8 80061EB8 0062102B */  sltu  $v0, $v1, $v0
/* 03D2BC 80061EBC 10400006 */  beqz  $v0, .L80061ED8
/* 03D2C0 80061EC0 00831024 */   and   $v0, $a0, $v1
/* 03D2C4 80061EC4 0C019A18 */  jal   osProbeTLB
/* 03D2C8 80061EC8 00000000 */   nop   
/* 03D2CC 80061ECC 080187B6 */  j     func_80061ED8
/* 03D2D0 80061ED0 00000000 */   nop   

.L80061ED4:
/* 03D2D4 80061ED4 00831024 */  and   $v0, $a0, $v1
func_80061ED8:
.L80061ED8:
/* 03D2D8 80061ED8 8FBF0010 */  lw    $ra, 0x10($sp)
/* 03D2DC 80061EDC 03E00008 */  jr    $ra
/* 03D2E0 80061EE0 27BD0018 */   addiu $sp, $sp, 0x18

/* 03D2E4 80061EE4 00000000 */  nop   
/* 03D2E8 80061EE8 00000000 */  nop   
/* 03D2EC 80061EEC 00000000 */  nop   
