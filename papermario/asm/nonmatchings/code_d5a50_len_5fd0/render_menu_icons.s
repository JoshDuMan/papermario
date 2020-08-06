.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel render_menu_icons
/* 0D9DB4 801436B4 27BDFAE0 */  addiu $sp, $sp, -0x520
/* 0D9DB8 801436B8 AFBF051C */  sw    $ra, 0x51c($sp)
/* 0D9DBC 801436BC AFB20518 */  sw    $s2, 0x518($sp)
/* 0D9DC0 801436C0 AFB10514 */  sw    $s1, 0x514($sp)
/* 0D9DC4 801436C4 AFB00510 */  sw    $s0, 0x510($sp)
/* 0D9DC8 801436C8 3C03800A */  lui   $v1, 0x800a
/* 0D9DCC 801436CC 8463A634 */  lh    $v1, -0x59cc($v1)
/* 0D9DD0 801436D0 24020003 */  addiu $v0, $zero, 3
/* 0D9DD4 801436D4 146200AB */  bne   $v1, $v0, .L80143984
/* 0D9DD8 801436D8 0000902D */   daddu $s2, $zero, $zero
/* 0D9DDC 801436DC 0240882D */  daddu $s1, $s2, $zero
/* 0D9DE0 801436E0 3C091020 */  lui   $t1, 0x1020
/* 0D9DE4 801436E4 3C080001 */  lui   $t0, 1
/* 0D9DE8 801436E8 3C074000 */  lui   $a3, 0x4000
/* 0D9DEC 801436EC 3C068015 */  lui   $a2, 0x8015
/* 0D9DF0 801436F0 8CC67960 */  lw    $a2, 0x7960($a2)
/* 0D9DF4 801436F4 27A50010 */  addiu $a1, $sp, 0x10
.L801436F8:
/* 0D9DF8 801436F8 8CC40000 */  lw    $a0, ($a2)
/* 0D9DFC 801436FC 5080001D */  beql  $a0, $zero, .L80143774
/* 0D9E00 80143700 26310001 */   addiu $s1, $s1, 1
/* 0D9E04 80143704 8C830000 */  lw    $v1, ($a0)
/* 0D9E08 80143708 5060001A */  beql  $v1, $zero, .L80143774
/* 0D9E0C 8014370C 26310001 */   addiu $s1, $s1, 1
/* 0D9E10 80143710 30620002 */  andi  $v0, $v1, 2
/* 0D9E14 80143714 54400017 */  bnel  $v0, $zero, .L80143774
/* 0D9E18 80143718 26310001 */   addiu $s1, $s1, 1
/* 0D9E1C 8014371C 00691024 */  and   $v0, $v1, $t1
/* 0D9E20 80143720 54400014 */  bnel  $v0, $zero, .L80143774
/* 0D9E24 80143724 26310001 */   addiu $s1, $s1, 1
/* 0D9E28 80143728 00681024 */  and   $v0, $v1, $t0
/* 0D9E2C 8014372C 50400011 */  beql  $v0, $zero, .L80143774
/* 0D9E30 80143730 26310001 */   addiu $s1, $s1, 1
/* 0D9E34 80143734 00671024 */  and   $v0, $v1, $a3
/* 0D9E38 80143738 5440000E */  bnel  $v0, $zero, .L80143774
/* 0D9E3C 8014373C 26310001 */   addiu $s1, $s1, 1
/* 0D9E40 80143740 30620040 */  andi  $v0, $v1, 0x40
/* 0D9E44 80143744 5440000B */  bnel  $v0, $zero, .L80143774
/* 0D9E48 80143748 26310001 */   addiu $s1, $s1, 1
/* 0D9E4C 8014374C 80820045 */  lb    $v0, 0x45($a0)
/* 0D9E50 80143750 04420008 */  bltzl $v0, .L80143774
/* 0D9E54 80143754 26310001 */   addiu $s1, $s1, 1
/* 0D9E58 80143758 30620080 */  andi  $v0, $v1, 0x80
/* 0D9E5C 8014375C 54400005 */  bnel  $v0, $zero, .L80143774
/* 0D9E60 80143760 26310001 */   addiu $s1, $s1, 1
/* 0D9E64 80143764 ACB10000 */  sw    $s1, ($a1)
/* 0D9E68 80143768 24A50004 */  addiu $a1, $a1, 4
/* 0D9E6C 8014376C 26520001 */  addiu $s2, $s2, 1
/* 0D9E70 80143770 26310001 */  addiu $s1, $s1, 1
.L80143774:
/* 0D9E74 80143774 2A220140 */  slti  $v0, $s1, 0x140
/* 0D9E78 80143778 1440FFDF */  bnez  $v0, .L801436F8
/* 0D9E7C 8014377C 24C60004 */   addiu $a2, $a2, 4
/* 0D9E80 80143780 1240007E */  beqz  $s2, .L8014397C
/* 0D9E84 80143784 2642FFFF */   addiu $v0, $s2, -1
/* 0D9E88 80143788 18400024 */  blez  $v0, .L8014381C
/* 0D9E8C 8014378C 0000882D */   daddu $s1, $zero, $zero
/* 0D9E90 80143790 3C0C8015 */  lui   $t4, 0x8015
/* 0D9E94 80143794 258C7960 */  addiu $t4, $t4, 0x7960
/* 0D9E98 80143798 27AB0010 */  addiu $t3, $sp, 0x10
/* 0D9E9C 8014379C 0160502D */  daddu $t2, $t3, $zero
.L801437A0:
/* 0D9EA0 801437A0 26240001 */  addiu $a0, $s1, 1
/* 0D9EA4 801437A4 0092102A */  slt   $v0, $a0, $s2
/* 0D9EA8 801437A8 50400018 */  beql  $v0, $zero, .L8014380C
/* 0D9EAC 801437AC 26310001 */   addiu $s1, $s1, 1
/* 0D9EB0 801437B0 0140482D */  daddu $t1, $t2, $zero
/* 0D9EB4 801437B4 8D880000 */  lw    $t0, ($t4)
/* 0D9EB8 801437B8 00041080 */  sll   $v0, $a0, 2
/* 0D9EBC 801437BC 004B2821 */  addu  $a1, $v0, $t3
.L801437C0:
/* 0D9EC0 801437C0 8D270000 */  lw    $a3, ($t1)
/* 0D9EC4 801437C4 8CA60000 */  lw    $a2, ($a1)
/* 0D9EC8 801437C8 00071080 */  sll   $v0, $a3, 2
/* 0D9ECC 801437CC 00481021 */  addu  $v0, $v0, $t0
/* 0D9ED0 801437D0 8C430000 */  lw    $v1, ($v0)
/* 0D9ED4 801437D4 00061080 */  sll   $v0, $a2, 2
/* 0D9ED8 801437D8 00481021 */  addu  $v0, $v0, $t0
/* 0D9EDC 801437DC 8C420000 */  lw    $v0, ($v0)
/* 0D9EE0 801437E0 80630044 */  lb    $v1, 0x44($v1)
/* 0D9EE4 801437E4 80420044 */  lb    $v0, 0x44($v0)
/* 0D9EE8 801437E8 0062182A */  slt   $v1, $v1, $v0
/* 0D9EEC 801437EC 10600003 */  beqz  $v1, .L801437FC
/* 0D9EF0 801437F0 24840001 */   addiu $a0, $a0, 1
/* 0D9EF4 801437F4 AD260000 */  sw    $a2, ($t1)
/* 0D9EF8 801437F8 ACA70000 */  sw    $a3, ($a1)
.L801437FC:
/* 0D9EFC 801437FC 0092102A */  slt   $v0, $a0, $s2
/* 0D9F00 80143800 1440FFEF */  bnez  $v0, .L801437C0
/* 0D9F04 80143804 24A50004 */   addiu $a1, $a1, 4
/* 0D9F08 80143808 26310001 */  addiu $s1, $s1, 1
.L8014380C:
/* 0D9F0C 8014380C 2642FFFF */  addiu $v0, $s2, -1
/* 0D9F10 80143810 0222102A */  slt   $v0, $s1, $v0
/* 0D9F14 80143814 1440FFE2 */  bnez  $v0, .L801437A0
/* 0D9F18 80143818 254A0004 */   addiu $t2, $t2, 4
.L8014381C:
/* 0D9F1C 8014381C 3C06ED03 */  lui   $a2, 0xed03
/* 0D9F20 80143820 34C60050 */  ori   $a2, $a2, 0x50
/* 0D9F24 80143824 3C04004D */  lui   $a0, 0x4d
/* 0D9F28 80143828 34840370 */  ori   $a0, $a0, 0x370
/* 0D9F2C 8014382C 3C07D9C0 */  lui   $a3, 0xd9c0
/* 0D9F30 80143830 34E7F9FA */  ori   $a3, $a3, 0xf9fa
/* 0D9F34 80143834 3C09D9FF */  lui   $t1, 0xd9ff
/* 0D9F38 80143838 3529FFFF */  ori   $t1, $t1, 0xffff
/* 0D9F3C 8014383C 3C080022 */  lui   $t0, 0x22
/* 0D9F40 80143840 35080005 */  ori   $t0, $t0, 5
/* 0D9F44 80143844 3C0ADC08 */  lui   $t2, 0xdc08
/* 0D9F48 80143848 354A060A */  ori   $t2, $t2, 0x60a
/* 0D9F4C 8014384C 3C0BDC08 */  lui   $t3, 0xdc08
/* 0D9F50 80143850 356B090A */  ori   $t3, $t3, 0x90a
/* 0D9F54 80143854 3C0CD700 */  lui   $t4, 0xd700
/* 0D9F58 80143858 358C0002 */  ori   $t4, $t4, 2
/* 0D9F5C 8014385C 3C0DE200 */  lui   $t5, 0xe200
/* 0D9F60 80143860 35AD1E01 */  ori   $t5, $t5, 0x1e01
/* 0D9F64 80143864 3C0FE300 */  lui   $t7, 0xe300
/* 0D9F68 80143868 35EF0A11 */  ori   $t7, $t7, 0xa11
/* 0D9F6C 8014386C 3C0E0008 */  lui   $t6, 8
/* 0D9F70 80143870 35CE2CF0 */  ori   $t6, $t6, 0x2cf0
/* 0D9F74 80143874 3C05800A */  lui   $a1, 0x800a
/* 0D9F78 80143878 24A5A66C */  addiu $a1, $a1, -0x5994
/* 0D9F7C 8014387C 8CA20000 */  lw    $v0, ($a1)
/* 0D9F80 80143880 0000882D */  daddu $s1, $zero, $zero
/* 0D9F84 80143884 0040182D */  daddu $v1, $v0, $zero
/* 0D9F88 80143888 24420008 */  addiu $v0, $v0, 8
/* 0D9F8C 8014388C ACA20000 */  sw    $v0, ($a1)
/* 0D9F90 80143890 AC660000 */  sw    $a2, ($v1)
/* 0D9F94 80143894 AC640004 */  sw    $a0, 4($v1)
/* 0D9F98 80143898 24430008 */  addiu $v1, $v0, 8
/* 0D9F9C 8014389C ACA30000 */  sw    $v1, ($a1)
/* 0D9FA0 801438A0 3C03E700 */  lui   $v1, 0xe700
/* 0D9FA4 801438A4 AC430000 */  sw    $v1, ($v0)
/* 0D9FA8 801438A8 24430010 */  addiu $v1, $v0, 0x10
/* 0D9FAC 801438AC AC400004 */  sw    $zero, 4($v0)
/* 0D9FB0 801438B0 ACA30000 */  sw    $v1, ($a1)
/* 0D9FB4 801438B4 24430018 */  addiu $v1, $v0, 0x18
/* 0D9FB8 801438B8 AC470008 */  sw    $a3, 8($v0)
/* 0D9FBC 801438BC AC40000C */  sw    $zero, 0xc($v0)
/* 0D9FC0 801438C0 ACA30000 */  sw    $v1, ($a1)
/* 0D9FC4 801438C4 24430020 */  addiu $v1, $v0, 0x20
/* 0D9FC8 801438C8 AC490010 */  sw    $t1, 0x10($v0)
/* 0D9FCC 801438CC AC480014 */  sw    $t0, 0x14($v0)
/* 0D9FD0 801438D0 ACA30000 */  sw    $v1, ($a1)
/* 0D9FD4 801438D4 3C03DB02 */  lui   $v1, 0xdb02
/* 0D9FD8 801438D8 AC430018 */  sw    $v1, 0x18($v0)
/* 0D9FDC 801438DC 24030018 */  addiu $v1, $zero, 0x18
/* 0D9FE0 801438E0 AC43001C */  sw    $v1, 0x1c($v0)
/* 0D9FE4 801438E4 24430028 */  addiu $v1, $v0, 0x28
/* 0D9FE8 801438E8 3C048015 */  lui   $a0, 0x8015
/* 0D9FEC 801438EC 2484F110 */  addiu $a0, $a0, -0xef0
/* 0D9FF0 801438F0 ACA30000 */  sw    $v1, ($a1)
/* 0D9FF4 801438F4 24430030 */  addiu $v1, $v0, 0x30
/* 0D9FF8 801438F8 AC440024 */  sw    $a0, 0x24($v0)
/* 0D9FFC 801438FC 2484FFF8 */  addiu $a0, $a0, -8
/* 0DA000 80143900 AC4A0020 */  sw    $t2, 0x20($v0)
/* 0DA004 80143904 ACA30000 */  sw    $v1, ($a1)
/* 0DA008 80143908 24430038 */  addiu $v1, $v0, 0x38
/* 0DA00C 8014390C AC4B0028 */  sw    $t3, 0x28($v0)
/* 0DA010 80143910 AC44002C */  sw    $a0, 0x2c($v0)
/* 0DA014 80143914 ACA30000 */  sw    $v1, ($a1)
/* 0DA018 80143918 2403FFFF */  addiu $v1, $zero, -1
/* 0DA01C 8014391C AC430034 */  sw    $v1, 0x34($v0)
/* 0DA020 80143920 24430040 */  addiu $v1, $v0, 0x40
/* 0DA024 80143924 AC4C0030 */  sw    $t4, 0x30($v0)
/* 0DA028 80143928 ACA30000 */  sw    $v1, ($a1)
/* 0DA02C 8014392C 24430048 */  addiu $v1, $v0, 0x48
/* 0DA030 80143930 AC4D0038 */  sw    $t5, 0x38($v0)
/* 0DA034 80143934 AC40003C */  sw    $zero, 0x3c($v0)
/* 0DA038 80143938 ACA30000 */  sw    $v1, ($a1)
/* 0DA03C 8014393C AC4F0040 */  sw    $t7, 0x40($v0)
/* 0DA040 80143940 1A40000E */  blez  $s2, .L8014397C
/* 0DA044 80143944 AC4E0044 */   sw    $t6, 0x44($v0)
/* 0DA048 80143948 27B00010 */  addiu $s0, $sp, 0x10
.L8014394C:
/* 0DA04C 8014394C 8E020000 */  lw    $v0, ($s0)
/* 0DA050 80143950 26100004 */  addiu $s0, $s0, 4
/* 0DA054 80143954 3C038015 */  lui   $v1, 0x8015
/* 0DA058 80143958 8C637960 */  lw    $v1, 0x7960($v1)
/* 0DA05C 8014395C 00021080 */  sll   $v0, $v0, 2
/* 0DA060 80143960 00431021 */  addu  $v0, $v0, $v1
/* 0DA064 80143964 8C440000 */  lw    $a0, ($v0)
/* 0DA068 80143968 0C050AFF */  jal   render_menu_icon
/* 0DA06C 8014396C 26310001 */   addiu $s1, $s1, 1
/* 0DA070 80143970 0232102A */  slt   $v0, $s1, $s2
/* 0DA074 80143974 1440FFF5 */  bnez  $v0, .L8014394C
/* 0DA078 80143978 00000000 */   nop   
.L8014397C:
/* 0DA07C 8014397C 3C03800A */  lui   $v1, 0x800a
/* 0DA080 80143980 8463A634 */  lh    $v1, -0x59cc($v1)
.L80143984:
/* 0DA084 80143984 24020001 */  addiu $v0, $zero, 1
/* 0DA088 80143988 146200A9 */  bne   $v1, $v0, .L80143C30
/* 0DA08C 8014398C 0000902D */   daddu $s2, $zero, $zero
/* 0DA090 80143990 0240882D */  daddu $s1, $s2, $zero
/* 0DA094 80143994 3C091020 */  lui   $t1, 0x1020
/* 0DA098 80143998 3C080001 */  lui   $t0, 1
/* 0DA09C 8014399C 3C074000 */  lui   $a3, 0x4000
/* 0DA0A0 801439A0 3C068015 */  lui   $a2, 0x8015
/* 0DA0A4 801439A4 8CC67960 */  lw    $a2, 0x7960($a2)
/* 0DA0A8 801439A8 27A50010 */  addiu $a1, $sp, 0x10
.L801439AC:
/* 0DA0AC 801439AC 8CC40000 */  lw    $a0, ($a2)
/* 0DA0B0 801439B0 5080001D */  beql  $a0, $zero, .L80143A28
/* 0DA0B4 801439B4 26310001 */   addiu $s1, $s1, 1
/* 0DA0B8 801439B8 8C830000 */  lw    $v1, ($a0)
/* 0DA0BC 801439BC 5060001A */  beql  $v1, $zero, .L80143A28
/* 0DA0C0 801439C0 26310001 */   addiu $s1, $s1, 1
/* 0DA0C4 801439C4 30620002 */  andi  $v0, $v1, 2
/* 0DA0C8 801439C8 54400017 */  bnel  $v0, $zero, .L80143A28
/* 0DA0CC 801439CC 26310001 */   addiu $s1, $s1, 1
/* 0DA0D0 801439D0 00691024 */  and   $v0, $v1, $t1
/* 0DA0D4 801439D4 54400014 */  bnel  $v0, $zero, .L80143A28
/* 0DA0D8 801439D8 26310001 */   addiu $s1, $s1, 1
/* 0DA0DC 801439DC 00681024 */  and   $v0, $v1, $t0
/* 0DA0E0 801439E0 50400011 */  beql  $v0, $zero, .L80143A28
/* 0DA0E4 801439E4 26310001 */   addiu $s1, $s1, 1
/* 0DA0E8 801439E8 00671024 */  and   $v0, $v1, $a3
/* 0DA0EC 801439EC 5040000E */  beql  $v0, $zero, .L80143A28
/* 0DA0F0 801439F0 26310001 */   addiu $s1, $s1, 1
/* 0DA0F4 801439F4 30620040 */  andi  $v0, $v1, 0x40
/* 0DA0F8 801439F8 5440000B */  bnel  $v0, $zero, .L80143A28
/* 0DA0FC 801439FC 26310001 */   addiu $s1, $s1, 1
/* 0DA100 80143A00 80820045 */  lb    $v0, 0x45($a0)
/* 0DA104 80143A04 04420008 */  bltzl $v0, .L80143A28
/* 0DA108 80143A08 26310001 */   addiu $s1, $s1, 1
/* 0DA10C 80143A0C 30620080 */  andi  $v0, $v1, 0x80
/* 0DA110 80143A10 54400005 */  bnel  $v0, $zero, .L80143A28
/* 0DA114 80143A14 26310001 */   addiu $s1, $s1, 1
/* 0DA118 80143A18 ACB10000 */  sw    $s1, ($a1)
/* 0DA11C 80143A1C 24A50004 */  addiu $a1, $a1, 4
/* 0DA120 80143A20 26520001 */  addiu $s2, $s2, 1
/* 0DA124 80143A24 26310001 */  addiu $s1, $s1, 1
.L80143A28:
/* 0DA128 80143A28 2A220140 */  slti  $v0, $s1, 0x140
/* 0DA12C 80143A2C 1440FFDF */  bnez  $v0, .L801439AC
/* 0DA130 80143A30 24C60004 */   addiu $a2, $a2, 4
/* 0DA134 80143A34 1240007E */  beqz  $s2, .L80143C30
/* 0DA138 80143A38 2642FFFF */   addiu $v0, $s2, -1
/* 0DA13C 80143A3C 18400024 */  blez  $v0, .L80143AD0
/* 0DA140 80143A40 0000882D */   daddu $s1, $zero, $zero
/* 0DA144 80143A44 3C0C8015 */  lui   $t4, 0x8015
/* 0DA148 80143A48 258C7960 */  addiu $t4, $t4, 0x7960
/* 0DA14C 80143A4C 27AB0010 */  addiu $t3, $sp, 0x10
/* 0DA150 80143A50 0160502D */  daddu $t2, $t3, $zero
.L80143A54:
/* 0DA154 80143A54 26240001 */  addiu $a0, $s1, 1
/* 0DA158 80143A58 0092102A */  slt   $v0, $a0, $s2
/* 0DA15C 80143A5C 50400018 */  beql  $v0, $zero, .L80143AC0
/* 0DA160 80143A60 26310001 */   addiu $s1, $s1, 1
/* 0DA164 80143A64 0140482D */  daddu $t1, $t2, $zero
/* 0DA168 80143A68 8D880000 */  lw    $t0, ($t4)
/* 0DA16C 80143A6C 00041080 */  sll   $v0, $a0, 2
/* 0DA170 80143A70 004B2821 */  addu  $a1, $v0, $t3
.L80143A74:
/* 0DA174 80143A74 8D270000 */  lw    $a3, ($t1)
/* 0DA178 80143A78 8CA60000 */  lw    $a2, ($a1)
/* 0DA17C 80143A7C 00071080 */  sll   $v0, $a3, 2
/* 0DA180 80143A80 00481021 */  addu  $v0, $v0, $t0
/* 0DA184 80143A84 8C430000 */  lw    $v1, ($v0)
/* 0DA188 80143A88 00061080 */  sll   $v0, $a2, 2
/* 0DA18C 80143A8C 00481021 */  addu  $v0, $v0, $t0
/* 0DA190 80143A90 8C420000 */  lw    $v0, ($v0)
/* 0DA194 80143A94 80630044 */  lb    $v1, 0x44($v1)
/* 0DA198 80143A98 80420044 */  lb    $v0, 0x44($v0)
/* 0DA19C 80143A9C 0062182A */  slt   $v1, $v1, $v0
/* 0DA1A0 80143AA0 10600003 */  beqz  $v1, .L80143AB0
/* 0DA1A4 80143AA4 24840001 */   addiu $a0, $a0, 1
/* 0DA1A8 80143AA8 AD260000 */  sw    $a2, ($t1)
/* 0DA1AC 80143AAC ACA70000 */  sw    $a3, ($a1)
.L80143AB0:
/* 0DA1B0 80143AB0 0092102A */  slt   $v0, $a0, $s2
/* 0DA1B4 80143AB4 1440FFEF */  bnez  $v0, .L80143A74
/* 0DA1B8 80143AB8 24A50004 */   addiu $a1, $a1, 4
/* 0DA1BC 80143ABC 26310001 */  addiu $s1, $s1, 1
.L80143AC0:
/* 0DA1C0 80143AC0 2642FFFF */  addiu $v0, $s2, -1
/* 0DA1C4 80143AC4 0222102A */  slt   $v0, $s1, $v0
/* 0DA1C8 80143AC8 1440FFE2 */  bnez  $v0, .L80143A54
/* 0DA1CC 80143ACC 254A0004 */   addiu $t2, $t2, 4
.L80143AD0:
/* 0DA1D0 80143AD0 3C06ED03 */  lui   $a2, 0xed03
/* 0DA1D4 80143AD4 34C60050 */  ori   $a2, $a2, 0x50
/* 0DA1D8 80143AD8 3C04004D */  lui   $a0, 0x4d
/* 0DA1DC 80143ADC 34840370 */  ori   $a0, $a0, 0x370
/* 0DA1E0 80143AE0 3C07D9C0 */  lui   $a3, 0xd9c0
/* 0DA1E4 80143AE4 34E7F9FA */  ori   $a3, $a3, 0xf9fa
/* 0DA1E8 80143AE8 3C09D9FF */  lui   $t1, 0xd9ff
/* 0DA1EC 80143AEC 3529FFFF */  ori   $t1, $t1, 0xffff
/* 0DA1F0 80143AF0 3C080022 */  lui   $t0, 0x22
/* 0DA1F4 80143AF4 35080005 */  ori   $t0, $t0, 5
/* 0DA1F8 80143AF8 3C0ADC08 */  lui   $t2, 0xdc08
/* 0DA1FC 80143AFC 354A060A */  ori   $t2, $t2, 0x60a
/* 0DA200 80143B00 3C0BDC08 */  lui   $t3, 0xdc08
/* 0DA204 80143B04 356B090A */  ori   $t3, $t3, 0x90a
/* 0DA208 80143B08 3C0CD700 */  lui   $t4, 0xd700
/* 0DA20C 80143B0C 358C0002 */  ori   $t4, $t4, 2
/* 0DA210 80143B10 3C0DE200 */  lui   $t5, 0xe200
/* 0DA214 80143B14 35AD1E01 */  ori   $t5, $t5, 0x1e01
/* 0DA218 80143B18 3C0FE300 */  lui   $t7, 0xe300
/* 0DA21C 80143B1C 35EF0A11 */  ori   $t7, $t7, 0xa11
/* 0DA220 80143B20 3C0E0008 */  lui   $t6, 8
/* 0DA224 80143B24 35CE2CF0 */  ori   $t6, $t6, 0x2cf0
/* 0DA228 80143B28 3C05800A */  lui   $a1, 0x800a
/* 0DA22C 80143B2C 24A5A66C */  addiu $a1, $a1, -0x5994
/* 0DA230 80143B30 8CA20000 */  lw    $v0, ($a1)
/* 0DA234 80143B34 0000882D */  daddu $s1, $zero, $zero
/* 0DA238 80143B38 0040182D */  daddu $v1, $v0, $zero
/* 0DA23C 80143B3C 24420008 */  addiu $v0, $v0, 8
/* 0DA240 80143B40 ACA20000 */  sw    $v0, ($a1)
/* 0DA244 80143B44 AC660000 */  sw    $a2, ($v1)
/* 0DA248 80143B48 AC640004 */  sw    $a0, 4($v1)
/* 0DA24C 80143B4C 24430008 */  addiu $v1, $v0, 8
/* 0DA250 80143B50 ACA30000 */  sw    $v1, ($a1)
/* 0DA254 80143B54 3C03E700 */  lui   $v1, 0xe700
/* 0DA258 80143B58 AC430000 */  sw    $v1, ($v0)
/* 0DA25C 80143B5C 24430010 */  addiu $v1, $v0, 0x10
/* 0DA260 80143B60 AC400004 */  sw    $zero, 4($v0)
/* 0DA264 80143B64 ACA30000 */  sw    $v1, ($a1)
/* 0DA268 80143B68 24430018 */  addiu $v1, $v0, 0x18
/* 0DA26C 80143B6C AC470008 */  sw    $a3, 8($v0)
/* 0DA270 80143B70 AC40000C */  sw    $zero, 0xc($v0)
/* 0DA274 80143B74 ACA30000 */  sw    $v1, ($a1)
/* 0DA278 80143B78 24430020 */  addiu $v1, $v0, 0x20
/* 0DA27C 80143B7C AC490010 */  sw    $t1, 0x10($v0)
/* 0DA280 80143B80 AC480014 */  sw    $t0, 0x14($v0)
/* 0DA284 80143B84 ACA30000 */  sw    $v1, ($a1)
/* 0DA288 80143B88 3C03DB02 */  lui   $v1, 0xdb02
/* 0DA28C 80143B8C AC430018 */  sw    $v1, 0x18($v0)
/* 0DA290 80143B90 24030018 */  addiu $v1, $zero, 0x18
/* 0DA294 80143B94 AC43001C */  sw    $v1, 0x1c($v0)
/* 0DA298 80143B98 24430028 */  addiu $v1, $v0, 0x28
/* 0DA29C 80143B9C 3C048015 */  lui   $a0, 0x8015
/* 0DA2A0 80143BA0 2484F110 */  addiu $a0, $a0, -0xef0
/* 0DA2A4 80143BA4 ACA30000 */  sw    $v1, ($a1)
/* 0DA2A8 80143BA8 24430030 */  addiu $v1, $v0, 0x30
/* 0DA2AC 80143BAC AC440024 */  sw    $a0, 0x24($v0)
/* 0DA2B0 80143BB0 2484FFF8 */  addiu $a0, $a0, -8
/* 0DA2B4 80143BB4 AC4A0020 */  sw    $t2, 0x20($v0)
/* 0DA2B8 80143BB8 ACA30000 */  sw    $v1, ($a1)
/* 0DA2BC 80143BBC 24430038 */  addiu $v1, $v0, 0x38
/* 0DA2C0 80143BC0 AC4B0028 */  sw    $t3, 0x28($v0)
/* 0DA2C4 80143BC4 AC44002C */  sw    $a0, 0x2c($v0)
/* 0DA2C8 80143BC8 ACA30000 */  sw    $v1, ($a1)
/* 0DA2CC 80143BCC 2403FFFF */  addiu $v1, $zero, -1
/* 0DA2D0 80143BD0 AC430034 */  sw    $v1, 0x34($v0)
/* 0DA2D4 80143BD4 24430040 */  addiu $v1, $v0, 0x40
/* 0DA2D8 80143BD8 AC4C0030 */  sw    $t4, 0x30($v0)
/* 0DA2DC 80143BDC ACA30000 */  sw    $v1, ($a1)
/* 0DA2E0 80143BE0 24430048 */  addiu $v1, $v0, 0x48
/* 0DA2E4 80143BE4 AC4D0038 */  sw    $t5, 0x38($v0)
/* 0DA2E8 80143BE8 AC40003C */  sw    $zero, 0x3c($v0)
/* 0DA2EC 80143BEC ACA30000 */  sw    $v1, ($a1)
/* 0DA2F0 80143BF0 AC4F0040 */  sw    $t7, 0x40($v0)
/* 0DA2F4 80143BF4 1A40000E */  blez  $s2, .L80143C30
/* 0DA2F8 80143BF8 AC4E0044 */   sw    $t6, 0x44($v0)
/* 0DA2FC 80143BFC 27B00010 */  addiu $s0, $sp, 0x10
.L80143C00:
/* 0DA300 80143C00 8E020000 */  lw    $v0, ($s0)
/* 0DA304 80143C04 26100004 */  addiu $s0, $s0, 4
/* 0DA308 80143C08 3C038015 */  lui   $v1, 0x8015
/* 0DA30C 80143C0C 8C637960 */  lw    $v1, 0x7960($v1)
/* 0DA310 80143C10 00021080 */  sll   $v0, $v0, 2
/* 0DA314 80143C14 00431021 */  addu  $v0, $v0, $v1
/* 0DA318 80143C18 8C440000 */  lw    $a0, ($v0)
/* 0DA31C 80143C1C 0C050AFF */  jal   render_menu_icon
/* 0DA320 80143C20 26310001 */   addiu $s1, $s1, 1
/* 0DA324 80143C24 0232102A */  slt   $v0, $s1, $s2
/* 0DA328 80143C28 1440FFF5 */  bnez  $v0, .L80143C00
/* 0DA32C 80143C2C 00000000 */   nop   
.L80143C30:
/* 0DA330 80143C30 8FBF051C */  lw    $ra, 0x51c($sp)
/* 0DA334 80143C34 8FB20518 */  lw    $s2, 0x518($sp)
/* 0DA338 80143C38 8FB10514 */  lw    $s1, 0x514($sp)
/* 0DA33C 80143C3C 8FB00510 */  lw    $s0, 0x510($sp)
/* 0DA340 80143C40 03E00008 */  jr    $ra
/* 0DA344 80143C44 27BD0520 */   addiu $sp, $sp, 0x520
