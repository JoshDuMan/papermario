.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802443E0_804C60
/* 804C60 802443E0 27BDFF08 */  addiu     $sp, $sp, -0xf8
/* 804C64 802443E4 AFB300B4 */  sw        $s3, 0xb4($sp)
/* 804C68 802443E8 AFBF00C0 */  sw        $ra, 0xc0($sp)
/* 804C6C 802443EC AFB500BC */  sw        $s5, 0xbc($sp)
/* 804C70 802443F0 AFB400B8 */  sw        $s4, 0xb8($sp)
/* 804C74 802443F4 AFB200B0 */  sw        $s2, 0xb0($sp)
/* 804C78 802443F8 AFB100AC */  sw        $s1, 0xac($sp)
/* 804C7C 802443FC AFB000A8 */  sw        $s0, 0xa8($sp)
/* 804C80 80244400 F7BE00F0 */  sdc1      $f30, 0xf0($sp)
/* 804C84 80244404 F7BC00E8 */  sdc1      $f28, 0xe8($sp)
/* 804C88 80244408 F7BA00E0 */  sdc1      $f26, 0xe0($sp)
/* 804C8C 8024440C F7B800D8 */  sdc1      $f24, 0xd8($sp)
/* 804C90 80244410 F7B600D0 */  sdc1      $f22, 0xd0($sp)
/* 804C94 80244414 F7B400C8 */  sdc1      $f20, 0xc8($sp)
/* 804C98 80244418 10A00011 */  beqz      $a1, .L80244460
/* 804C9C 8024441C 0080982D */   daddu    $s3, $a0, $zero
/* 804CA0 80244420 3C05F4AC */  lui       $a1, 0xf4ac
/* 804CA4 80244424 34A5D483 */  ori       $a1, $a1, 0xd483
/* 804CA8 80244428 240200B4 */  addiu     $v0, $zero, 0xb4
/* 804CAC 8024442C 0C0B1EAF */  jal       get_variable
/* 804CB0 80244430 AE620070 */   sw       $v0, 0x70($s3)
/* 804CB4 80244434 0260202D */  daddu     $a0, $s3, $zero
/* 804CB8 80244438 3C05F4AC */  lui       $a1, 0xf4ac
/* 804CBC 8024443C 34A5D484 */  ori       $a1, $a1, 0xd484
/* 804CC0 80244440 0C0B1EAF */  jal       get_variable
/* 804CC4 80244444 AE620074 */   sw       $v0, 0x74($s3)
/* 804CC8 80244448 0260202D */  daddu     $a0, $s3, $zero
/* 804CCC 8024444C 3C05F4AC */  lui       $a1, 0xf4ac
/* 804CD0 80244450 34A5D485 */  ori       $a1, $a1, 0xd485
/* 804CD4 80244454 0C0B1EAF */  jal       get_variable
/* 804CD8 80244458 AE620078 */   sw       $v0, 0x78($s3)
/* 804CDC 8024445C AE62007C */  sw        $v0, 0x7c($s3)
.L80244460:
/* 804CE0 80244460 0000882D */  daddu     $s1, $zero, $zero
/* 804CE4 80244464 8E620074 */  lw        $v0, 0x74($s3)
/* 804CE8 80244468 3C014120 */  lui       $at, 0x4120
/* 804CEC 8024446C 4481A000 */  mtc1      $at, $f20
/* 804CF0 80244470 27B00028 */  addiu     $s0, $sp, 0x28
/* 804CF4 80244474 AFA20018 */  sw        $v0, 0x18($sp)
/* 804CF8 80244478 8E620078 */  lw        $v0, 0x78($s3)
/* 804CFC 8024447C 3C15800B */  lui       $s5, %hi(gCameras)
/* 804D00 80244480 26B51D80 */  addiu     $s5, $s5, %lo(gCameras)
/* 804D04 80244484 AFA2001C */  sw        $v0, 0x1c($sp)
/* 804D08 80244488 8E62007C */  lw        $v0, 0x7c($s3)
/* 804D0C 8024448C AFA20020 */  sw        $v0, 0x20($sp)
/* 804D10 80244490 C66C0070 */  lwc1      $f12, 0x70($s3)
/* 804D14 80244494 46806320 */  cvt.s.w   $f12, $f12
/* 804D18 80244498 0C00A8BB */  jal       sin_deg
/* 804D1C 8024449C 27B20068 */   addiu    $s2, $sp, 0x68
/* 804D20 802444A0 46140002 */  mul.s     $f0, $f0, $f20
/* 804D24 802444A4 00000000 */  nop       
/* 804D28 802444A8 0220A02D */  daddu     $s4, $s1, $zero
/* 804D2C 802444AC C66C0070 */  lwc1      $f12, 0x70($s3)
/* 804D30 802444B0 46806320 */  cvt.s.w   $f12, $f12
/* 804D34 802444B4 4480B000 */  mtc1      $zero, $f22
/* 804D38 802444B8 3C013F80 */  lui       $at, 0x3f80
/* 804D3C 802444BC 4481D000 */  mtc1      $at, $f26
/* 804D40 802444C0 0C00A8BB */  jal       sin_deg
/* 804D44 802444C4 46140780 */   add.s    $f30, $f0, $f20
/* 804D48 802444C8 3C0141C8 */  lui       $at, 0x41c8
/* 804D4C 802444CC 44811000 */  mtc1      $at, $f2
/* 804D50 802444D0 8E630070 */  lw        $v1, 0x70($s3)
/* 804D54 802444D4 46020002 */  mul.s     $f0, $f0, $f2
/* 804D58 802444D8 00000000 */  nop       
/* 804D5C 802444DC 00031080 */  sll       $v0, $v1, 2
/* 804D60 802444E0 00431021 */  addu      $v0, $v0, $v1
/* 804D64 802444E4 00021040 */  sll       $v0, $v0, 1
/* 804D68 802444E8 4482C000 */  mtc1      $v0, $f24
/* 804D6C 802444EC 00000000 */  nop       
/* 804D70 802444F0 4680C620 */  cvt.s.w   $f24, $f24
/* 804D74 802444F4 46140700 */  add.s     $f28, $f0, $f20
.L802444F8:
/* 804D78 802444F8 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* 804D7C 802444FC 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* 804D80 80244500 4406B000 */  mfc1      $a2, $f22
/* 804D84 80244504 00031080 */  sll       $v0, $v1, 2
/* 804D88 80244508 00431021 */  addu      $v0, $v0, $v1
/* 804D8C 8024450C 00021080 */  sll       $v0, $v0, 2
/* 804D90 80244510 00431023 */  subu      $v0, $v0, $v1
/* 804D94 80244514 000218C0 */  sll       $v1, $v0, 3
/* 804D98 80244518 00431021 */  addu      $v0, $v0, $v1
/* 804D9C 8024451C 000210C0 */  sll       $v0, $v0, 3
/* 804DA0 80244520 00551021 */  addu      $v0, $v0, $s5
/* 804DA4 80244524 C440006C */  lwc1      $f0, 0x6c($v0)
/* 804DA8 80244528 4407D000 */  mfc1      $a3, $f26
/* 804DAC 8024452C 46000007 */  neg.s     $f0, $f0
/* 804DB0 80244530 44050000 */  mfc1      $a1, $f0
/* 804DB4 80244534 0200202D */  daddu     $a0, $s0, $zero
/* 804DB8 80244538 0C019EC8 */  jal       guRotateF
/* 804DBC 8024453C E7B60010 */   swc1     $f22, 0x10($sp)
/* 804DC0 80244540 44942000 */  mtc1      $s4, $f4
/* 804DC4 80244544 00000000 */  nop       
/* 804DC8 80244548 46802120 */  cvt.s.w   $f4, $f4
/* 804DCC 8024454C 4406B000 */  mfc1      $a2, $f22
/* 804DD0 80244550 4407B000 */  mfc1      $a3, $f22
/* 804DD4 80244554 44052000 */  mfc1      $a1, $f4
/* 804DD8 80244558 0240202D */  daddu     $a0, $s2, $zero
/* 804DDC 8024455C 0C019EC8 */  jal       guRotateF
/* 804DE0 80244560 E7BA0010 */   swc1     $f26, 0x10($sp)
/* 804DE4 80244564 0240202D */  daddu     $a0, $s2, $zero
/* 804DE8 80244568 0200282D */  daddu     $a1, $s0, $zero
/* 804DEC 8024456C 0C019D80 */  jal       guMtxCatF
/* 804DF0 80244570 0200302D */   daddu    $a2, $s0, $zero
/* 804DF4 80244574 0C00A8BB */  jal       sin_deg
/* 804DF8 80244578 4600C306 */   mov.s    $f12, $f24
/* 804DFC 8024457C 4600F502 */  mul.s     $f20, $f30, $f0
/* 804E00 80244580 00000000 */  nop       
/* 804E04 80244584 0C00A8D4 */  jal       cos_deg
/* 804E08 80244588 4600C306 */   mov.s    $f12, $f24
/* 804E0C 8024458C 4600E002 */  mul.s     $f0, $f28, $f0
/* 804E10 80244590 00000000 */  nop       
/* 804E14 80244594 4407B000 */  mfc1      $a3, $f22
/* 804E18 80244598 44060000 */  mfc1      $a2, $f0
/* 804E1C 8024459C 4405A000 */  mfc1      $a1, $f20
/* 804E20 802445A0 0C019E40 */  jal       guTranslateF
/* 804E24 802445A4 0240202D */   daddu    $a0, $s2, $zero
/* 804E28 802445A8 0240202D */  daddu     $a0, $s2, $zero
/* 804E2C 802445AC 0200282D */  daddu     $a1, $s0, $zero
/* 804E30 802445B0 0C019D80 */  jal       guMtxCatF
/* 804E34 802445B4 0200302D */   daddu    $a2, $s0, $zero
/* 804E38 802445B8 00111880 */  sll       $v1, $s1, 2
/* 804E3C 802445BC 27A40018 */  addiu     $a0, $sp, 0x18
/* 804E40 802445C0 00831821 */  addu      $v1, $a0, $v1
/* 804E44 802445C4 8C620000 */  lw        $v0, ($v1)
/* 804E48 802445C8 C7A00058 */  lwc1      $f0, 0x58($sp)
/* 804E4C 802445CC 8C42000C */  lw        $v0, 0xc($v0)
/* 804E50 802445D0 E4400010 */  swc1      $f0, 0x10($v0)
/* 804E54 802445D4 8C620000 */  lw        $v0, ($v1)
/* 804E58 802445D8 C7A0005C */  lwc1      $f0, 0x5c($sp)
/* 804E5C 802445DC 8C42000C */  lw        $v0, 0xc($v0)
/* 804E60 802445E0 E4400014 */  swc1      $f0, 0x14($v0)
/* 804E64 802445E4 8C620000 */  lw        $v0, ($v1)
/* 804E68 802445E8 C7A00060 */  lwc1      $f0, 0x60($sp)
/* 804E6C 802445EC 8C42000C */  lw        $v0, 0xc($v0)
/* 804E70 802445F0 26310001 */  addiu     $s1, $s1, 1
/* 804E74 802445F4 E4400018 */  swc1      $f0, 0x18($v0)
/* 804E78 802445F8 2A220003 */  slti      $v0, $s1, 3
/* 804E7C 802445FC 1440FFBE */  bnez      $v0, .L802444F8
/* 804E80 80244600 26940078 */   addiu    $s4, $s4, 0x78
/* 804E84 80244604 8E620070 */  lw        $v0, 0x70($s3)
/* 804E88 80244608 2442FFFF */  addiu     $v0, $v0, -1
/* 804E8C 8024460C AE620070 */  sw        $v0, 0x70($s3)
/* 804E90 80244610 28420010 */  slti      $v0, $v0, 0x10
/* 804E94 80244614 1040000A */  beqz      $v0, .L80244640
/* 804E98 80244618 00000000 */   nop      
/* 804E9C 8024461C 0000882D */  daddu     $s1, $zero, $zero
.L80244620:
/* 804EA0 80244620 8C820000 */  lw        $v0, ($a0)
/* 804EA4 80244624 8C43000C */  lw        $v1, 0xc($v0)
/* 804EA8 80244628 8E620070 */  lw        $v0, 0x70($s3)
/* 804EAC 8024462C 26310001 */  addiu     $s1, $s1, 1
/* 804EB0 80244630 AC62004C */  sw        $v0, 0x4c($v1)
/* 804EB4 80244634 2A220003 */  slti      $v0, $s1, 3
/* 804EB8 80244638 1440FFF9 */  bnez      $v0, .L80244620
/* 804EBC 8024463C 24840004 */   addiu    $a0, $a0, 4
.L80244640:
/* 804EC0 80244640 8E620070 */  lw        $v0, 0x70($s3)
/* 804EC4 80244644 0441000A */  bgez      $v0, .L80244670
/* 804EC8 80244648 0000102D */   daddu    $v0, $zero, $zero
/* 804ECC 8024464C 0000882D */  daddu     $s1, $zero, $zero
/* 804ED0 80244650 27B00018 */  addiu     $s0, $sp, 0x18
.L80244654:
/* 804ED4 80244654 8E040000 */  lw        $a0, ($s0)
/* 804ED8 80244658 26100004 */  addiu     $s0, $s0, 4
/* 804EDC 8024465C 0C016914 */  jal       remove_effect
/* 804EE0 80244660 26310001 */   addiu    $s1, $s1, 1
/* 804EE4 80244664 2A220003 */  slti      $v0, $s1, 3
/* 804EE8 80244668 1440FFFA */  bnez      $v0, .L80244654
/* 804EEC 8024466C 24020002 */   addiu    $v0, $zero, 2
.L80244670:
/* 804EF0 80244670 8FBF00C0 */  lw        $ra, 0xc0($sp)
/* 804EF4 80244674 8FB500BC */  lw        $s5, 0xbc($sp)
/* 804EF8 80244678 8FB400B8 */  lw        $s4, 0xb8($sp)
/* 804EFC 8024467C 8FB300B4 */  lw        $s3, 0xb4($sp)
/* 804F00 80244680 8FB200B0 */  lw        $s2, 0xb0($sp)
/* 804F04 80244684 8FB100AC */  lw        $s1, 0xac($sp)
/* 804F08 80244688 8FB000A8 */  lw        $s0, 0xa8($sp)
/* 804F0C 8024468C D7BE00F0 */  ldc1      $f30, 0xf0($sp)
/* 804F10 80244690 D7BC00E8 */  ldc1      $f28, 0xe8($sp)
/* 804F14 80244694 D7BA00E0 */  ldc1      $f26, 0xe0($sp)
/* 804F18 80244698 D7B800D8 */  ldc1      $f24, 0xd8($sp)
/* 804F1C 8024469C D7B600D0 */  ldc1      $f22, 0xd0($sp)
/* 804F20 802446A0 D7B400C8 */  ldc1      $f20, 0xc8($sp)
/* 804F24 802446A4 03E00008 */  jr        $ra
/* 804F28 802446A8 27BD00F8 */   addiu    $sp, $sp, 0xf8
