.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241210_91F780
/* 91F780 80241210 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 91F784 80241214 AFB10014 */  sw        $s1, 0x14($sp)
/* 91F788 80241218 0080882D */  daddu     $s1, $a0, $zero
/* 91F78C 8024121C AFBF0024 */  sw        $ra, 0x24($sp)
/* 91F790 80241220 AFB40020 */  sw        $s4, 0x20($sp)
/* 91F794 80241224 AFB3001C */  sw        $s3, 0x1c($sp)
/* 91F798 80241228 AFB20018 */  sw        $s2, 0x18($sp)
/* 91F79C 8024122C AFB00010 */  sw        $s0, 0x10($sp)
/* 91F7A0 80241230 F7BC0048 */  sdc1      $f28, 0x48($sp)
/* 91F7A4 80241234 F7BA0040 */  sdc1      $f26, 0x40($sp)
/* 91F7A8 80241238 F7B80038 */  sdc1      $f24, 0x38($sp)
/* 91F7AC 8024123C F7B60030 */  sdc1      $f22, 0x30($sp)
/* 91F7B0 80241240 F7B40028 */  sdc1      $f20, 0x28($sp)
/* 91F7B4 80241244 8E30000C */  lw        $s0, 0xc($s1)
/* 91F7B8 80241248 8E130000 */  lw        $s3, ($s0)
/* 91F7BC 8024124C 26100004 */  addiu     $s0, $s0, 4
/* 91F7C0 80241250 0C0B1EAF */  jal       get_variable
/* 91F7C4 80241254 0260282D */   daddu    $a1, $s3, $zero
/* 91F7C8 80241258 4482E000 */  mtc1      $v0, $f28
/* 91F7CC 8024125C 00000000 */  nop       
/* 91F7D0 80241260 4680E720 */  cvt.s.w   $f28, $f28
/* 91F7D4 80241264 8E140000 */  lw        $s4, ($s0)
/* 91F7D8 80241268 26100004 */  addiu     $s0, $s0, 4
/* 91F7DC 8024126C 0220202D */  daddu     $a0, $s1, $zero
/* 91F7E0 80241270 0C0B1EAF */  jal       get_variable
/* 91F7E4 80241274 0280282D */   daddu    $a1, $s4, $zero
/* 91F7E8 80241278 4482D000 */  mtc1      $v0, $f26
/* 91F7EC 8024127C 00000000 */  nop       
/* 91F7F0 80241280 4680D6A0 */  cvt.s.w   $f26, $f26
/* 91F7F4 80241284 8E100000 */  lw        $s0, ($s0)
/* 91F7F8 80241288 0220202D */  daddu     $a0, $s1, $zero
/* 91F7FC 8024128C 0C0B1EAF */  jal       get_variable
/* 91F800 80241290 0200282D */   daddu    $a1, $s0, $zero
/* 91F804 80241294 4482C000 */  mtc1      $v0, $f24
/* 91F808 80241298 00000000 */  nop       
/* 91F80C 8024129C 4680C620 */  cvt.s.w   $f24, $f24
/* 91F810 802412A0 3C128011 */  lui       $s2, %hi(gPlayerStatus)
/* 91F814 802412A4 2652EFC8 */  addiu     $s2, $s2, %lo(gPlayerStatus)
/* 91F818 802412A8 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* 91F81C 802412AC 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* 91F820 802412B0 C64200A8 */  lwc1      $f2, 0xa8($s2)
/* 91F824 802412B4 44800000 */  mtc1      $zero, $f0
/* 91F828 802412B8 00031080 */  sll       $v0, $v1, 2
/* 91F82C 802412BC 00431021 */  addu      $v0, $v0, $v1
/* 91F830 802412C0 00021080 */  sll       $v0, $v0, 2
/* 91F834 802412C4 00431023 */  subu      $v0, $v0, $v1
/* 91F838 802412C8 000218C0 */  sll       $v1, $v0, 3
/* 91F83C 802412CC 00431021 */  addu      $v0, $v0, $v1
/* 91F840 802412D0 000210C0 */  sll       $v0, $v0, 3
/* 91F844 802412D4 46001032 */  c.eq.s    $f2, $f0
/* 91F848 802412D8 3C01800B */  lui       $at, 0x800b
/* 91F84C 802412DC 00220821 */  addu      $at, $at, $v0
/* 91F850 802412E0 C4361DEC */  lwc1      $f22, 0x1dec($at)
/* 91F854 802412E4 45000005 */  bc1f      .L802412FC
/* 91F858 802412E8 00000000 */   nop      
/* 91F85C 802412EC 3C0142C8 */  lui       $at, 0x42c8
/* 91F860 802412F0 44810000 */  mtc1      $at, $f0
/* 91F864 802412F4 080904C3 */  j         .L8024130C
/* 91F868 802412F8 4600B581 */   sub.s    $f22, $f22, $f0
.L802412FC:
/* 91F86C 802412FC 3C0142C8 */  lui       $at, 0x42c8
/* 91F870 80241300 44810000 */  mtc1      $at, $f0
/* 91F874 80241304 00000000 */  nop       
/* 91F878 80241308 4600B580 */  add.s     $f22, $f22, $f0
.L8024130C:
/* 91F87C 8024130C 0C00A6C9 */  jal       clamp_angle
/* 91F880 80241310 4600B306 */   mov.s    $f12, $f22
/* 91F884 80241314 46000586 */  mov.s     $f22, $f0
/* 91F888 80241318 3C014170 */  lui       $at, 0x4170
/* 91F88C 8024131C 4481A000 */  mtc1      $at, $f20
/* 91F890 80241320 0C00A8BB */  jal       sin_deg
/* 91F894 80241324 4600B306 */   mov.s    $f12, $f22
/* 91F898 80241328 46140002 */  mul.s     $f0, $f0, $f20
/* 91F89C 8024132C 00000000 */  nop       
/* 91F8A0 80241330 864200B0 */  lh        $v0, 0xb0($s2)
/* 91F8A4 80241334 3C013F00 */  lui       $at, 0x3f00
/* 91F8A8 80241338 44812000 */  mtc1      $at, $f4
/* 91F8AC 8024133C 44821000 */  mtc1      $v0, $f2
/* 91F8B0 80241340 00000000 */  nop       
/* 91F8B4 80241344 468010A0 */  cvt.s.w   $f2, $f2
/* 91F8B8 80241348 46041082 */  mul.s     $f2, $f2, $f4
/* 91F8BC 8024134C 00000000 */  nop       
/* 91F8C0 80241350 4600E700 */  add.s     $f28, $f28, $f0
/* 91F8C4 80241354 4602D680 */  add.s     $f26, $f26, $f2
/* 91F8C8 80241358 0C00A8D4 */  jal       cos_deg
/* 91F8CC 8024135C 4600B306 */   mov.s    $f12, $f22
/* 91F8D0 80241360 46140002 */  mul.s     $f0, $f0, $f20
/* 91F8D4 80241364 00000000 */  nop       
/* 91F8D8 80241368 0220202D */  daddu     $a0, $s1, $zero
/* 91F8DC 8024136C 0260282D */  daddu     $a1, $s3, $zero
/* 91F8E0 80241370 4600E18D */  trunc.w.s $f6, $f28
/* 91F8E4 80241374 44063000 */  mfc1      $a2, $f6
/* 91F8E8 80241378 0C0B2026 */  jal       set_variable
/* 91F8EC 8024137C 4600C601 */   sub.s    $f24, $f24, $f0
/* 91F8F0 80241380 0220202D */  daddu     $a0, $s1, $zero
/* 91F8F4 80241384 4600D18D */  trunc.w.s $f6, $f26
/* 91F8F8 80241388 44063000 */  mfc1      $a2, $f6
/* 91F8FC 8024138C 0C0B2026 */  jal       set_variable
/* 91F900 80241390 0280282D */   daddu    $a1, $s4, $zero
/* 91F904 80241394 0220202D */  daddu     $a0, $s1, $zero
/* 91F908 80241398 4600C18D */  trunc.w.s $f6, $f24
/* 91F90C 8024139C 44063000 */  mfc1      $a2, $f6
/* 91F910 802413A0 0C0B2026 */  jal       set_variable
/* 91F914 802413A4 0200282D */   daddu    $a1, $s0, $zero
/* 91F918 802413A8 8FBF0024 */  lw        $ra, 0x24($sp)
/* 91F91C 802413AC 8FB40020 */  lw        $s4, 0x20($sp)
/* 91F920 802413B0 8FB3001C */  lw        $s3, 0x1c($sp)
/* 91F924 802413B4 8FB20018 */  lw        $s2, 0x18($sp)
/* 91F928 802413B8 8FB10014 */  lw        $s1, 0x14($sp)
/* 91F92C 802413BC 8FB00010 */  lw        $s0, 0x10($sp)
/* 91F930 802413C0 D7BC0048 */  ldc1      $f28, 0x48($sp)
/* 91F934 802413C4 D7BA0040 */  ldc1      $f26, 0x40($sp)
/* 91F938 802413C8 D7B80038 */  ldc1      $f24, 0x38($sp)
/* 91F93C 802413CC D7B60030 */  ldc1      $f22, 0x30($sp)
/* 91F940 802413D0 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 91F944 802413D4 24020002 */  addiu     $v0, $zero, 2
/* 91F948 802413D8 03E00008 */  jr        $ra
/* 91F94C 802413DC 27BD0050 */   addiu    $sp, $sp, 0x50