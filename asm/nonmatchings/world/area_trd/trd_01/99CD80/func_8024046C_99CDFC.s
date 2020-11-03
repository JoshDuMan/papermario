.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024046C_99CDFC
/* 99CDFC 8024046C 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 99CE00 80240470 AFB3001C */  sw        $s3, 0x1c($sp)
/* 99CE04 80240474 0080982D */  daddu     $s3, $a0, $zero
/* 99CE08 80240478 AFBF0020 */  sw        $ra, 0x20($sp)
/* 99CE0C 8024047C AFB20018 */  sw        $s2, 0x18($sp)
/* 99CE10 80240480 AFB10014 */  sw        $s1, 0x14($sp)
/* 99CE14 80240484 AFB00010 */  sw        $s0, 0x10($sp)
/* 99CE18 80240488 8E710148 */  lw        $s1, 0x148($s3)
/* 99CE1C 8024048C 86240008 */  lh        $a0, 8($s1)
/* 99CE20 80240490 0C00EABB */  jal       get_npc_unsafe
/* 99CE24 80240494 00A0902D */   daddu    $s2, $a1, $zero
/* 99CE28 80240498 0040802D */  daddu     $s0, $v0, $zero
/* 99CE2C 8024049C 8602008E */  lh        $v0, 0x8e($s0)
/* 99CE30 802404A0 9603008E */  lhu       $v1, 0x8e($s0)
/* 99CE34 802404A4 18400005 */  blez      $v0, .L802404BC
/* 99CE38 802404A8 2462FFFF */   addiu    $v0, $v1, -1
/* 99CE3C 802404AC A602008E */  sh        $v0, 0x8e($s0)
/* 99CE40 802404B0 00021400 */  sll       $v0, $v0, 0x10
/* 99CE44 802404B4 1C400033 */  bgtz      $v0, .L80240584
/* 99CE48 802404B8 00000000 */   nop      
.L802404BC:
/* 99CE4C 802404BC 8602008C */  lh        $v0, 0x8c($s0)
/* 99CE50 802404C0 14400030 */  bnez      $v0, .L80240584
/* 99CE54 802404C4 00000000 */   nop      
/* 99CE58 802404C8 8E2200CC */  lw        $v0, 0xcc($s1)
/* 99CE5C 802404CC 8C420024 */  lw        $v0, 0x24($v0)
/* 99CE60 802404D0 AE020028 */  sw        $v0, 0x28($s0)
/* 99CE64 802404D4 C6400018 */  lwc1      $f0, 0x18($s2)
/* 99CE68 802404D8 E6000018 */  swc1      $f0, 0x18($s0)
/* 99CE6C 802404DC 8E230088 */  lw        $v1, 0x88($s1)
/* 99CE70 802404E0 24020005 */  addiu     $v0, $zero, 5
/* 99CE74 802404E4 10620005 */  beq       $v1, $v0, .L802404FC
/* 99CE78 802404E8 00000000 */   nop      
/* 99CE7C 802404EC 10600003 */  beqz      $v1, .L802404FC
/* 99CE80 802404F0 24020001 */   addiu    $v0, $zero, 1
/* 99CE84 802404F4 14620006 */  bne       $v1, $v0, .L80240510
/* 99CE88 802404F8 00000000 */   nop      
.L802404FC:
/* 99CE8C 802404FC 8E220084 */  lw        $v0, 0x84($s1)
/* 99CE90 80240500 00021FC2 */  srl       $v1, $v0, 0x1f
/* 99CE94 80240504 00431021 */  addu      $v0, $v0, $v1
/* 99CE98 80240508 00021043 */  sra       $v0, $v0, 1
/* 99CE9C 8024050C A60200A8 */  sh        $v0, 0xa8($s0)
.L80240510:
/* 99CEA0 80240510 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* 99CEA4 80240514 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* 99CEA8 80240518 C60C0038 */  lwc1      $f12, 0x38($s0)
/* 99CEAC 8024051C C60E0040 */  lwc1      $f14, 0x40($s0)
/* 99CEB0 80240520 8C460028 */  lw        $a2, 0x28($v0)
/* 99CEB4 80240524 0C00A7B5 */  jal       dist2D
/* 99CEB8 80240528 8C470030 */   lw       $a3, 0x30($v0)
/* 99CEBC 8024052C C6020018 */  lwc1      $f2, 0x18($s0)
/* 99CEC0 80240530 46020003 */  div.s     $f0, $f0, $f2
/* 99CEC4 80240534 3C018024 */  lui       $at, 0x8024
/* 99CEC8 80240538 D4224440 */  ldc1      $f2, 0x4440($at)
/* 99CECC 8024053C 46000021 */  cvt.d.s   $f0, $f0
/* 99CED0 80240540 46220000 */  add.d     $f0, $f0, $f2
/* 99CED4 80240544 4620010D */  trunc.w.d $f4, $f0
/* 99CED8 80240548 44022000 */  mfc1      $v0, $f4
/* 99CEDC 8024054C 00000000 */  nop       
/* 99CEE0 80240550 A602008E */  sh        $v0, 0x8e($s0)
/* 99CEE4 80240554 00021400 */  sll       $v0, $v0, 0x10
/* 99CEE8 80240558 8E230078 */  lw        $v1, 0x78($s1)
/* 99CEEC 8024055C 00021403 */  sra       $v0, $v0, 0x10
/* 99CEF0 80240560 0043102A */  slt       $v0, $v0, $v1
/* 99CEF4 80240564 10400003 */  beqz      $v0, .L80240574
/* 99CEF8 80240568 00000000 */   nop      
/* 99CEFC 8024056C 9622007A */  lhu       $v0, 0x7a($s1)
/* 99CF00 80240570 A602008E */  sh        $v0, 0x8e($s0)
.L80240574:
/* 99CF04 80240574 8602008E */  lh        $v0, 0x8e($s0)
/* 99CF08 80240578 AE22007C */  sw        $v0, 0x7c($s1)
/* 99CF0C 8024057C 2402000E */  addiu     $v0, $zero, 0xe
/* 99CF10 80240580 AE620070 */  sw        $v0, 0x70($s3)
.L80240584:
/* 99CF14 80240584 8FBF0020 */  lw        $ra, 0x20($sp)
/* 99CF18 80240588 8FB3001C */  lw        $s3, 0x1c($sp)
/* 99CF1C 8024058C 8FB20018 */  lw        $s2, 0x18($sp)
/* 99CF20 80240590 8FB10014 */  lw        $s1, 0x14($sp)
/* 99CF24 80240594 8FB00010 */  lw        $s0, 0x10($sp)
/* 99CF28 80240598 03E00008 */  jr        $ra
/* 99CF2C 8024059C 27BD0028 */   addiu    $sp, $sp, 0x28
