
.section .text8005E9B0, "ax"

nuScCreateScheduler:
/* 039DB0 8005E9B0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 039DB4 8005E9B4 AFB40028 */  sw    $s4, 0x28($sp)
/* 039DB8 8005E9B8 0080A02D */  daddu $s4, $a0, $zero
/* 039DBC 8005E9BC AFB30024 */  sw    $s3, 0x24($sp)
/* 039DC0 8005E9C0 00A0982D */  daddu $s3, $a1, $zero
/* 039DC4 8005E9C4 3C04800E */  lui   $a0, 0x800e
/* 039DC8 8005E9C8 2484AAAC */  addiu $a0, $a0, -0x5554
/* 039DCC 8005E9CC 24020001 */  addiu $v0, $zero, 1
/* 039DD0 8005E9D0 24030002 */  addiu $v1, $zero, 2
/* 039DD4 8005E9D4 AFBF002C */  sw    $ra, 0x2c($sp)
/* 039DD8 8005E9D8 AFB20020 */  sw    $s2, 0x20($sp)
/* 039DDC 8005E9DC AFB1001C */  sw    $s1, 0x1c($sp)
/* 039DE0 8005E9E0 AFB00018 */  sw    $s0, 0x18($sp)
/* 039DE4 8005E9E4 A482F994 */  sh    $v0, -0x66c($a0)
/* 039DE8 8005E9E8 326200FF */  andi  $v0, $s3, 0xff
/* 039DEC 8005E9EC AC82000C */  sw    $v0, 0xc($a0)
/* 039DF0 8005E9F0 A0830011 */  sb    $v1, 0x11($a0)
/* 039DF4 8005E9F4 3C028000 */  lui   $v0, 0x8000
/* 039DF8 8005E9F8 8C420300 */  lw    $v0, 0x300($v0)
/* 039DFC 8005E9FC A483F996 */  sh    $v1, -0x66a($a0)
/* 039E00 8005EA00 2483F994 */  addiu $v1, $a0, -0x66c
/* 039E04 8005EA04 AC800000 */  sw    $zero, ($a0)
/* 039E08 8005EA08 AC800004 */  sw    $zero, 4($a0)
/* 039E0C 8005EA0C AC800008 */  sw    $zero, 8($a0)
/* 039E10 8005EA10 14400004 */  bnez  $v0, .L8005EA24
/* 039E14 8005EA14 AC80FFFC */   sw    $zero, -4($a0)
/* 039E18 8005EA18 24020032 */  addiu $v0, $zero, 0x32
/* 039E1C 8005EA1C 08017A8B */  j     func_8005EA2C
/* 039E20 8005EA20 A062067C */   sb    $v0, 0x67c($v1)

.L8005EA24:
/* 039E24 8005EA24 2402003C */  addiu $v0, $zero, 0x3c
/* 039E28 8005EA28 A0820010 */  sb    $v0, 0x10($a0)
func_8005EA2C:
/* 039E2C 8005EA2C 3C10800E */  lui   $s0, 0x800e
/* 039E30 8005EA30 2610A4B4 */  addiu $s0, $s0, -0x5b4c
/* 039E34 8005EA34 0200202D */  daddu $a0, $s0, $zero
/* 039E38 8005EA38 26050018 */  addiu $a1, $s0, 0x18
/* 039E3C 8005EA3C 3C01800A */  lui   $at, 0x800a
/* 039E40 8005EA40 A020A5B0 */  sb    $zero, -0x5a50($at)
/* 039E44 8005EA44 0C019560 */  jal   osCreateMesgQueue
/* 039E48 8005EA48 24060008 */   addiu $a2, $zero, 8
/* 039E4C 8005EA4C 26120038 */  addiu $s2, $s0, 0x38
/* 039E50 8005EA50 0240202D */  daddu $a0, $s2, $zero
/* 039E54 8005EA54 26050050 */  addiu $a1, $s0, 0x50
/* 039E58 8005EA58 0C019560 */  jal   osCreateMesgQueue
/* 039E5C 8005EA5C 24060008 */   addiu $a2, $zero, 8
/* 039E60 8005EA60 26110070 */  addiu $s1, $s0, 0x70
/* 039E64 8005EA64 0220202D */  daddu $a0, $s1, $zero
/* 039E68 8005EA68 26050088 */  addiu $a1, $s0, 0x88
/* 039E6C 8005EA6C 0C019560 */  jal   osCreateMesgQueue
/* 039E70 8005EA70 24060008 */   addiu $a2, $zero, 8
/* 039E74 8005EA74 2604FFC8 */  addiu $a0, $s0, -0x38
/* 039E78 8005EA78 2605FFE0 */  addiu $a1, $s0, -0x20
/* 039E7C 8005EA7C 0C019560 */  jal   osCreateMesgQueue
/* 039E80 8005EA80 24060008 */   addiu $a2, $zero, 8
/* 039E84 8005EA84 2604FF90 */  addiu $a0, $s0, -0x70
/* 039E88 8005EA88 2605FFA8 */  addiu $a1, $s0, -0x58
/* 039E8C 8005EA8C 0C019560 */  jal   osCreateMesgQueue
/* 039E90 8005EA90 24060008 */   addiu $a2, $zero, 8
/* 039E94 8005EA94 260400A8 */  addiu $a0, $s0, 0xa8
/* 039E98 8005EA98 260500C0 */  addiu $a1, $s0, 0xc0
/* 039E9C 8005EA9C 0C019560 */  jal   osCreateMesgQueue
/* 039EA0 8005EAA0 24060008 */   addiu $a2, $zero, 8
/* 039EA4 8005EAA4 0C019A9C */  jal   osCreateViManager
/* 039EA8 8005EAA8 240400FE */   addiu $a0, $zero, 0xfe
/* 039EAC 8005EAAC 328200FF */  andi  $v0, $s4, 0xff
/* 039EB0 8005EAB0 00022080 */  sll   $a0, $v0, 2
/* 039EB4 8005EAB4 00822021 */  addu  $a0, $a0, $v0
/* 039EB8 8005EAB8 00042100 */  sll   $a0, $a0, 4
/* 039EBC 8005EABC 3C028009 */  lui   $v0, 0x8009
/* 039EC0 8005EAC0 244246A0 */  addiu $v0, $v0, 0x46a0
/* 039EC4 8005EAC4 0C019B84 */  jal   osViSetMode
/* 039EC8 8005EAC8 00822021 */   addu  $a0, $a0, $v0
/* 039ECC 8005EACC 0C019CE0 */  jal   osViBlack
/* 039ED0 8005EAD0 24040001 */   addiu $a0, $zero, 1
/* 039ED4 8005EAD4 0200202D */  daddu $a0, $s0, $zero
/* 039ED8 8005EAD8 2405029A */  addiu $a1, $zero, 0x29a
/* 039EDC 8005EADC 0C019B6C */  jal   osViSetEvent
/* 039EE0 8005EAE0 326600FF */   andi  $a2, $s3, 0xff
/* 039EE4 8005EAE4 24040004 */  addiu $a0, $zero, 4
/* 039EE8 8005EAE8 0240282D */  daddu $a1, $s2, $zero
/* 039EEC 8005EAEC 0C019654 */  jal   osSetEventMesg
/* 039EF0 8005EAF0 2406029B */   addiu $a2, $zero, 0x29b
/* 039EF4 8005EAF4 24040009 */  addiu $a0, $zero, 9
/* 039EF8 8005EAF8 0220282D */  daddu $a1, $s1, $zero
/* 039EFC 8005EAFC 0C019654 */  jal   osSetEventMesg
/* 039F00 8005EB00 2406029C */   addiu $a2, $zero, 0x29c
/* 039F04 8005EB04 2404000E */  addiu $a0, $zero, 0xe
/* 039F08 8005EB08 0200282D */  daddu $a1, $s0, $zero
/* 039F0C 8005EB0C 0C019654 */  jal   osSetEventMesg
/* 039F10 8005EB10 2406029D */   addiu $a2, $zero, 0x29d
/* 039F14 8005EB14 261200E4 */  addiu $s2, $s0, 0xe4
/* 039F18 8005EB18 0240202D */  daddu $a0, $s2, $zero
/* 039F1C 8005EB1C 24050013 */  addiu $a1, $zero, 0x13
/* 039F20 8005EB20 3C068006 */  lui   $a2, 0x8006
/* 039F24 8005EB24 24C6EFA8 */  addiu $a2, $a2, -0x1058
/* 039F28 8005EB28 2611FF8C */  addiu $s1, $s0, -0x74
/* 039F2C 8005EB2C 0220382D */  daddu $a3, $s1, $zero
/* 039F30 8005EB30 3C02800B */  lui   $v0, 0x800b
/* 039F34 8005EB34 244285D0 */  addiu $v0, $v0, -0x7a30
/* 039F38 8005EB38 AFA20010 */  sw    $v0, 0x10($sp)
/* 039F3C 8005EB3C 24020078 */  addiu $v0, $zero, 0x78
/* 039F40 8005EB40 0C019798 */  jal   osCreateThread
/* 039F44 8005EB44 AFA20014 */   sw    $v0, 0x14($sp)
/* 039F48 8005EB48 0C019808 */  jal   osStartThread
/* 039F4C 8005EB4C 0240202D */   daddu $a0, $s2, $zero
/* 039F50 8005EB50 26120294 */  addiu $s2, $s0, 0x294
/* 039F54 8005EB54 0240202D */  daddu $a0, $s2, $zero
/* 039F58 8005EB58 24050012 */  addiu $a1, $zero, 0x12
/* 039F5C 8005EB5C 3C068006 */  lui   $a2, 0x8006
/* 039F60 8005EB60 24C6EBE0 */  addiu $a2, $a2, -0x1420
/* 039F64 8005EB64 0220382D */  daddu $a3, $s1, $zero
/* 039F68 8005EB68 3C02800B */  lui   $v0, 0x800b
/* 039F6C 8005EB6C 2442A5D0 */  addiu $v0, $v0, -0x5a30
/* 039F70 8005EB70 AFA20010 */  sw    $v0, 0x10($sp)
/* 039F74 8005EB74 2402006E */  addiu $v0, $zero, 0x6e
/* 039F78 8005EB78 0C019798 */  jal   osCreateThread
/* 039F7C 8005EB7C AFA20014 */   sw    $v0, 0x14($sp)
/* 039F80 8005EB80 0C019808 */  jal   osStartThread
/* 039F84 8005EB84 0240202D */   daddu $a0, $s2, $zero
/* 039F88 8005EB88 26100444 */  addiu $s0, $s0, 0x444
/* 039F8C 8005EB8C 0200202D */  daddu $a0, $s0, $zero
/* 039F90 8005EB90 24050011 */  addiu $a1, $zero, 0x11
/* 039F94 8005EB94 3C068006 */  lui   $a2, 0x8006
/* 039F98 8005EB98 24C6ED14 */  addiu $a2, $a2, -0x12ec
/* 039F9C 8005EB9C 0220382D */  daddu $a3, $s1, $zero
/* 039FA0 8005EBA0 3C02800B */  lui   $v0, 0x800b
/* 039FA4 8005EBA4 2442C5D0 */  addiu $v0, $v0, -0x3a30
/* 039FA8 8005EBA8 AFA20010 */  sw    $v0, 0x10($sp)
/* 039FAC 8005EBAC 24020064 */  addiu $v0, $zero, 0x64
/* 039FB0 8005EBB0 0C019798 */  jal   osCreateThread
/* 039FB4 8005EBB4 AFA20014 */   sw    $v0, 0x14($sp)
/* 039FB8 8005EBB8 0C019808 */  jal   osStartThread
/* 039FBC 8005EBBC 0200202D */   daddu $a0, $s0, $zero
/* 039FC0 8005EBC0 8FBF002C */  lw    $ra, 0x2c($sp)
/* 039FC4 8005EBC4 8FB40028 */  lw    $s4, 0x28($sp)
/* 039FC8 8005EBC8 8FB30024 */  lw    $s3, 0x24($sp)
/* 039FCC 8005EBCC 8FB20020 */  lw    $s2, 0x20($sp)
/* 039FD0 8005EBD0 8FB1001C */  lw    $s1, 0x1c($sp)
/* 039FD4 8005EBD4 8FB00018 */  lw    $s0, 0x18($sp)
/* 039FD8 8005EBD8 03E00008 */  jr    $ra
/* 039FDC 8005EBDC 27BD0030 */   addiu $sp, $sp, 0x30

nuScExecuteAudio:
/* 039FE0 8005EBE0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 039FE4 8005EBE4 AFB40028 */  sw    $s4, 0x28($sp)
/* 039FE8 8005EBE8 3C14800E */  lui   $s4, 0x800e
/* 039FEC 8005EBEC 2694A444 */  addiu $s4, $s4, -0x5bbc
/* 039FF0 8005EBF0 AFB30024 */  sw    $s3, 0x24($sp)
/* 039FF4 8005EBF4 2693066C */  addiu $s3, $s4, 0x66c
/* 039FF8 8005EBF8 AFB5002C */  sw    $s5, 0x2c($sp)
/* 039FFC 8005EBFC 269500A8 */  addiu $s5, $s4, 0xa8
/* 03A000 8005EC00 AFB20020 */  sw    $s2, 0x20($sp)
/* 03A004 8005EC04 27B20014 */  addiu $s2, $sp, 0x14
/* 03A008 8005EC08 AFBF0030 */  sw    $ra, 0x30($sp)
/* 03A00C 8005EC0C AFB1001C */  sw    $s1, 0x1c($sp)
/* 03A010 8005EC10 AFB00018 */  sw    $s0, 0x18($sp)
/* 03A014 8005EC14 0280202D */  daddu $a0, $s4, $zero
func_8005EC18:
/* 03A018 8005EC18 27A50010 */  addiu $a1, $sp, 0x10
/* 03A01C 8005EC1C 0C0195BC */  jal   osRecvMesg
/* 03A020 8005EC20 24060001 */   addiu $a2, $zero, 1
/* 03A024 8005EC24 3C02800A */  lui   $v0, 0x800a
/* 03A028 8005EC28 9042A5B0 */  lbu   $v0, -0x5a50($v0)
/* 03A02C 8005EC2C 30420002 */  andi  $v0, $v0, 2
/* 03A030 8005EC30 14400031 */  bnez  $v0, .L8005ECF8
/* 03A034 8005EC34 00000000 */   nop   
/* 03A038 8005EC38 0C018634 */  jal   osWritebackDCacheAll
/* 03A03C 8005EC3C 0000802D */   daddu $s0, $zero, $zero
/* 03A040 8005EC40 8E910668 */  lw    $s1, 0x668($s4)
/* 03A044 8005EC44 1220000B */  beqz  $s1, .L8005EC74
/* 03A048 8005EC48 00000000 */   nop   
/* 03A04C 8005EC4C 0C019714 */  jal   osSpTaskYield
/* 03A050 8005EC50 24100002 */   addiu $s0, $zero, 2
/* 03A054 8005EC54 268400A8 */  addiu $a0, $s4, 0xa8
/* 03A058 8005EC58 27A50014 */  addiu $a1, $sp, 0x14
/* 03A05C 8005EC5C 0C0195BC */  jal   osRecvMesg
/* 03A060 8005EC60 24060001 */   addiu $a2, $zero, 1
/* 03A064 8005EC64 0C01971C */  jal   osSpTaskYielded
/* 03A068 8005EC68 26240010 */   addiu $a0, $s1, 0x10
/* 03A06C 8005EC6C 54400001 */  bnezl $v0, .L8005EC74
/* 03A070 8005EC70 24100001 */   addiu $s0, $zero, 1
.L8005EC74:
/* 03A074 8005EC74 8FA20010 */  lw    $v0, 0x10($sp)
/* 03A078 8005EC78 24440010 */  addiu $a0, $v0, 0x10
/* 03A07C 8005EC7C 0C019684 */  jal   osSpTaskLoad
/* 03A080 8005EC80 AE620000 */   sw    $v0, ($s3)
/* 03A084 8005EC84 8FA40010 */  lw    $a0, 0x10($sp)
/* 03A088 8005EC88 0C019707 */  jal   osSpTaskStartGo
/* 03A08C 8005EC8C 24840010 */   addiu $a0, $a0, 0x10
/* 03A090 8005EC90 02A0202D */  daddu $a0, $s5, $zero
/* 03A094 8005EC94 0240282D */  daddu $a1, $s2, $zero
/* 03A098 8005EC98 0C0195BC */  jal   osRecvMesg
/* 03A09C 8005EC9C 24060001 */   addiu $a2, $zero, 1
/* 03A0A0 8005ECA0 8E620004 */  lw    $v0, 4($s3)
/* 03A0A4 8005ECA4 10400005 */  beqz  $v0, .L8005ECBC
/* 03A0A8 8005ECA8 AE600000 */   sw    $zero, ($s3)
/* 03A0AC 8005ECAC 2664FAAC */  addiu $a0, $s3, -0x554
/* 03A0B0 8005ECB0 0240282D */  daddu $a1, $s2, $zero
/* 03A0B4 8005ECB4 0C019608 */  jal   osSendMesg
/* 03A0B8 8005ECB8 24060001 */   addiu $a2, $zero, 1
.L8005ECBC:
/* 03A0BC 8005ECBC 24020001 */  addiu $v0, $zero, 1
/* 03A0C0 8005ECC0 16020008 */  bne   $s0, $v0, .L8005ECE4
/* 03A0C4 8005ECC4 24020002 */   addiu $v0, $zero, 2
/* 03A0C8 8005ECC8 26300010 */  addiu $s0, $s1, 0x10
/* 03A0CC 8005ECCC 0C019684 */  jal   osSpTaskLoad
/* 03A0D0 8005ECD0 0200202D */   daddu $a0, $s0, $zero
/* 03A0D4 8005ECD4 0C019707 */  jal   osSpTaskStartGo
/* 03A0D8 8005ECD8 0200202D */   daddu $a0, $s0, $zero
/* 03A0DC 8005ECDC 08017B3E */  j     func_8005ECF8
/* 03A0E0 8005ECE0 00000000 */   nop   

.L8005ECE4:
/* 03A0E4 8005ECE4 16020004 */  bne   $s0, $v0, .L8005ECF8
/* 03A0E8 8005ECE8 02A0202D */   daddu $a0, $s5, $zero
/* 03A0EC 8005ECEC 0240282D */  daddu $a1, $s2, $zero
/* 03A0F0 8005ECF0 0C019608 */  jal   osSendMesg
/* 03A0F4 8005ECF4 24060001 */   addiu $a2, $zero, 1
func_8005ECF8:
.L8005ECF8:
/* 03A0F8 8005ECF8 8FA20010 */  lw    $v0, 0x10($sp)
/* 03A0FC 8005ECFC 8C440050 */  lw    $a0, 0x50($v0)
/* 03A100 8005ED00 8C450054 */  lw    $a1, 0x54($v0)
/* 03A104 8005ED04 0C019608 */  jal   osSendMesg
/* 03A108 8005ED08 24060001 */   addiu $a2, $zero, 1
/* 03A10C 8005ED0C 08017B06 */  j     func_8005EC18
/* 03A110 8005ED10 0280202D */   daddu $a0, $s4, $zero

nuScExecuteGraphics:
/* 03A114 8005ED14 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 03A118 8005ED18 AFB00018 */  sw    $s0, 0x18($sp)
/* 03A11C 8005ED1C 3C10800E */  lui   $s0, 0x800e
/* 03A120 8005ED20 2610A47C */  addiu $s0, $s0, -0x5b84
/* 03A124 8005ED24 AFB1001C */  sw    $s1, 0x1c($sp)
/* 03A128 8005ED28 27B10014 */  addiu $s1, $sp, 0x14
/* 03A12C 8005ED2C AFBF0020 */  sw    $ra, 0x20($sp)
/* 03A130 8005ED30 0200202D */  daddu $a0, $s0, $zero
func_8005ED34:
/* 03A134 8005ED34 27A50010 */  addiu $a1, $sp, 0x10
/* 03A138 8005ED38 0C0195BC */  jal   osRecvMesg
/* 03A13C 8005ED3C 24060001 */   addiu $a2, $zero, 1
/* 03A140 8005ED40 3C02800A */  lui   $v0, 0x800a
/* 03A144 8005ED44 9042A5B0 */  lbu   $v0, -0x5a50($v0)
/* 03A148 8005ED48 30420002 */  andi  $v0, $v0, 2
/* 03A14C 8005ED4C 14400032 */  bnez  $v0, .L8005EE18
/* 03A150 8005ED50 00000000 */   nop   
/* 03A154 8005ED54 0C017C48 */  jal   nuScWaitTaskReady
/* 03A158 8005ED58 8FA40010 */   lw    $a0, 0x10($sp)
/* 03A15C 8005ED5C 0C018250 */  jal   osSetIntMask
/* 03A160 8005ED60 24040001 */   addiu $a0, $zero, 1
/* 03A164 8005ED64 8E030634 */  lw    $v1, 0x634($s0)
/* 03A168 8005ED68 1060000C */  beqz  $v1, .L8005ED9C
/* 03A16C 8005ED6C 0040202D */   daddu $a0, $v0, $zero
/* 03A170 8005ED70 8FA20010 */  lw    $v0, 0x10($sp)
/* 03A174 8005ED74 0C018250 */  jal   osSetIntMask
/* 03A178 8005ED78 AE020638 */   sw    $v0, 0x638($s0)
/* 03A17C 8005ED7C 260400E0 */  addiu $a0, $s0, 0xe0
/* 03A180 8005ED80 27A50014 */  addiu $a1, $sp, 0x14
/* 03A184 8005ED84 0C0195BC */  jal   osRecvMesg
/* 03A188 8005ED88 24060001 */   addiu $a2, $zero, 1
/* 03A18C 8005ED8C 0C018250 */  jal   osSetIntMask
/* 03A190 8005ED90 24040001 */   addiu $a0, $zero, 1
/* 03A194 8005ED94 0040202D */  daddu $a0, $v0, $zero
/* 03A198 8005ED98 AE000638 */  sw    $zero, 0x638($s0)
.L8005ED9C:
/* 03A19C 8005ED9C 0C018250 */  jal   osSetIntMask
/* 03A1A0 8005EDA0 00000000 */   nop   
/* 03A1A4 8005EDA4 0C018250 */  jal   osSetIntMask
/* 03A1A8 8005EDA8 24040001 */   addiu $a0, $zero, 1
/* 03A1AC 8005EDAC 8FA30010 */  lw    $v1, 0x10($sp)
/* 03A1B0 8005EDB0 0040202D */  daddu $a0, $v0, $zero
/* 03A1B4 8005EDB4 0C018250 */  jal   osSetIntMask
/* 03A1B8 8005EDB8 AE030630 */   sw    $v1, 0x630($s0)
/* 03A1BC 8005EDBC 8FA40010 */  lw    $a0, 0x10($sp)
/* 03A1C0 8005EDC0 0C019684 */  jal   osSpTaskLoad
/* 03A1C4 8005EDC4 24840010 */   addiu $a0, $a0, 0x10
/* 03A1C8 8005EDC8 8FA40010 */  lw    $a0, 0x10($sp)
/* 03A1CC 8005EDCC 0C019707 */  jal   osSpTaskStartGo
/* 03A1D0 8005EDD0 24840010 */   addiu $a0, $a0, 0x10
/* 03A1D4 8005EDD4 26040070 */  addiu $a0, $s0, 0x70
/* 03A1D8 8005EDD8 0220282D */  daddu $a1, $s1, $zero
/* 03A1DC 8005EDDC 0C0195BC */  jal   osRecvMesg
/* 03A1E0 8005EDE0 24060001 */   addiu $a2, $zero, 1
/* 03A1E4 8005EDE4 0C018250 */  jal   osSetIntMask
/* 03A1E8 8005EDE8 24040001 */   addiu $a0, $zero, 1
/* 03A1EC 8005EDEC 0040202D */  daddu $a0, $v0, $zero
/* 03A1F0 8005EDF0 0C018250 */  jal   osSetIntMask
/* 03A1F4 8005EDF4 AE000630 */   sw    $zero, 0x630($s0)
/* 03A1F8 8005EDF8 8FA20010 */  lw    $v0, 0x10($sp)
/* 03A1FC 8005EDFC 8C420008 */  lw    $v0, 8($v0)
/* 03A200 8005EE00 30420002 */  andi  $v0, $v0, 2
/* 03A204 8005EE04 14400004 */  bnez  $v0, .L8005EE18
/* 03A208 8005EE08 260400A8 */   addiu $a0, $s0, 0xa8
/* 03A20C 8005EE0C 0220282D */  daddu $a1, $s1, $zero
/* 03A210 8005EE10 0C0195BC */  jal   osRecvMesg
/* 03A214 8005EE14 24060001 */   addiu $a2, $zero, 1
.L8005EE18:
/* 03A218 8005EE18 8FA50010 */  lw    $a1, 0x10($sp)
/* 03A21C 8005EE1C 8CA40050 */  lw    $a0, 0x50($a1)
/* 03A220 8005EE20 0C019608 */  jal   osSendMesg
/* 03A224 8005EE24 24060001 */   addiu $a2, $zero, 1
/* 03A228 8005EE28 08017B4D */  j     func_8005ED34
/* 03A22C 8005EE2C 0200202D */   daddu $a0, $s0, $zero

nuScAddClient:
/* 03A230 8005EE30 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 03A234 8005EE34 AFB00010 */  sw    $s0, 0x10($sp)
/* 03A238 8005EE38 0080802D */  daddu $s0, $a0, $zero
/* 03A23C 8005EE3C AFB20018 */  sw    $s2, 0x18($sp)
/* 03A240 8005EE40 00A0902D */  daddu $s2, $a1, $zero
/* 03A244 8005EE44 AFB10014 */  sw    $s1, 0x14($sp)
/* 03A248 8005EE48 00C0882D */  daddu $s1, $a2, $zero
/* 03A24C 8005EE4C AFBF001C */  sw    $ra, 0x1c($sp)
/* 03A250 8005EE50 0C018250 */  jal   osSetIntMask
/* 03A254 8005EE54 24040001 */   addiu $a0, $zero, 1
/* 03A258 8005EE58 3C05800E */  lui   $a1, 0x800e
/* 03A25C 8005EE5C 24A5AAA8 */  addiu $a1, $a1, -0x5558
/* 03A260 8005EE60 AE120004 */  sw    $s2, 4($s0)
/* 03A264 8005EE64 8CA30000 */  lw    $v1, ($a1)
/* 03A268 8005EE68 A6110008 */  sh    $s1, 8($s0)
/* 03A26C 8005EE6C 32310002 */  andi  $s1, $s1, 2
/* 03A270 8005EE70 AE030000 */  sw    $v1, ($s0)
/* 03A274 8005EE74 ACB00000 */  sw    $s0, ($a1)
/* 03A278 8005EE78 12200008 */  beqz  $s1, .L8005EE9C
/* 03A27C 8005EE7C 0040802D */   daddu $s0, $v0, $zero
/* 03A280 8005EE80 3C02800A */  lui   $v0, 0x800a
/* 03A284 8005EE84 9042A5B0 */  lbu   $v0, -0x5a50($v0)
/* 03A288 8005EE88 10400004 */  beqz  $v0, .L8005EE9C
/* 03A28C 8005EE8C 0240202D */   daddu $a0, $s2, $zero
/* 03A290 8005EE90 24A5F99A */  addiu $a1, $a1, -0x666
/* 03A294 8005EE94 0C019608 */  jal   osSendMesg
/* 03A298 8005EE98 0000302D */   daddu $a2, $zero, $zero
.L8005EE9C:
/* 03A29C 8005EE9C 0C018250 */  jal   osSetIntMask
/* 03A2A0 8005EEA0 0200202D */   daddu $a0, $s0, $zero
/* 03A2A4 8005EEA4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 03A2A8 8005EEA8 8FB20018 */  lw    $s2, 0x18($sp)
/* 03A2AC 8005EEAC 8FB10014 */  lw    $s1, 0x14($sp)
/* 03A2B0 8005EEB0 8FB00010 */  lw    $s0, 0x10($sp)
/* 03A2B4 8005EEB4 03E00008 */  jr    $ra
/* 03A2B8 8005EEB8 27BD0020 */   addiu $sp, $sp, 0x20

nuScRemoveClient:
/* 03A2BC 8005EEBC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03A2C0 8005EEC0 AFB00010 */  sw    $s0, 0x10($sp)
/* 03A2C4 8005EEC4 0080802D */  daddu $s0, $a0, $zero
/* 03A2C8 8005EEC8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 03A2CC 8005EECC 0C018250 */  jal   osSetIntMask
/* 03A2D0 8005EED0 24040001 */   addiu $a0, $zero, 1
/* 03A2D4 8005EED4 3C06800E */  lui   $a2, 0x800e
/* 03A2D8 8005EED8 24C6AAA8 */  addiu $a2, $a2, -0x5558
/* 03A2DC 8005EEDC 0000282D */  daddu $a1, $zero, $zero
/* 03A2E0 8005EEE0 8CC30000 */  lw    $v1, ($a2)
/* 03A2E4 8005EEE4 1060000E */  beqz  $v1, .L8005EF20
/* 03A2E8 8005EEE8 0040202D */   daddu $a0, $v0, $zero
.L8005EEEC:
/* 03A2EC 8005EEEC 54700009 */  bnel  $v1, $s0, .L8005EF14
/* 03A2F0 8005EEF0 0060282D */   daddu $a1, $v1, $zero
/* 03A2F4 8005EEF4 10A00004 */  beqz  $a1, .L8005EF08
/* 03A2F8 8005EEF8 00000000 */   nop   
/* 03A2FC 8005EEFC 8C620000 */  lw    $v0, ($v1)
/* 03A300 8005EF00 08017BC8 */  j     func_8005EF20
/* 03A304 8005EF04 ACA20000 */   sw    $v0, ($a1)

.L8005EF08:
/* 03A308 8005EF08 8C620000 */  lw    $v0, ($v1)
/* 03A30C 8005EF0C 08017BC8 */  j     func_8005EF20
/* 03A310 8005EF10 ACC20000 */   sw    $v0, ($a2)

.L8005EF14:
/* 03A314 8005EF14 8C630000 */  lw    $v1, ($v1)
/* 03A318 8005EF18 1460FFF4 */  bnez  $v1, .L8005EEEC
/* 03A31C 8005EF1C 00000000 */   nop   
func_8005EF20:
.L8005EF20:
/* 03A320 8005EF20 0C018250 */  jal   osSetIntMask
/* 03A324 8005EF24 00000000 */   nop   
/* 03A328 8005EF28 8FBF0014 */  lw    $ra, 0x14($sp)
/* 03A32C 8005EF2C 8FB00010 */  lw    $s0, 0x10($sp)
/* 03A330 8005EF30 03E00008 */  jr    $ra
/* 03A334 8005EF34 27BD0018 */   addiu $sp, $sp, 0x18

nuScResetClientMesgType:
/* 03A338 8005EF38 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 03A33C 8005EF3C AFB10014 */  sw    $s1, 0x14($sp)
/* 03A340 8005EF40 0080882D */  daddu $s1, $a0, $zero
/* 03A344 8005EF44 AFB00010 */  sw    $s0, 0x10($sp)
/* 03A348 8005EF48 00A0802D */  daddu $s0, $a1, $zero
/* 03A34C 8005EF4C AFBF0018 */  sw    $ra, 0x18($sp)
/* 03A350 8005EF50 0C018250 */  jal   osSetIntMask
/* 03A354 8005EF54 24040001 */   addiu $a0, $zero, 1
/* 03A358 8005EF58 0040202D */  daddu $a0, $v0, $zero
/* 03A35C 8005EF5C 0C018250 */  jal   osSetIntMask
/* 03A360 8005EF60 A6300008 */   sh    $s0, 8($s1)
/* 03A364 8005EF64 8FBF0018 */  lw    $ra, 0x18($sp)
/* 03A368 8005EF68 8FB10014 */  lw    $s1, 0x14($sp)
/* 03A36C 8005EF6C 8FB00010 */  lw    $s0, 0x10($sp)
/* 03A370 8005EF70 03E00008 */  jr    $ra
/* 03A374 8005EF74 27BD0020 */   addiu $sp, $sp, 0x20

nuScGetGfxMQ:
/* 03A378 8005EF78 3C02800E */  lui   $v0, 0x800e
/* 03A37C 8005EF7C 03E00008 */  jr    $ra
/* 03A380 8005EF80 2442A47C */   addiu $v0, $v0, -0x5b84

nuScGetAudioMQ:
/* 03A384 8005EF84 3C02800E */  lui   $v0, 0x800e
/* 03A388 8005EF88 03E00008 */  jr    $ra
/* 03A38C 8005EF8C 2442A444 */   addiu $v0, $v0, -0x5bbc

nuScSetFrameBufferNum:
/* 03A390 8005EF90 3C01800E */  lui   $at, 0x800e
/* 03A394 8005EF94 03E00008 */  jr    $ra
/* 03A398 8005EF98 A024AABD */   sb    $a0, -0x5543($at)

nuScGetFrameRate:
/* 03A39C 8005EF9C 3C02800E */  lui   $v0, 0x800e
/* 03A3A0 8005EFA0 03E00008 */  jr    $ra
/* 03A3A4 8005EFA4 9042AABC */   lbu   $v0, -0x5544($v0)

nuScEventHandler:
/* 03A3A8 8005EFA8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 03A3AC 8005EFAC AFB1001C */  sw    $s1, 0x1c($sp)
/* 03A3B0 8005EFB0 3C11800E */  lui   $s1, 0x800e
/* 03A3B4 8005EFB4 2631A4B4 */  addiu $s1, $s1, -0x5b4c
/* 03A3B8 8005EFB8 AFB40028 */  sw    $s4, 0x28($sp)
/* 03A3BC 8005EFBC 2414029A */  addiu $s4, $zero, 0x29a
/* 03A3C0 8005EFC0 AFB30024 */  sw    $s3, 0x24($sp)
/* 03A3C4 8005EFC4 2413029D */  addiu $s3, $zero, 0x29d
/* 03A3C8 8005EFC8 AFB20020 */  sw    $s2, 0x20($sp)
/* 03A3CC 8005EFCC 24120001 */  addiu $s2, $zero, 1
/* 03A3D0 8005EFD0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 03A3D4 8005EFD4 AFB00018 */  sw    $s0, 0x18($sp)
/* 03A3D8 8005EFD8 3C018009 */  lui   $at, 0x8009
/* 03A3DC 8005EFDC AC203B94 */  sw    $zero, 0x3b94($at)
func_8005EFE0:
/* 03A3E0 8005EFE0 0220202D */  daddu $a0, $s1, $zero
func_8005EFE4:
.L8005EFE4:
/* 03A3E4 8005EFE4 27A50010 */  addiu $a1, $sp, 0x10
func_8005EFE8:
/* 03A3E8 8005EFE8 0C0195BC */  jal   osRecvMesg
/* 03A3EC 8005EFEC 24060001 */   addiu $a2, $zero, 1
/* 03A3F0 8005EFF0 8FA20010 */  lw    $v0, 0x10($sp)
/* 03A3F4 8005EFF4 10540005 */  beq   $v0, $s4, .L8005F00C
/* 03A3F8 8005EFF8 00000000 */   nop   
/* 03A3FC 8005EFFC 1053001D */  beq   $v0, $s3, .L8005F074
/* 03A400 8005F000 0220202D */   daddu $a0, $s1, $zero
/* 03A404 8005F004 08017BFA */  j     func_8005EFE8
/* 03A408 8005F008 27A50010 */   addiu $a1, $sp, 0x10

.L8005F00C:
/* 03A40C 8005F00C 3C028009 */  lui   $v0, 0x8009
/* 03A410 8005F010 8C423B94 */  lw    $v0, 0x3b94($v0)
/* 03A414 8005F014 24420001 */  addiu $v0, $v0, 1
/* 03A418 8005F018 3C018009 */  lui   $at, 0x8009
/* 03A41C 8005F01C AC223B94 */  sw    $v0, 0x3b94($at)
/* 03A420 8005F020 0C017C30 */  jal   nuScEventBroadcast
/* 03A424 8005F024 2624FF8C */   addiu $a0, $s1, -0x74
/* 03A428 8005F028 3C02800A */  lui   $v0, 0x800a
/* 03A42C 8005F02C 9042A5B0 */  lbu   $v0, -0x5a50($v0)
/* 03A430 8005F030 1040FFEC */  beqz  $v0, .L8005EFE4
/* 03A434 8005F034 0220202D */   daddu $a0, $s1, $zero
/* 03A438 8005F038 12000003 */  beqz  $s0, .L8005F048
/* 03A43C 8005F03C 34420002 */   ori   $v0, $v0, 2
/* 03A440 8005F040 08017BF9 */  j     func_8005EFE4
/* 03A444 8005F044 2610FFFF */   addiu $s0, $s0, -1

.L8005F048:
/* 03A448 8005F048 3C01800A */  lui   $at, 0x800a
/* 03A44C 8005F04C 0C01A98C */  jal   osAfterPreNMI
/* 03A450 8005F050 A022A5B0 */   sb    $v0, -0x5a50($at)
/* 03A454 8005F054 3C013F80 */  lui   $at, 0x3f80
/* 03A458 8005F058 44816000 */  mtc1  $at, $f12
/* 03A45C 8005F05C 0C019BF4 */  jal   osViSetYScale
/* 03A460 8005F060 00000000 */   nop   
/* 03A464 8005F064 0C019CE0 */  jal   osViBlack
/* 03A468 8005F068 24040001 */   addiu $a0, $zero, 1
/* 03A46C 8005F06C 08017BF9 */  j     func_8005EFE4
/* 03A470 8005F070 0220202D */   daddu $a0, $s1, $zero

.L8005F074:
/* 03A474 8005F074 3C01800A */  lui   $at, 0x800a
/* 03A478 8005F078 A032A5B0 */  sb    $s2, -0x5a50($at)
/* 03A47C 8005F07C 0C017C30 */  jal   nuScEventBroadcast
/* 03A480 8005F080 2624FF8E */   addiu $a0, $s1, -0x72
/* 03A484 8005F084 3C028009 */  lui   $v0, 0x8009
/* 03A488 8005F088 8C423B80 */  lw    $v0, 0x3b80($v0)
/* 03A48C 8005F08C 10400003 */  beqz  $v0, .L8005F09C
/* 03A490 8005F090 00000000 */   nop   
/* 03A494 8005F094 0040F809 */  jalr  $v0
/* 03A498 8005F098 00000000 */  nop   
.L8005F09C:
/* 03A49C 8005F09C 92220608 */  lbu   $v0, 0x608($s1)
/* 03A4A0 8005F0A0 8E230604 */  lw    $v1, 0x604($s1)
/* 03A4A4 8005F0A4 00021042 */  srl   $v0, $v0, 1
/* 03A4A8 8005F0A8 14600002 */  bnez  $v1, .L8005F0B4
/* 03A4AC 8005F0AC 0043001B */   divu  $zero, $v0, $v1
/* 03A4B0 8005F0B0 0007000D */  break 7
.L8005F0B4:
/* 03A4B4 8005F0B4 00001012 */  mflo  $v0
/* 03A4B8 8005F0B8 08017BF8 */  j     func_8005EFE0
/* 03A4BC 8005F0BC 2450FFFD */   addiu $s0, $v0, -3

nuScEventBroadcast:
/* 03A4C0 8005F0C0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 03A4C4 8005F0C4 AFB00010 */  sw    $s0, 0x10($sp)
/* 03A4C8 8005F0C8 3C10800E */  lui   $s0, 0x800e
/* 03A4CC 8005F0CC 8E10AAA8 */  lw    $s0, -0x5558($s0)
/* 03A4D0 8005F0D0 AFB10014 */  sw    $s1, 0x14($sp)
/* 03A4D4 8005F0D4 0080882D */  daddu $s1, $a0, $zero
/* 03A4D8 8005F0D8 1200000C */  beqz  $s0, .L8005F10C
/* 03A4DC 8005F0DC AFBF0018 */   sw    $ra, 0x18($sp)
.L8005F0E0:
/* 03A4E0 8005F0E0 96020008 */  lhu   $v0, 8($s0)
/* 03A4E4 8005F0E4 96230000 */  lhu   $v1, ($s1)
/* 03A4E8 8005F0E8 00431024 */  and   $v0, $v0, $v1
/* 03A4EC 8005F0EC 10400004 */  beqz  $v0, .L8005F100
/* 03A4F0 8005F0F0 0220282D */   daddu $a1, $s1, $zero
/* 03A4F4 8005F0F4 8E040004 */  lw    $a0, 4($s0)
/* 03A4F8 8005F0F8 0C019608 */  jal   osSendMesg
/* 03A4FC 8005F0FC 0000302D */   daddu $a2, $zero, $zero
.L8005F100:
/* 03A500 8005F100 8E100000 */  lw    $s0, ($s0)
/* 03A504 8005F104 1600FFF6 */  bnez  $s0, .L8005F0E0
/* 03A508 8005F108 00000000 */   nop   
.L8005F10C:
/* 03A50C 8005F10C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 03A510 8005F110 8FB10014 */  lw    $s1, 0x14($sp)
/* 03A514 8005F114 8FB00010 */  lw    $s0, 0x10($sp)
/* 03A518 8005F118 03E00008 */  jr    $ra
/* 03A51C 8005F11C 27BD0020 */   addiu $sp, $sp, 0x20

nuScWaitTaskReady:
/* 03A520 8005F120 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 03A524 8005F124 3C05800E */  lui   $a1, 0x800e
/* 03A528 8005F128 24A5AABD */  addiu $a1, $a1, -0x5543
/* 03A52C 8005F12C 24030001 */  addiu $v1, $zero, 1
/* 03A530 8005F130 AFBF0034 */  sw    $ra, 0x34($sp)
/* 03A534 8005F134 AFB40030 */  sw    $s4, 0x30($sp)
/* 03A538 8005F138 AFB3002C */  sw    $s3, 0x2c($sp)
/* 03A53C 8005F13C AFB20028 */  sw    $s2, 0x28($sp)
/* 03A540 8005F140 AFB10024 */  sw    $s1, 0x24($sp)
/* 03A544 8005F144 AFB00020 */  sw    $s0, 0x20($sp)
/* 03A548 8005F148 90A20000 */  lbu   $v0, ($a1)
/* 03A54C 8005F14C 8C92000C */  lw    $s2, 0xc($a0)
/* 03A550 8005F150 10430035 */  beq   $v0, $v1, .L8005F228
/* 03A554 8005F154 27B10010 */   addiu $s1, $sp, 0x10
/* 03A558 8005F158 24B4FA9F */  addiu $s4, $a1, -0x561
/* 03A55C 8005F15C 0060982D */  daddu $s3, $v1, $zero
func_8005F160:
/* 03A560 8005F160 0C019A6C */  jal   osViGetCurrentFramebuffer
/* 03A564 8005F164 00000000 */   nop   
/* 03A568 8005F168 10520005 */  beq   $v0, $s2, .L8005F180
/* 03A56C 8005F16C 00000000 */   nop   
/* 03A570 8005F170 0C019A7C */  jal   osViGetNextFramebuffer
/* 03A574 8005F174 00000000 */   nop   
/* 03A578 8005F178 1452002B */  bne   $v0, $s2, .L8005F228
/* 03A57C 8005F17C 00000000 */   nop   
.L8005F180:
/* 03A580 8005F180 0C018250 */  jal   osSetIntMask
/* 03A584 8005F184 24040001 */   addiu $a0, $zero, 1
/* 03A588 8005F188 AE340004 */  sw    $s4, 4($s1)
/* 03A58C 8005F18C 3C03800E */  lui   $v1, 0x800e
/* 03A590 8005F190 8C63AAA8 */  lw    $v1, -0x5558($v1)
/* 03A594 8005F194 AFA30010 */  sw    $v1, 0x10($sp)
/* 03A598 8005F198 A6330008 */  sh    $s3, 8($s1)
/* 03A59C 8005F19C 3C01800E */  lui   $at, 0x800e
/* 03A5A0 8005F1A0 AC31AAA8 */  sw    $s1, -0x5558($at)
/* 03A5A4 8005F1A4 0C018250 */  jal   osSetIntMask
/* 03A5A8 8005F1A8 0040202D */   daddu $a0, $v0, $zero
/* 03A5AC 8005F1AC 3C04800E */  lui   $a0, 0x800e
/* 03A5B0 8005F1B0 2484A55C */  addiu $a0, $a0, -0x5aa4
/* 03A5B4 8005F1B4 0000282D */  daddu $a1, $zero, $zero
/* 03A5B8 8005F1B8 0C0195BC */  jal   osRecvMesg
/* 03A5BC 8005F1BC 24060001 */   addiu $a2, $zero, 1
/* 03A5C0 8005F1C0 0C018250 */  jal   osSetIntMask
/* 03A5C4 8005F1C4 24040001 */   addiu $a0, $zero, 1
/* 03A5C8 8005F1C8 0000282D */  daddu $a1, $zero, $zero
/* 03A5CC 8005F1CC 27B00010 */  addiu $s0, $sp, 0x10
/* 03A5D0 8005F1D0 3C03800E */  lui   $v1, 0x800e
/* 03A5D4 8005F1D4 8C63AAA8 */  lw    $v1, -0x5558($v1)
/* 03A5D8 8005F1D8 1060000C */  beqz  $v1, .L8005F20C
/* 03A5DC 8005F1DC 0040202D */   daddu $a0, $v0, $zero
.L8005F1E0:
/* 03A5E0 8005F1E0 54700007 */  bnel  $v1, $s0, .L8005F200
/* 03A5E4 8005F1E4 0060282D */   daddu $a1, $v1, $zero
/* 03A5E8 8005F1E8 14A0000C */  bnez  $a1, .L8005F21C
/* 03A5EC 8005F1EC 00000000 */   nop   
/* 03A5F0 8005F1F0 8C620000 */  lw    $v0, ($v1)
/* 03A5F4 8005F1F4 3C01800E */  lui   $at, 0x800e
/* 03A5F8 8005F1F8 08017C83 */  j     func_8005F20C
/* 03A5FC 8005F1FC AC22AAA8 */   sw    $v0, -0x5558($at)

.L8005F200:
/* 03A600 8005F200 8CA30000 */  lw    $v1, ($a1)
/* 03A604 8005F204 1460FFF6 */  bnez  $v1, .L8005F1E0
/* 03A608 8005F208 00000000 */   nop   
func_8005F20C:
.L8005F20C:
/* 03A60C 8005F20C 0C018250 */  jal   osSetIntMask
/* 03A610 8005F210 00000000 */   nop   
/* 03A614 8005F214 08017C58 */  j     func_8005F160
/* 03A618 8005F218 00000000 */   nop   

.L8005F21C:
/* 03A61C 8005F21C 8C620000 */  lw    $v0, ($v1)
/* 03A620 8005F220 08017C83 */  j     func_8005F20C
/* 03A624 8005F224 ACA20000 */   sw    $v0, ($a1)

.L8005F228:
/* 03A628 8005F228 8FBF0034 */  lw    $ra, 0x34($sp)
/* 03A62C 8005F22C 8FB40030 */  lw    $s4, 0x30($sp)
/* 03A630 8005F230 8FB3002C */  lw    $s3, 0x2c($sp)
/* 03A634 8005F234 8FB20028 */  lw    $s2, 0x28($sp)
/* 03A638 8005F238 8FB10024 */  lw    $s1, 0x24($sp)
/* 03A63C 8005F23C 8FB00020 */  lw    $s0, 0x20($sp)
/* 03A640 8005F240 03E00008 */  jr    $ra
/* 03A644 8005F244 27BD0038 */   addiu $sp, $sp, 0x38

/* 03A648 8005F248 00000000 */  nop   
/* 03A64C 8005F24C 00000000 */  nop   
