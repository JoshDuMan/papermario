.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802413F0_87AFD0
/* 87AFD0 802413F0 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 87AFD4 802413F4 AFB3002C */  sw        $s3, 0x2c($sp)
/* 87AFD8 802413F8 0080982D */  daddu     $s3, $a0, $zero
/* 87AFDC 802413FC AFBF0030 */  sw        $ra, 0x30($sp)
/* 87AFE0 80241400 AFB20028 */  sw        $s2, 0x28($sp)
/* 87AFE4 80241404 AFB10024 */  sw        $s1, 0x24($sp)
/* 87AFE8 80241408 AFB00020 */  sw        $s0, 0x20($sp)
/* 87AFEC 8024140C 8E710148 */  lw        $s1, 0x148($s3)
/* 87AFF0 80241410 86240008 */  lh        $a0, 8($s1)
/* 87AFF4 80241414 0C00EABB */  jal       get_npc_unsafe
/* 87AFF8 80241418 00A0902D */   daddu    $s2, $a1, $zero
/* 87AFFC 8024141C 8E440004 */  lw        $a0, 4($s2)
/* 87B000 80241420 0040802D */  daddu     $s0, $v0, $zero
/* 87B004 80241424 00041FC2 */  srl       $v1, $a0, 0x1f
/* 87B008 80241428 00832021 */  addu      $a0, $a0, $v1
/* 87B00C 8024142C 00042043 */  sra       $a0, $a0, 1
/* 87B010 80241430 0C00A67F */  jal       rand_int
/* 87B014 80241434 24840001 */   addiu    $a0, $a0, 1
/* 87B018 80241438 8E430004 */  lw        $v1, 4($s2)
/* 87B01C 8024143C 000327C2 */  srl       $a0, $v1, 0x1f
/* 87B020 80241440 00641821 */  addu      $v1, $v1, $a0
/* 87B024 80241444 00031843 */  sra       $v1, $v1, 1
/* 87B028 80241448 00621821 */  addu      $v1, $v1, $v0
/* 87B02C 8024144C A603008E */  sh        $v1, 0x8e($s0)
/* 87B030 80241450 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 87B034 80241454 C6000040 */  lwc1      $f0, 0x40($s0)
/* 87B038 80241458 C4640000 */  lwc1      $f4, ($v1)
/* 87B03C 8024145C 46802120 */  cvt.s.w   $f4, $f4
/* 87B040 80241460 C4620008 */  lwc1      $f2, 8($v1)
/* 87B044 80241464 468010A0 */  cvt.s.w   $f2, $f2
/* 87B048 80241468 E7A00010 */  swc1      $f0, 0x10($sp)
/* 87B04C 8024146C 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 87B050 80241470 44061000 */  mfc1      $a2, $f2
/* 87B054 80241474 C440000C */  lwc1      $f0, 0xc($v0)
/* 87B058 80241478 46800020 */  cvt.s.w   $f0, $f0
/* 87B05C 8024147C E7A00014 */  swc1      $f0, 0x14($sp)
/* 87B060 80241480 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 87B064 80241484 44052000 */  mfc1      $a1, $f4
/* 87B068 80241488 C4400010 */  lwc1      $f0, 0x10($v0)
/* 87B06C 8024148C 46800020 */  cvt.s.w   $f0, $f0
/* 87B070 80241490 E7A00018 */  swc1      $f0, 0x18($sp)
/* 87B074 80241494 8C640018 */  lw        $a0, 0x18($v1)
/* 87B078 80241498 0C0123F5 */  jal       is_point_within_region
/* 87B07C 8024149C 8E070038 */   lw       $a3, 0x38($s0)
/* 87B080 802414A0 1040000E */  beqz      $v0, .L802414DC
/* 87B084 802414A4 00000000 */   nop
/* 87B088 802414A8 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 87B08C 802414AC C60C0038 */  lwc1      $f12, 0x38($s0)
/* 87B090 802414B0 C60E0040 */  lwc1      $f14, 0x40($s0)
/* 87B094 802414B4 C4460000 */  lwc1      $f6, ($v0)
/* 87B098 802414B8 468031A0 */  cvt.s.w   $f6, $f6
/* 87B09C 802414BC 44063000 */  mfc1      $a2, $f6
/* 87B0A0 802414C0 C4460008 */  lwc1      $f6, 8($v0)
/* 87B0A4 802414C4 468031A0 */  cvt.s.w   $f6, $f6
/* 87B0A8 802414C8 44073000 */  mfc1      $a3, $f6
/* 87B0AC 802414CC 0C00A720 */  jal       atan2
/* 87B0B0 802414D0 00000000 */   nop
/* 87B0B4 802414D4 08090543 */  j         .L8024150C
/* 87B0B8 802414D8 E600000C */   swc1     $f0, 0xc($s0)
.L802414DC:
/* 87B0BC 802414DC 0C00A67F */  jal       rand_int
/* 87B0C0 802414E0 2404003C */   addiu    $a0, $zero, 0x3c
/* 87B0C4 802414E4 C60C000C */  lwc1      $f12, 0xc($s0)
/* 87B0C8 802414E8 44820000 */  mtc1      $v0, $f0
/* 87B0CC 802414EC 00000000 */  nop
/* 87B0D0 802414F0 46800020 */  cvt.s.w   $f0, $f0
/* 87B0D4 802414F4 46006300 */  add.s     $f12, $f12, $f0
/* 87B0D8 802414F8 3C0141F0 */  lui       $at, 0x41f0
/* 87B0DC 802414FC 44810000 */  mtc1      $at, $f0
/* 87B0E0 80241500 0C00A6C9 */  jal       clamp_angle
/* 87B0E4 80241504 46006301 */   sub.s    $f12, $f12, $f0
/* 87B0E8 80241508 E600000C */  swc1      $f0, 0xc($s0)
.L8024150C:
/* 87B0EC 8024150C 8E2200CC */  lw        $v0, 0xcc($s1)
/* 87B0F0 80241510 8C420004 */  lw        $v0, 4($v0)
/* 87B0F4 80241514 AE020028 */  sw        $v0, 0x28($s0)
/* 87B0F8 80241518 AE600074 */  sw        $zero, 0x74($s3)
/* 87B0FC 8024151C 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 87B100 80241520 8C420014 */  lw        $v0, 0x14($v0)
/* 87B104 80241524 04410004 */  bgez      $v0, .L80241538
/* 87B108 80241528 00000000 */   nop
/* 87B10C 8024152C C6400000 */  lwc1      $f0, ($s2)
/* 87B110 80241530 08090556 */  j         .L80241558
/* 87B114 80241534 E6000018 */   swc1     $f0, 0x18($s0)
.L80241538:
/* 87B118 80241538 3C018024 */  lui       $at, %hi(D_802451B0_87ED90)
/* 87B11C 8024153C D42251B0 */  ldc1      $f2, %lo(D_802451B0_87ED90)($at)
/* 87B120 80241540 44820000 */  mtc1      $v0, $f0
/* 87B124 80241544 00000000 */  nop
/* 87B128 80241548 46800021 */  cvt.d.w   $f0, $f0
/* 87B12C 8024154C 46220003 */  div.d     $f0, $f0, $f2
/* 87B130 80241550 46200020 */  cvt.s.d   $f0, $f0
/* 87B134 80241554 E6000018 */  swc1      $f0, 0x18($s0)
.L80241558:
/* 87B138 80241558 C600003C */  lwc1      $f0, 0x3c($s0)
/* 87B13C 8024155C 3C014059 */  lui       $at, 0x4059
/* 87B140 80241560 44811800 */  mtc1      $at, $f3
/* 87B144 80241564 44801000 */  mtc1      $zero, $f2
/* 87B148 80241568 46000021 */  cvt.d.s   $f0, $f0
/* 87B14C 8024156C 46220002 */  mul.d     $f0, $f0, $f2
/* 87B150 80241570 00000000 */  nop
/* 87B154 80241574 24020001 */  addiu     $v0, $zero, 1
/* 87B158 80241578 4620018D */  trunc.w.d $f6, $f0
/* 87B15C 8024157C E626007C */  swc1      $f6, 0x7c($s1)
/* 87B160 80241580 AE620070 */  sw        $v0, 0x70($s3)
/* 87B164 80241584 8FBF0030 */  lw        $ra, 0x30($sp)
/* 87B168 80241588 8FB3002C */  lw        $s3, 0x2c($sp)
/* 87B16C 8024158C 8FB20028 */  lw        $s2, 0x28($sp)
/* 87B170 80241590 8FB10024 */  lw        $s1, 0x24($sp)
/* 87B174 80241594 8FB00020 */  lw        $s0, 0x20($sp)
/* 87B178 80241598 03E00008 */  jr        $ra
/* 87B17C 8024159C 27BD0038 */   addiu    $sp, $sp, 0x38
