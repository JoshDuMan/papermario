.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240854_9B1FE4
/* 9B1FE4 80240854 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 9B1FE8 80240858 AFB10014 */  sw        $s1, 0x14($sp)
/* 9B1FEC 8024085C 0080882D */  daddu     $s1, $a0, $zero
/* 9B1FF0 80240860 AFBF001C */  sw        $ra, 0x1c($sp)
/* 9B1FF4 80240864 AFB20018 */  sw        $s2, 0x18($sp)
/* 9B1FF8 80240868 AFB00010 */  sw        $s0, 0x10($sp)
/* 9B1FFC 8024086C 8E30000C */  lw        $s0, 0xc($s1)
/* 9B2000 80240870 8E050000 */  lw        $a1, ($s0)
/* 9B2004 80240874 0C0B210B */  jal       get_float_variable
/* 9B2008 80240878 26100004 */   addiu    $s0, $s0, 4
/* 9B200C 8024087C 8E050000 */  lw        $a1, ($s0)
/* 9B2010 80240880 26100004 */  addiu     $s0, $s0, 4
/* 9B2014 80240884 4600018D */  trunc.w.s $f6, $f0
/* 9B2018 80240888 44123000 */  mfc1      $s2, $f6
/* 9B201C 8024088C 0C0B210B */  jal       get_float_variable
/* 9B2020 80240890 0220202D */   daddu    $a0, $s1, $zero
/* 9B2024 80240894 8E050000 */  lw        $a1, ($s0)
/* 9B2028 80240898 4600018D */  trunc.w.s $f6, $f0
/* 9B202C 8024089C 44103000 */  mfc1      $s0, $f6
/* 9B2030 802408A0 0C0B210B */  jal       get_float_variable
/* 9B2034 802408A4 0220202D */   daddu    $a0, $s1, $zero
/* 9B2038 802408A8 3C028024 */  lui       $v0, 0x8024
/* 9B203C 802408AC 244251F0 */  addiu     $v0, $v0, 0x51f0
/* 9B2040 802408B0 C442003C */  lwc1      $f2, 0x3c($v0)
/* 9B2044 802408B4 3C018024 */  lui       $at, 0x8024
/* 9B2048 802408B8 D42451C8 */  ldc1      $f4, 0x51c8($at)
/* 9B204C 802408BC 460010A1 */  cvt.d.s   $f2, $f2
/* 9B2050 802408C0 46241082 */  mul.d     $f2, $f2, $f4
/* 9B2054 802408C4 00000000 */  nop       
/* 9B2058 802408C8 3C013FE0 */  lui       $at, 0x3fe0
/* 9B205C 802408CC 44812800 */  mtc1      $at, $f5
/* 9B2060 802408D0 44802000 */  mtc1      $zero, $f4
/* 9B2064 802408D4 00000000 */  nop       
/* 9B2068 802408D8 46241082 */  mul.d     $f2, $f2, $f4
/* 9B206C 802408DC 00000000 */  nop       
/* 9B2070 802408E0 4600018D */  trunc.w.s $f6, $f0
/* 9B2074 802408E4 44033000 */  mfc1      $v1, $f6
/* 9B2078 802408E8 44900000 */  mtc1      $s0, $f0
/* 9B207C 802408EC 00000000 */  nop       
/* 9B2080 802408F0 46800021 */  cvt.d.w   $f0, $f0
/* 9B2084 802408F4 44922000 */  mtc1      $s2, $f4
/* 9B2088 802408F8 00000000 */  nop       
/* 9B208C 802408FC 46802120 */  cvt.s.w   $f4, $f4
/* 9B2090 80240900 E4440014 */  swc1      $f4, 0x14($v0)
/* 9B2094 80240904 46220000 */  add.d     $f0, $f0, $f2
/* 9B2098 80240908 44831000 */  mtc1      $v1, $f2
/* 9B209C 8024090C 00000000 */  nop       
/* 9B20A0 80240910 468010A0 */  cvt.s.w   $f2, $f2
/* 9B20A4 80240914 E442001C */  swc1      $f2, 0x1c($v0)
/* 9B20A8 80240918 46200020 */  cvt.s.d   $f0, $f0
/* 9B20AC 8024091C E4400018 */  swc1      $f0, 0x18($v0)
/* 9B20B0 80240920 8FBF001C */  lw        $ra, 0x1c($sp)
/* 9B20B4 80240924 8FB20018 */  lw        $s2, 0x18($sp)
/* 9B20B8 80240928 8FB10014 */  lw        $s1, 0x14($sp)
/* 9B20BC 8024092C 8FB00010 */  lw        $s0, 0x10($sp)
/* 9B20C0 80240930 24020002 */  addiu     $v0, $zero, 2
/* 9B20C4 80240934 03E00008 */  jr        $ra
/* 9B20C8 80240938 27BD0020 */   addiu    $sp, $sp, 0x20
