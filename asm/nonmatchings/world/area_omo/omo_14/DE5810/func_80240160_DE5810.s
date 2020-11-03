.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240160_DE5810
/* DE5810 80240160 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* DE5814 80240164 AFB20018 */  sw        $s2, 0x18($sp)
/* DE5818 80240168 0080902D */  daddu     $s2, $a0, $zero
/* DE581C 8024016C AFBF001C */  sw        $ra, 0x1c($sp)
/* DE5820 80240170 AFB10014 */  sw        $s1, 0x14($sp)
/* DE5824 80240174 AFB00010 */  sw        $s0, 0x10($sp)
/* DE5828 80240178 F7B80030 */  sdc1      $f24, 0x30($sp)
/* DE582C 8024017C F7B60028 */  sdc1      $f22, 0x28($sp)
/* DE5830 80240180 F7B40020 */  sdc1      $f20, 0x20($sp)
/* DE5834 80240184 8E420148 */  lw        $v0, 0x148($s2)
/* DE5838 80240188 0C00EABB */  jal       get_npc_unsafe
/* DE583C 8024018C 84440008 */   lh       $a0, 8($v0)
/* DE5840 80240190 0040802D */  daddu     $s0, $v0, $zero
/* DE5844 80240194 820200A4 */  lb        $v0, 0xa4($s0)
/* DE5848 80240198 3C0143B4 */  lui       $at, 0x43b4
/* DE584C 8024019C 4481A000 */  mtc1      $at, $f20
/* DE5850 802401A0 44826000 */  mtc1      $v0, $f12
/* DE5854 802401A4 00000000 */  nop       
/* DE5858 802401A8 46806320 */  cvt.s.w   $f12, $f12
/* DE585C 802401AC 46146302 */  mul.s     $f12, $f12, $f20
/* DE5860 802401B0 00000000 */  nop       
/* DE5864 802401B4 3C014120 */  lui       $at, 0x4120
/* DE5868 802401B8 4481B000 */  mtc1      $at, $f22
/* DE586C 802401BC 0C00A8BB */  jal       sin_deg
/* DE5870 802401C0 46166303 */   div.s    $f12, $f12, $f22
/* DE5874 802401C4 3C118011 */  lui       $s1, %hi(gPlayerStatus)
/* DE5878 802401C8 2631EFC8 */  addiu     $s1, $s1, %lo(gPlayerStatus)
/* DE587C 802401CC 862200B2 */  lh        $v0, 0xb2($s1)
/* DE5880 802401D0 860300A6 */  lh        $v1, 0xa6($s0)
/* DE5884 802401D4 3C013F00 */  lui       $at, 0x3f00
/* DE5888 802401D8 4481C000 */  mtc1      $at, $f24
/* DE588C 802401DC 00431021 */  addu      $v0, $v0, $v1
/* DE5890 802401E0 44821000 */  mtc1      $v0, $f2
/* DE5894 802401E4 00000000 */  nop       
/* DE5898 802401E8 468010A0 */  cvt.s.w   $f2, $f2
/* DE589C 802401EC 46181082 */  mul.s     $f2, $f2, $f24
/* DE58A0 802401F0 00000000 */  nop       
/* DE58A4 802401F4 820200A4 */  lb        $v0, 0xa4($s0)
/* DE58A8 802401F8 44826000 */  mtc1      $v0, $f12
/* DE58AC 802401FC 00000000 */  nop       
/* DE58B0 80240200 46806320 */  cvt.s.w   $f12, $f12
/* DE58B4 80240204 46146302 */  mul.s     $f12, $f12, $f20
/* DE58B8 80240208 00000000 */  nop       
/* DE58BC 8024020C 46001082 */  mul.s     $f2, $f2, $f0
/* DE58C0 80240210 00000000 */  nop       
/* DE58C4 80240214 C6200028 */  lwc1      $f0, 0x28($s1)
/* DE58C8 80240218 46166303 */  div.s     $f12, $f12, $f22
/* DE58CC 8024021C 0C00A8D4 */  jal       cos_deg
/* DE58D0 80240220 46020580 */   add.s    $f22, $f0, $f2
/* DE58D4 80240224 862200B2 */  lh        $v0, 0xb2($s1)
/* DE58D8 80240228 860300A6 */  lh        $v1, 0xa6($s0)
/* DE58DC 8024022C 00431021 */  addu      $v0, $v0, $v1
/* DE58E0 80240230 44821000 */  mtc1      $v0, $f2
/* DE58E4 80240234 00000000 */  nop       
/* DE58E8 80240238 468010A0 */  cvt.s.w   $f2, $f2
/* DE58EC 8024023C 46181082 */  mul.s     $f2, $f2, $f24
/* DE58F0 80240240 00000000 */  nop       
/* DE58F4 80240244 46001082 */  mul.s     $f2, $f2, $f0
/* DE58F8 80240248 00000000 */  nop       
/* DE58FC 8024024C C6200030 */  lwc1      $f0, 0x30($s1)
/* DE5900 80240250 C60C0038 */  lwc1      $f12, 0x38($s0)
/* DE5904 80240254 46020501 */  sub.s     $f20, $f0, $f2
/* DE5908 80240258 C60E0040 */  lwc1      $f14, 0x40($s0)
/* DE590C 8024025C 4406B000 */  mfc1      $a2, $f22
/* DE5910 80240260 4407A000 */  mfc1      $a3, $f20
/* DE5914 80240264 0C00A7B5 */  jal       dist2D
/* DE5918 80240268 00000000 */   nop      
/* DE591C 8024026C C6020018 */  lwc1      $f2, 0x18($s0)
/* DE5920 80240270 46000606 */  mov.s     $f24, $f0
/* DE5924 80240274 4618103C */  c.lt.s    $f2, $f24
/* DE5928 80240278 00000000 */  nop       
/* DE592C 8024027C 45000033 */  bc1f      .L8024034C
/* DE5930 80240280 00000000 */   nop      
/* DE5934 80240284 8E020000 */  lw        $v0, ($s0)
/* DE5938 80240288 30422000 */  andi      $v0, $v0, 0x2000
/* DE593C 8024028C 10400022 */  beqz      $v0, .L80240318
/* DE5940 80240290 00000000 */   nop      
/* DE5944 80240294 C602000C */  lwc1      $f2, 0xc($s0)
/* DE5948 80240298 3C014334 */  lui       $at, 0x4334
/* DE594C 8024029C 44810000 */  mtc1      $at, $f0
/* DE5950 802402A0 00000000 */  nop       
/* DE5954 802402A4 4600103C */  c.lt.s    $f2, $f0
/* DE5958 802402A8 00000000 */  nop       
/* DE595C 802402AC 4500000D */  bc1f      .L802402E4
/* DE5960 802402B0 00000000 */   nop      
/* DE5964 802402B4 C6020040 */  lwc1      $f2, 0x40($s0)
/* DE5968 802402B8 44800000 */  mtc1      $zero, $f0
/* DE596C 802402BC 3C014307 */  lui       $at, 0x4307
/* DE5970 802402C0 44812000 */  mtc1      $at, $f4
/* DE5974 802402C4 4602003C */  c.lt.s    $f0, $f2
/* DE5978 802402C8 00000000 */  nop       
/* DE597C 802402CC 45020019 */  bc1fl     .L80240334
/* DE5980 802402D0 E604000C */   swc1     $f4, 0xc($s0)
/* DE5984 802402D4 3C014234 */  lui       $at, 0x4234
/* DE5988 802402D8 44812000 */  mtc1      $at, $f4
/* DE598C 802402DC 080900CD */  j         .L80240334
/* DE5990 802402E0 E604000C */   swc1     $f4, 0xc($s0)
.L802402E4:
/* DE5994 802402E4 C6020040 */  lwc1      $f2, 0x40($s0)
/* DE5998 802402E8 44800000 */  mtc1      $zero, $f0
/* DE599C 802402EC 3C014361 */  lui       $at, 0x4361
/* DE59A0 802402F0 44812000 */  mtc1      $at, $f4
/* DE59A4 802402F4 4602003C */  c.lt.s    $f0, $f2
/* DE59A8 802402F8 00000000 */  nop       
/* DE59AC 802402FC 4502000D */  bc1fl     .L80240334
/* DE59B0 80240300 E604000C */   swc1     $f4, 0xc($s0)
/* DE59B4 80240304 3C01439D */  lui       $at, 0x439d
/* DE59B8 80240308 34218000 */  ori       $at, $at, 0x8000
/* DE59BC 8024030C 44812000 */  mtc1      $at, $f4
/* DE59C0 80240310 080900CD */  j         .L80240334
/* DE59C4 80240314 E604000C */   swc1     $f4, 0xc($s0)
.L80240318:
/* DE59C8 80240318 C60C0038 */  lwc1      $f12, 0x38($s0)
/* DE59CC 8024031C C60E0040 */  lwc1      $f14, 0x40($s0)
/* DE59D0 80240320 4406B000 */  mfc1      $a2, $f22
/* DE59D4 80240324 4407A000 */  mfc1      $a3, $f20
/* DE59D8 80240328 0C00A720 */  jal       atan2
/* DE59DC 8024032C 00000000 */   nop      
/* DE59E0 80240330 E600000C */  swc1      $f0, 0xc($s0)
.L80240334:
/* DE59E4 80240334 8E06000C */  lw        $a2, 0xc($s0)
/* DE59E8 80240338 8E050018 */  lw        $a1, 0x18($s0)
/* DE59EC 8024033C 0C00EA95 */  jal       npc_move_heading
/* DE59F0 80240340 0200202D */   daddu    $a0, $s0, $zero
/* DE59F4 80240344 080900D9 */  j         .L80240364
/* DE59F8 80240348 00000000 */   nop      
.L8024034C:
/* DE59FC 8024034C C60C0038 */  lwc1      $f12, 0x38($s0)
/* DE5A00 80240350 C60E0040 */  lwc1      $f14, 0x40($s0)
/* DE5A04 80240354 8E260028 */  lw        $a2, 0x28($s1)
/* DE5A08 80240358 0C00A720 */  jal       atan2
/* DE5A0C 8024035C 8E270030 */   lw       $a3, 0x30($s1)
/* DE5A10 80240360 E600000C */  swc1      $f0, 0xc($s0)
.L80240364:
/* DE5A14 80240364 C64200B0 */  lwc1      $f2, 0xb0($s2)
/* DE5A18 80240368 C6200028 */  lwc1      $f0, 0x28($s1)
/* DE5A1C 8024036C 46001032 */  c.eq.s    $f2, $f0
/* DE5A20 80240370 00000000 */  nop       
/* DE5A24 80240374 45020013 */  bc1fl     .L802403C4
/* DE5A28 80240378 E64000B0 */   swc1     $f0, 0xb0($s2)
/* DE5A2C 8024037C C64200B8 */  lwc1      $f2, 0xb8($s2)
/* DE5A30 80240380 C6200030 */  lwc1      $f0, 0x30($s1)
/* DE5A34 80240384 46001032 */  c.eq.s    $f2, $f0
/* DE5A38 80240388 00000000 */  nop       
/* DE5A3C 8024038C 4500000B */  bc1f      .L802403BC
/* DE5A40 80240390 00000000 */   nop      
/* DE5A44 80240394 3C0141A0 */  lui       $at, 0x41a0
/* DE5A48 80240398 44810000 */  mtc1      $at, $f0
/* DE5A4C 8024039C 00000000 */  nop       
/* DE5A50 802403A0 4600C03C */  c.lt.s    $f24, $f0
/* DE5A54 802403A4 00000000 */  nop       
/* DE5A58 802403A8 45020004 */  bc1fl     .L802403BC
/* DE5A5C 802403AC AE4000BC */   sw       $zero, 0xbc($s2)
/* DE5A60 802403B0 8E4200BC */  lw        $v0, 0xbc($s2)
/* DE5A64 802403B4 24420001 */  addiu     $v0, $v0, 1
/* DE5A68 802403B8 AE4200BC */  sw        $v0, 0xbc($s2)
.L802403BC:
/* DE5A6C 802403BC C6200028 */  lwc1      $f0, 0x28($s1)
/* DE5A70 802403C0 E64000B0 */  swc1      $f0, 0xb0($s2)
.L802403C4:
/* DE5A74 802403C4 C620002C */  lwc1      $f0, 0x2c($s1)
/* DE5A78 802403C8 E64000B4 */  swc1      $f0, 0xb4($s2)
/* DE5A7C 802403CC C6200030 */  lwc1      $f0, 0x30($s1)
/* DE5A80 802403D0 E64000B8 */  swc1      $f0, 0xb8($s2)
/* DE5A84 802403D4 8FBF001C */  lw        $ra, 0x1c($sp)
/* DE5A88 802403D8 8FB20018 */  lw        $s2, 0x18($sp)
/* DE5A8C 802403DC 8FB10014 */  lw        $s1, 0x14($sp)
/* DE5A90 802403E0 8FB00010 */  lw        $s0, 0x10($sp)
/* DE5A94 802403E4 D7B80030 */  ldc1      $f24, 0x30($sp)
/* DE5A98 802403E8 D7B60028 */  ldc1      $f22, 0x28($sp)
/* DE5A9C 802403EC D7B40020 */  ldc1      $f20, 0x20($sp)
/* DE5AA0 802403F0 24020002 */  addiu     $v0, $zero, 2
/* DE5AA4 802403F4 03E00008 */  jr        $ra
/* DE5AA8 802403F8 27BD0038 */   addiu    $sp, $sp, 0x38
