.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240E58_8D6C58
/* 8D6C58 80240E58 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 8D6C5C 80240E5C AFB20030 */  sw        $s2, 0x30($sp)
/* 8D6C60 80240E60 0080902D */  daddu     $s2, $a0, $zero
/* 8D6C64 80240E64 AFBF0038 */  sw        $ra, 0x38($sp)
/* 8D6C68 80240E68 AFB30034 */  sw        $s3, 0x34($sp)
/* 8D6C6C 80240E6C AFB1002C */  sw        $s1, 0x2c($sp)
/* 8D6C70 80240E70 AFB00028 */  sw        $s0, 0x28($sp)
/* 8D6C74 80240E74 F7B60048 */  sdc1      $f22, 0x48($sp)
/* 8D6C78 80240E78 F7B40040 */  sdc1      $f20, 0x40($sp)
/* 8D6C7C 80240E7C 8E510148 */  lw        $s1, 0x148($s2)
/* 8D6C80 80240E80 86240008 */  lh        $a0, 8($s1)
/* 8D6C84 80240E84 0C00EABB */  jal       get_npc_unsafe
/* 8D6C88 80240E88 00A0982D */   daddu    $s3, $a1, $zero
/* 8D6C8C 80240E8C 0040802D */  daddu     $s0, $v0, $zero
/* 8D6C90 80240E90 0200202D */  daddu     $a0, $s0, $zero
/* 8D6C94 80240E94 C6220088 */  lwc1      $f2, 0x88($s1)
/* 8D6C98 80240E98 468010A0 */  cvt.s.w   $f2, $f2
/* 8D6C9C 80240E9C 460010A1 */  cvt.d.s   $f2, $f2
/* 8D6CA0 80240EA0 C604001C */  lwc1      $f4, 0x1c($s0)
/* 8D6CA4 80240EA4 C6000014 */  lwc1      $f0, 0x14($s0)
/* 8D6CA8 80240EA8 8E050018 */  lw        $a1, 0x18($s0)
/* 8D6CAC 80240EAC 46002100 */  add.s     $f4, $f4, $f0
/* 8D6CB0 80240EB0 8E06000C */  lw        $a2, 0xc($s0)
/* 8D6CB4 80240EB4 C6200078 */  lwc1      $f0, 0x78($s1)
/* 8D6CB8 80240EB8 46800020 */  cvt.s.w   $f0, $f0
/* 8D6CBC 80240EBC E604001C */  swc1      $f4, 0x1c($s0)
/* 8D6CC0 80240EC0 3C014059 */  lui       $at, 0x4059
/* 8D6CC4 80240EC4 44812800 */  mtc1      $at, $f5
/* 8D6CC8 80240EC8 44802000 */  mtc1      $zero, $f4
/* 8D6CCC 80240ECC 46000021 */  cvt.d.s   $f0, $f0
/* 8D6CD0 80240ED0 46240003 */  div.d     $f0, $f0, $f4
/* 8D6CD4 80240ED4 46200520 */  cvt.s.d   $f20, $f0
/* 8D6CD8 80240ED8 46241083 */  div.d     $f2, $f2, $f4
/* 8D6CDC 80240EDC 0C00EA95 */  jal       npc_move_heading
/* 8D6CE0 80240EE0 462015A0 */   cvt.s.d  $f22, $f2
/* 8D6CE4 80240EE4 C604001C */  lwc1      $f4, 0x1c($s0)
/* 8D6CE8 80240EE8 44801000 */  mtc1      $zero, $f2
/* 8D6CEC 80240EEC 44801800 */  mtc1      $zero, $f3
/* 8D6CF0 80240EF0 46002021 */  cvt.d.s   $f0, $f4
/* 8D6CF4 80240EF4 4620103E */  c.le.d    $f2, $f0
/* 8D6CF8 80240EF8 00000000 */  nop
/* 8D6CFC 80240EFC 45000030 */  bc1f      .L80240FC0
/* 8D6D00 80240F00 00000000 */   nop
/* 8D6D04 80240F04 C600003C */  lwc1      $f0, 0x3c($s0)
/* 8D6D08 80240F08 46040000 */  add.s     $f0, $f0, $f4
/* 8D6D0C 80240F0C E600003C */  swc1      $f0, 0x3c($s0)
/* 8D6D10 80240F10 8E2200CC */  lw        $v0, 0xcc($s1)
/* 8D6D14 80240F14 8C420024 */  lw        $v0, 0x24($v0)
/* 8D6D18 80240F18 AE020028 */  sw        $v0, 0x28($s0)
/* 8D6D1C 80240F1C A2200007 */  sb        $zero, 7($s1)
/* 8D6D20 80240F20 8E020000 */  lw        $v0, ($s0)
/* 8D6D24 80240F24 30420008 */  andi      $v0, $v0, 8
/* 8D6D28 80240F28 14400011 */  bnez      $v0, .L80240F70
/* 8D6D2C 80240F2C 0000102D */   daddu    $v0, $zero, $zero
/* 8D6D30 80240F30 27A50018 */  addiu     $a1, $sp, 0x18
/* 8D6D34 80240F34 27A6001C */  addiu     $a2, $sp, 0x1c
/* 8D6D38 80240F38 C6000038 */  lwc1      $f0, 0x38($s0)
/* 8D6D3C 80240F3C C602003C */  lwc1      $f2, 0x3c($s0)
/* 8D6D40 80240F40 C6040040 */  lwc1      $f4, 0x40($s0)
/* 8D6D44 80240F44 3C01447A */  lui       $at, 0x447a
/* 8D6D48 80240F48 44813000 */  mtc1      $at, $f6
/* 8D6D4C 80240F4C 27A20024 */  addiu     $v0, $sp, 0x24
/* 8D6D50 80240F50 E7A00018 */  swc1      $f0, 0x18($sp)
/* 8D6D54 80240F54 E7A2001C */  swc1      $f2, 0x1c($sp)
/* 8D6D58 80240F58 E7A40020 */  swc1      $f4, 0x20($sp)
/* 8D6D5C 80240F5C E7A60024 */  swc1      $f6, 0x24($sp)
/* 8D6D60 80240F60 AFA20010 */  sw        $v0, 0x10($sp)
/* 8D6D64 80240F64 8E040080 */  lw        $a0, 0x80($s0)
/* 8D6D68 80240F68 0C0372DF */  jal       func_800DCB7C
/* 8D6D6C 80240F6C 27A70020 */   addiu    $a3, $sp, 0x20
.L80240F70:
/* 8D6D70 80240F70 1040000B */  beqz      $v0, .L80240FA0
/* 8D6D74 80240F74 00000000 */   nop
/* 8D6D78 80240F78 C7A0001C */  lwc1      $f0, 0x1c($sp)
/* 8D6D7C 80240F7C 46140080 */  add.s     $f2, $f0, $f20
/* 8D6D80 80240F80 C600003C */  lwc1      $f0, 0x3c($s0)
/* 8D6D84 80240F84 4600103E */  c.le.s    $f2, $f0
/* 8D6D88 80240F88 00000000 */  nop
/* 8D6D8C 80240F8C 4500008D */  bc1f      .L802411C4
/* 8D6D90 80240F90 00000000 */   nop
/* 8D6D94 80240F94 E602003C */  swc1      $f2, 0x3c($s0)
/* 8D6D98 80240F98 08090471 */  j         .L802411C4
/* 8D6D9C 80240F9C AE400070 */   sw       $zero, 0x70($s2)
.L80240FA0:
/* 8D6DA0 80240FA0 C602003C */  lwc1      $f2, 0x3c($s0)
/* 8D6DA4 80240FA4 C6000064 */  lwc1      $f0, 0x64($s0)
/* 8D6DA8 80240FA8 4602003E */  c.le.s    $f0, $f2
/* 8D6DAC 80240FAC 00000000 */  nop
/* 8D6DB0 80240FB0 45030084 */  bc1tl     .L802411C4
/* 8D6DB4 80240FB4 AE400070 */   sw       $zero, 0x70($s2)
/* 8D6DB8 80240FB8 08090471 */  j         .L802411C4
/* 8D6DBC 80240FBC 00000000 */   nop
.L80240FC0:
/* 8D6DC0 80240FC0 4622003C */  c.lt.d    $f0, $f2
/* 8D6DC4 80240FC4 00000000 */  nop
/* 8D6DC8 80240FC8 4500007E */  bc1f      .L802411C4
/* 8D6DCC 80240FCC 00000000 */   nop
/* 8D6DD0 80240FD0 9602008E */  lhu       $v0, 0x8e($s0)
/* 8D6DD4 80240FD4 24420001 */  addiu     $v0, $v0, 1
/* 8D6DD8 80240FD8 A602008E */  sh        $v0, 0x8e($s0)
/* 8D6DDC 80240FDC 00021400 */  sll       $v0, $v0, 0x10
/* 8D6DE0 80240FE0 8E630020 */  lw        $v1, 0x20($s3)
/* 8D6DE4 80240FE4 00021403 */  sra       $v0, $v0, 0x10
/* 8D6DE8 80240FE8 0043102A */  slt       $v0, $v0, $v1
/* 8D6DEC 80240FEC 14400026 */  bnez      $v0, .L80241088
/* 8D6DF0 80240FF0 00000000 */   nop
/* 8D6DF4 80240FF4 C60C0038 */  lwc1      $f12, 0x38($s0)
/* 8D6DF8 80240FF8 C60E0040 */  lwc1      $f14, 0x40($s0)
/* 8D6DFC 80240FFC 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* 8D6E00 80241000 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* 8D6E04 80241004 A600008E */  sh        $zero, 0x8e($s0)
/* 8D6E08 80241008 8C460028 */  lw        $a2, 0x28($v0)
/* 8D6E0C 8024100C 0C00A720 */  jal       atan2
/* 8D6E10 80241010 8C470030 */   lw       $a3, 0x30($v0)
/* 8D6E14 80241014 46000506 */  mov.s     $f20, $f0
/* 8D6E18 80241018 C60C000C */  lwc1      $f12, 0xc($s0)
/* 8D6E1C 8024101C 0C00A70A */  jal       get_clamped_angle_diff
/* 8D6E20 80241020 4600A386 */   mov.s    $f14, $f20
/* 8D6E24 80241024 46000086 */  mov.s     $f2, $f0
/* 8D6E28 80241028 8E62001C */  lw        $v0, 0x1c($s3)
/* 8D6E2C 8024102C 46001005 */  abs.s     $f0, $f2
/* 8D6E30 80241030 44822000 */  mtc1      $v0, $f4
/* 8D6E34 80241034 00000000 */  nop
/* 8D6E38 80241038 46802120 */  cvt.s.w   $f4, $f4
/* 8D6E3C 8024103C 4600203C */  c.lt.s    $f4, $f0
/* 8D6E40 80241040 00000000 */  nop
/* 8D6E44 80241044 4500000D */  bc1f      .L8024107C
/* 8D6E48 80241048 00000000 */   nop
/* 8D6E4C 8024104C 44800000 */  mtc1      $zero, $f0
/* 8D6E50 80241050 C614000C */  lwc1      $f20, 0xc($s0)
/* 8D6E54 80241054 4600103C */  c.lt.s    $f2, $f0
/* 8D6E58 80241058 00000000 */  nop
/* 8D6E5C 8024105C 45000006 */  bc1f      .L80241078
/* 8D6E60 80241060 00021023 */   negu     $v0, $v0
/* 8D6E64 80241064 44820000 */  mtc1      $v0, $f0
/* 8D6E68 80241068 00000000 */  nop
/* 8D6E6C 8024106C 46800020 */  cvt.s.w   $f0, $f0
/* 8D6E70 80241070 0809041F */  j         .L8024107C
/* 8D6E74 80241074 4600A500 */   add.s    $f20, $f20, $f0
.L80241078:
/* 8D6E78 80241078 4604A500 */  add.s     $f20, $f20, $f4
.L8024107C:
/* 8D6E7C 8024107C 0C00A6C9 */  jal       clamp_angle
/* 8D6E80 80241080 4600A306 */   mov.s    $f12, $f20
/* 8D6E84 80241084 E600000C */  swc1      $f0, 0xc($s0)
.L80241088:
/* 8D6E88 80241088 8E020000 */  lw        $v0, ($s0)
/* 8D6E8C 8024108C 30420008 */  andi      $v0, $v0, 8
/* 8D6E90 80241090 1040000A */  beqz      $v0, .L802410BC
/* 8D6E94 80241094 27A50018 */   addiu    $a1, $sp, 0x18
/* 8D6E98 80241098 C602003C */  lwc1      $f2, 0x3c($s0)
/* 8D6E9C 8024109C C600001C */  lwc1      $f0, 0x1c($s0)
/* 8D6EA0 802410A0 46001080 */  add.s     $f2, $f2, $f0
/* 8D6EA4 802410A4 4616103C */  c.lt.s    $f2, $f22
/* 8D6EA8 802410A8 00000000 */  nop
/* 8D6EAC 802410AC 45020045 */  bc1fl     .L802411C4
/* 8D6EB0 802410B0 E602003C */   swc1     $f2, 0x3c($s0)
/* 8D6EB4 802410B4 08090470 */  j         .L802411C0
/* 8D6EB8 802410B8 E616003C */   swc1     $f22, 0x3c($s0)
.L802410BC:
/* 8D6EBC 802410BC C6000038 */  lwc1      $f0, 0x38($s0)
/* 8D6EC0 802410C0 27A6001C */  addiu     $a2, $sp, 0x1c
/* 8D6EC4 802410C4 E7A00018 */  swc1      $f0, 0x18($sp)
/* 8D6EC8 802410C8 860200A8 */  lh        $v0, 0xa8($s0)
/* 8D6ECC 802410CC C600001C */  lwc1      $f0, 0x1c($s0)
/* 8D6ED0 802410D0 C604003C */  lwc1      $f4, 0x3c($s0)
/* 8D6ED4 802410D4 44821000 */  mtc1      $v0, $f2
/* 8D6ED8 802410D8 00000000 */  nop
/* 8D6EDC 802410DC 468010A0 */  cvt.s.w   $f2, $f2
/* 8D6EE0 802410E0 46000005 */  abs.s     $f0, $f0
/* 8D6EE4 802410E4 46020000 */  add.s     $f0, $f0, $f2
/* 8D6EE8 802410E8 C6060040 */  lwc1      $f6, 0x40($s0)
/* 8D6EEC 802410EC 27A20024 */  addiu     $v0, $sp, 0x24
/* 8D6EF0 802410F0 46022100 */  add.s     $f4, $f4, $f2
/* 8D6EF4 802410F4 3C014024 */  lui       $at, 0x4024
/* 8D6EF8 802410F8 44811800 */  mtc1      $at, $f3
/* 8D6EFC 802410FC 44801000 */  mtc1      $zero, $f2
/* 8D6F00 80241100 46000021 */  cvt.d.s   $f0, $f0
/* 8D6F04 80241104 46220000 */  add.d     $f0, $f0, $f2
/* 8D6F08 80241108 E7A60020 */  swc1      $f6, 0x20($sp)
/* 8D6F0C 8024110C E7A4001C */  swc1      $f4, 0x1c($sp)
/* 8D6F10 80241110 46200020 */  cvt.s.d   $f0, $f0
/* 8D6F14 80241114 E7A00024 */  swc1      $f0, 0x24($sp)
/* 8D6F18 80241118 AFA20010 */  sw        $v0, 0x10($sp)
/* 8D6F1C 8024111C 8E040080 */  lw        $a0, 0x80($s0)
/* 8D6F20 80241120 0C0372DF */  jal       func_800DCB7C
/* 8D6F24 80241124 27A70020 */   addiu    $a3, $sp, 0x20
/* 8D6F28 80241128 10400015 */  beqz      $v0, .L80241180
/* 8D6F2C 8024112C 00000000 */   nop
/* 8D6F30 80241130 860200A8 */  lh        $v0, 0xa8($s0)
/* 8D6F34 80241134 C604001C */  lwc1      $f4, 0x1c($s0)
/* 8D6F38 80241138 44820000 */  mtc1      $v0, $f0
/* 8D6F3C 8024113C 00000000 */  nop
/* 8D6F40 80241140 46800020 */  cvt.s.w   $f0, $f0
/* 8D6F44 80241144 46002085 */  abs.s     $f2, $f4
/* 8D6F48 80241148 46020000 */  add.s     $f0, $f0, $f2
/* 8D6F4C 8024114C C7A20024 */  lwc1      $f2, 0x24($sp)
/* 8D6F50 80241150 4600103E */  c.le.s    $f2, $f0
/* 8D6F54 80241154 00000000 */  nop
/* 8D6F58 80241158 45000005 */  bc1f      .L80241170
/* 8D6F5C 8024115C 00000000 */   nop
/* 8D6F60 80241160 C7A0001C */  lwc1      $f0, 0x1c($sp)
/* 8D6F64 80241164 AE00001C */  sw        $zero, 0x1c($s0)
/* 8D6F68 80241168 08090471 */  j         .L802411C4
/* 8D6F6C 8024116C E600003C */   swc1     $f0, 0x3c($s0)
.L80241170:
/* 8D6F70 80241170 C600003C */  lwc1      $f0, 0x3c($s0)
/* 8D6F74 80241174 46040000 */  add.s     $f0, $f0, $f4
/* 8D6F78 80241178 08090471 */  j         .L802411C4
/* 8D6F7C 8024117C E600003C */   swc1     $f0, 0x3c($s0)
.L80241180:
/* 8D6F80 80241180 C606003C */  lwc1      $f6, 0x3c($s0)
/* 8D6F84 80241184 860200A8 */  lh        $v0, 0xa8($s0)
/* 8D6F88 80241188 46163081 */  sub.s     $f2, $f6, $f22
/* 8D6F8C 8024118C 44820000 */  mtc1      $v0, $f0
/* 8D6F90 80241190 00000000 */  nop
/* 8D6F94 80241194 46800020 */  cvt.s.w   $f0, $f0
/* 8D6F98 80241198 46001080 */  add.s     $f2, $f2, $f0
/* 8D6F9C 8024119C C604001C */  lwc1      $f4, 0x1c($s0)
/* 8D6FA0 802411A0 46002005 */  abs.s     $f0, $f4
/* 8D6FA4 802411A4 4602003C */  c.lt.s    $f0, $f2
/* 8D6FA8 802411A8 00000000 */  nop
/* 8D6FAC 802411AC 45020005 */  bc1fl     .L802411C4
/* 8D6FB0 802411B0 AE00001C */   sw       $zero, 0x1c($s0)
/* 8D6FB4 802411B4 46043000 */  add.s     $f0, $f6, $f4
/* 8D6FB8 802411B8 08090471 */  j         .L802411C4
/* 8D6FBC 802411BC E600003C */   swc1     $f0, 0x3c($s0)
.L802411C0:
/* 8D6FC0 802411C0 AE00001C */  sw        $zero, 0x1c($s0)
.L802411C4:
/* 8D6FC4 802411C4 8FBF0038 */  lw        $ra, 0x38($sp)
/* 8D6FC8 802411C8 8FB30034 */  lw        $s3, 0x34($sp)
/* 8D6FCC 802411CC 8FB20030 */  lw        $s2, 0x30($sp)
/* 8D6FD0 802411D0 8FB1002C */  lw        $s1, 0x2c($sp)
/* 8D6FD4 802411D4 8FB00028 */  lw        $s0, 0x28($sp)
/* 8D6FD8 802411D8 D7B60048 */  ldc1      $f22, 0x48($sp)
/* 8D6FDC 802411DC D7B40040 */  ldc1      $f20, 0x40($sp)
/* 8D6FE0 802411E0 03E00008 */  jr        $ra
/* 8D6FE4 802411E4 27BD0050 */   addiu    $sp, $sp, 0x50
