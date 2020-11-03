.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802421C0_CD94A0
/* CD94A0 802421C0 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* CD94A4 802421C4 AFB3001C */  sw        $s3, 0x1c($sp)
/* CD94A8 802421C8 0080982D */  daddu     $s3, $a0, $zero
/* CD94AC 802421CC AFBF0020 */  sw        $ra, 0x20($sp)
/* CD94B0 802421D0 AFB20018 */  sw        $s2, 0x18($sp)
/* CD94B4 802421D4 AFB10014 */  sw        $s1, 0x14($sp)
/* CD94B8 802421D8 AFB00010 */  sw        $s0, 0x10($sp)
/* CD94BC 802421DC 8E710148 */  lw        $s1, 0x148($s3)
/* CD94C0 802421E0 86240008 */  lh        $a0, 8($s1)
/* CD94C4 802421E4 0C00EABB */  jal       get_npc_unsafe
/* CD94C8 802421E8 00A0902D */   daddu    $s2, $a1, $zero
/* CD94CC 802421EC 0040802D */  daddu     $s0, $v0, $zero
/* CD94D0 802421F0 8602008E */  lh        $v0, 0x8e($s0)
/* CD94D4 802421F4 9603008E */  lhu       $v1, 0x8e($s0)
/* CD94D8 802421F8 18400005 */  blez      $v0, .L80242210
/* CD94DC 802421FC 2462FFFF */   addiu    $v0, $v1, -1
/* CD94E0 80242200 A602008E */  sh        $v0, 0x8e($s0)
/* CD94E4 80242204 00021400 */  sll       $v0, $v0, 0x10
/* CD94E8 80242208 1C400033 */  bgtz      $v0, .L802422D8
/* CD94EC 8024220C 00000000 */   nop      
.L80242210:
/* CD94F0 80242210 8602008C */  lh        $v0, 0x8c($s0)
/* CD94F4 80242214 14400030 */  bnez      $v0, .L802422D8
/* CD94F8 80242218 00000000 */   nop      
/* CD94FC 8024221C 8E2200CC */  lw        $v0, 0xcc($s1)
/* CD9500 80242220 8C420024 */  lw        $v0, 0x24($v0)
/* CD9504 80242224 AE020028 */  sw        $v0, 0x28($s0)
/* CD9508 80242228 C6400018 */  lwc1      $f0, 0x18($s2)
/* CD950C 8024222C E6000018 */  swc1      $f0, 0x18($s0)
/* CD9510 80242230 8E230088 */  lw        $v1, 0x88($s1)
/* CD9514 80242234 24020005 */  addiu     $v0, $zero, 5
/* CD9518 80242238 10620005 */  beq       $v1, $v0, .L80242250
/* CD951C 8024223C 00000000 */   nop      
/* CD9520 80242240 10600003 */  beqz      $v1, .L80242250
/* CD9524 80242244 24020001 */   addiu    $v0, $zero, 1
/* CD9528 80242248 14620006 */  bne       $v1, $v0, .L80242264
/* CD952C 8024224C 00000000 */   nop      
.L80242250:
/* CD9530 80242250 8E220084 */  lw        $v0, 0x84($s1)
/* CD9534 80242254 00021FC2 */  srl       $v1, $v0, 0x1f
/* CD9538 80242258 00431021 */  addu      $v0, $v0, $v1
/* CD953C 8024225C 00021043 */  sra       $v0, $v0, 1
/* CD9540 80242260 A60200A8 */  sh        $v0, 0xa8($s0)
.L80242264:
/* CD9544 80242264 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* CD9548 80242268 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* CD954C 8024226C C60C0038 */  lwc1      $f12, 0x38($s0)
/* CD9550 80242270 C60E0040 */  lwc1      $f14, 0x40($s0)
/* CD9554 80242274 8C460028 */  lw        $a2, 0x28($v0)
/* CD9558 80242278 0C00A7B5 */  jal       dist2D
/* CD955C 8024227C 8C470030 */   lw       $a3, 0x30($v0)
/* CD9560 80242280 C6020018 */  lwc1      $f2, 0x18($s0)
/* CD9564 80242284 46020003 */  div.s     $f0, $f0, $f2
/* CD9568 80242288 3C018024 */  lui       $at, 0x8024
/* CD956C 8024228C D4225358 */  ldc1      $f2, 0x5358($at)
/* CD9570 80242290 46000021 */  cvt.d.s   $f0, $f0
/* CD9574 80242294 46220000 */  add.d     $f0, $f0, $f2
/* CD9578 80242298 4620010D */  trunc.w.d $f4, $f0
/* CD957C 8024229C 44022000 */  mfc1      $v0, $f4
/* CD9580 802422A0 00000000 */  nop       
/* CD9584 802422A4 A602008E */  sh        $v0, 0x8e($s0)
/* CD9588 802422A8 00021400 */  sll       $v0, $v0, 0x10
/* CD958C 802422AC 8E230078 */  lw        $v1, 0x78($s1)
/* CD9590 802422B0 00021403 */  sra       $v0, $v0, 0x10
/* CD9594 802422B4 0043102A */  slt       $v0, $v0, $v1
/* CD9598 802422B8 10400003 */  beqz      $v0, .L802422C8
/* CD959C 802422BC 00000000 */   nop      
/* CD95A0 802422C0 9622007A */  lhu       $v0, 0x7a($s1)
/* CD95A4 802422C4 A602008E */  sh        $v0, 0x8e($s0)
.L802422C8:
/* CD95A8 802422C8 8602008E */  lh        $v0, 0x8e($s0)
/* CD95AC 802422CC AE22007C */  sw        $v0, 0x7c($s1)
/* CD95B0 802422D0 2402000E */  addiu     $v0, $zero, 0xe
/* CD95B4 802422D4 AE620070 */  sw        $v0, 0x70($s3)
.L802422D8:
/* CD95B8 802422D8 8FBF0020 */  lw        $ra, 0x20($sp)
/* CD95BC 802422DC 8FB3001C */  lw        $s3, 0x1c($sp)
/* CD95C0 802422E0 8FB20018 */  lw        $s2, 0x18($sp)
/* CD95C4 802422E4 8FB10014 */  lw        $s1, 0x14($sp)
/* CD95C8 802422E8 8FB00010 */  lw        $s0, 0x10($sp)
/* CD95CC 802422EC 03E00008 */  jr        $ra
/* CD95D0 802422F0 27BD0028 */   addiu    $sp, $sp, 0x28
