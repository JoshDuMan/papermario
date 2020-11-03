.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802417A4_9B8124
/* 9B8124 802417A4 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 9B8128 802417A8 AFB3001C */  sw        $s3, 0x1c($sp)
/* 9B812C 802417AC 0080982D */  daddu     $s3, $a0, $zero
/* 9B8130 802417B0 AFBF0020 */  sw        $ra, 0x20($sp)
/* 9B8134 802417B4 AFB20018 */  sw        $s2, 0x18($sp)
/* 9B8138 802417B8 AFB10014 */  sw        $s1, 0x14($sp)
/* 9B813C 802417BC AFB00010 */  sw        $s0, 0x10($sp)
/* 9B8140 802417C0 8E720148 */  lw        $s2, 0x148($s3)
/* 9B8144 802417C4 86440008 */  lh        $a0, 8($s2)
/* 9B8148 802417C8 0C00EABB */  jal       get_npc_unsafe
/* 9B814C 802417CC 00A0802D */   daddu    $s0, $a1, $zero
/* 9B8150 802417D0 0040882D */  daddu     $s1, $v0, $zero
/* 9B8154 802417D4 C6420080 */  lwc1      $f2, 0x80($s2)
/* 9B8158 802417D8 468010A0 */  cvt.s.w   $f2, $f2
/* 9B815C 802417DC 460010A1 */  cvt.d.s   $f2, $f2
/* 9B8160 802417E0 C6400084 */  lwc1      $f0, 0x84($s2)
/* 9B8164 802417E4 46800020 */  cvt.s.w   $f0, $f0
/* 9B8168 802417E8 46000021 */  cvt.d.s   $f0, $f0
/* 9B816C 802417EC 3C014059 */  lui       $at, 0x4059
/* 9B8170 802417F0 44812800 */  mtc1      $at, $f5
/* 9B8174 802417F4 44802000 */  mtc1      $zero, $f4
/* 9B8178 802417F8 8E4200CC */  lw        $v0, 0xcc($s2)
/* 9B817C 802417FC C62C0038 */  lwc1      $f12, 0x38($s1)
/* 9B8180 80241800 C62E0040 */  lwc1      $f14, 0x40($s1)
/* 9B8184 80241804 46241083 */  div.d     $f2, $f2, $f4
/* 9B8188 80241808 462010A0 */  cvt.s.d   $f2, $f2
/* 9B818C 8024180C 46240003 */  div.d     $f0, $f0, $f4
/* 9B8190 80241810 8C420020 */  lw        $v0, 0x20($v0)
/* 9B8194 80241814 46200020 */  cvt.s.d   $f0, $f0
/* 9B8198 80241818 E622001C */  swc1      $f2, 0x1c($s1)
/* 9B819C 8024181C E6200014 */  swc1      $f0, 0x14($s1)
/* 9B81A0 80241820 AE220028 */  sw        $v0, 0x28($s1)
/* 9B81A4 80241824 C6000018 */  lwc1      $f0, 0x18($s0)
/* 9B81A8 80241828 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* 9B81AC 8024182C 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* 9B81B0 80241830 E6200018 */  swc1      $f0, 0x18($s1)
/* 9B81B4 80241834 8C460028 */  lw        $a2, 0x28($v0)
/* 9B81B8 80241838 0C00A720 */  jal       atan2
/* 9B81BC 8024183C 8C470030 */   lw       $a3, 0x30($v0)
/* 9B81C0 80241840 E620000C */  swc1      $f0, 0xc($s1)
/* 9B81C4 80241844 8E420018 */  lw        $v0, 0x18($s2)
/* 9B81C8 80241848 AE400074 */  sw        $zero, 0x74($s2)
/* 9B81CC 8024184C 9442002A */  lhu       $v0, 0x2a($v0)
/* 9B81D0 80241850 30420002 */  andi      $v0, $v0, 2
/* 9B81D4 80241854 10400005 */  beqz      $v0, .L8024186C
/* 9B81D8 80241858 24020003 */   addiu    $v0, $zero, 3
/* 9B81DC 8024185C A622008E */  sh        $v0, 0x8e($s1)
/* 9B81E0 80241860 2402000D */  addiu     $v0, $zero, 0xd
/* 9B81E4 80241864 0809062F */  j         .L802418BC
/* 9B81E8 80241868 AE620070 */   sw       $v0, 0x70($s3)
.L8024186C:
/* 9B81EC 8024186C 24030001 */  addiu     $v1, $zero, 1
/* 9B81F0 80241870 2402000E */  addiu     $v0, $zero, 0xe
/* 9B81F4 80241874 A623008E */  sh        $v1, 0x8e($s1)
/* 9B81F8 80241878 AE620070 */  sw        $v0, 0x70($s3)
/* 9B81FC 8024187C C6200038 */  lwc1      $f0, 0x38($s1)
/* 9B8200 80241880 4600018D */  trunc.w.s $f6, $f0
/* 9B8204 80241884 44023000 */  mfc1      $v0, $f6
/* 9B8208 80241888 00000000 */  nop       
/* 9B820C 8024188C A6420010 */  sh        $v0, 0x10($s2)
/* 9B8210 80241890 C620003C */  lwc1      $f0, 0x3c($s1)
/* 9B8214 80241894 4600018D */  trunc.w.s $f6, $f0
/* 9B8218 80241898 44023000 */  mfc1      $v0, $f6
/* 9B821C 8024189C 00000000 */  nop       
/* 9B8220 802418A0 A6420012 */  sh        $v0, 0x12($s2)
/* 9B8224 802418A4 C6200040 */  lwc1      $f0, 0x40($s1)
/* 9B8228 802418A8 A2430007 */  sb        $v1, 7($s2)
/* 9B822C 802418AC 4600018D */  trunc.w.s $f6, $f0
/* 9B8230 802418B0 44023000 */  mfc1      $v0, $f6
/* 9B8234 802418B4 00000000 */  nop       
/* 9B8238 802418B8 A6420014 */  sh        $v0, 0x14($s2)
.L802418BC:
/* 9B823C 802418BC 8FBF0020 */  lw        $ra, 0x20($sp)
/* 9B8240 802418C0 8FB3001C */  lw        $s3, 0x1c($sp)
/* 9B8244 802418C4 8FB20018 */  lw        $s2, 0x18($sp)
/* 9B8248 802418C8 8FB10014 */  lw        $s1, 0x14($sp)
/* 9B824C 802418CC 8FB00010 */  lw        $s0, 0x10($sp)
/* 9B8250 802418D0 03E00008 */  jr        $ra
/* 9B8254 802418D4 27BD0028 */   addiu    $sp, $sp, 0x28
