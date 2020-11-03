.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802BD338
/* 318088 802BD338 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 31808C 802BD33C AFB00018 */  sw        $s0, 0x18($sp)
/* 318090 802BD340 3C108011 */  lui       $s0, %hi(gPlayerData)
/* 318094 802BD344 2610F290 */  addiu     $s0, $s0, %lo(gPlayerData)
/* 318098 802BD348 AFBF0028 */  sw        $ra, 0x28($sp)
/* 31809C 802BD34C AFB30024 */  sw        $s3, 0x24($sp)
/* 3180A0 802BD350 AFB20020 */  sw        $s2, 0x20($sp)
/* 3180A4 802BD354 AFB1001C */  sw        $s1, 0x1c($sp)
/* 3180A8 802BD358 F7B40030 */  sdc1      $f20, 0x30($sp)
/* 3180AC 802BD35C 8C91014C */  lw        $s1, 0x14c($a0)
/* 3180B0 802BD360 10A00009 */  beqz      $a1, .L802BD388
/* 3180B4 802BD364 0220202D */   daddu    $a0, $s1, $zero
/* 3180B8 802BD368 0C03AE2A */  jal       enable_partner_walking
/* 3180BC 802BD36C 24050001 */   addiu    $a1, $zero, 1
/* 3180C0 802BD370 3C04802C */  lui       $a0, 0x802c
/* 3180C4 802BD374 8C84E89C */  lw        $a0, -0x1764($a0)
/* 3180C8 802BD378 0C00A580 */  jal       mem_clear
/* 3180CC 802BD37C 2405001C */   addiu    $a1, $zero, 0x1c
/* 3180D0 802BD380 3C018011 */  lui       $at, 0x8011
/* 3180D4 802BD384 AC20C954 */  sw        $zero, -0x36ac($at)
.L802BD388:
/* 3180D8 802BD388 3C030001 */  lui       $v1, 1
/* 3180DC 802BD38C 8E020300 */  lw        $v0, 0x300($s0)
/* 3180E0 802BD390 3C138011 */  lui       $s3, 0x8011
/* 3180E4 802BD394 2673C954 */  addiu     $s3, $s3, -0x36ac
/* 3180E8 802BD398 24420001 */  addiu     $v0, $v0, 1
/* 3180EC 802BD39C AE020300 */  sw        $v0, 0x300($s0)
/* 3180F0 802BD3A0 8E220000 */  lw        $v0, ($s1)
/* 3180F4 802BD3A4 8E720000 */  lw        $s2, ($s3)
/* 3180F8 802BD3A8 00431025 */  or        $v0, $v0, $v1
/* 3180FC 802BD3AC 16400007 */  bnez      $s2, .L802BD3CC
/* 318100 802BD3B0 AE220000 */   sw       $v0, ($s1)
/* 318104 802BD3B4 0C03AE8F */  jal       func_800EBA3C
/* 318108 802BD3B8 0220202D */   daddu    $a0, $s1, $zero
/* 31810C 802BD3BC 0C03AED0 */  jal       func_800EBB40
/* 318110 802BD3C0 0220202D */   daddu    $a0, $s1, $zero
/* 318114 802BD3C4 080AF5AF */  j         .L802BD6BC
/* 318118 802BD3C8 0000102D */   daddu    $v0, $zero, $zero
.L802BD3CC:
/* 31811C 802BD3CC 3C10802C */  lui       $s0, 0x802c
/* 318120 802BD3D0 2610E89C */  addiu     $s0, $s0, -0x1764
/* 318124 802BD3D4 8E040000 */  lw        $a0, ($s0)
/* 318128 802BD3D8 8C830004 */  lw        $v1, 4($a0)
/* 31812C 802BD3DC 24050001 */  addiu     $a1, $zero, 1
/* 318130 802BD3E0 10650030 */  beq       $v1, $a1, .L802BD4A4
/* 318134 802BD3E4 28620002 */   slti     $v0, $v1, 2
/* 318138 802BD3E8 10400005 */  beqz      $v0, .L802BD400
/* 31813C 802BD3EC 24020002 */   addiu    $v0, $zero, 2
/* 318140 802BD3F0 10600009 */  beqz      $v1, .L802BD418
/* 318144 802BD3F4 0000102D */   daddu    $v0, $zero, $zero
/* 318148 802BD3F8 080AF5AF */  j         .L802BD6BC
/* 31814C 802BD3FC 00000000 */   nop      
.L802BD400:
/* 318150 802BD400 1062009A */  beq       $v1, $v0, .L802BD66C
/* 318154 802BD404 24020003 */   addiu    $v0, $zero, 3
/* 318158 802BD408 106200A0 */  beq       $v1, $v0, .L802BD68C
/* 31815C 802BD40C 0000102D */   daddu    $v0, $zero, $zero
/* 318160 802BD410 080AF5AF */  j         .L802BD6BC
/* 318164 802BD414 00000000 */   nop      
.L802BD418:
/* 318168 802BD418 AC850004 */  sw        $a1, 4($a0)
/* 31816C 802BD41C 8E220000 */  lw        $v0, ($s1)
/* 318170 802BD420 AC820008 */  sw        $v0, 8($a0)
/* 318174 802BD424 C62C0038 */  lwc1      $f12, 0x38($s1)
/* 318178 802BD428 C62E0040 */  lwc1      $f14, 0x40($s1)
/* 31817C 802BD42C 8E460048 */  lw        $a2, 0x48($s2)
/* 318180 802BD430 0C00A7B5 */  jal       dist2D
/* 318184 802BD434 8E470050 */   lw       $a3, 0x50($s2)
/* 318188 802BD438 8E020000 */  lw        $v0, ($s0)
/* 31818C 802BD43C 46000005 */  abs.s     $f0, $f0
/* 318190 802BD440 E440000C */  swc1      $f0, 0xc($v0)
/* 318194 802BD444 C64C0048 */  lwc1      $f12, 0x48($s2)
/* 318198 802BD448 C64E0050 */  lwc1      $f14, 0x50($s2)
/* 31819C 802BD44C 8E260038 */  lw        $a2, 0x38($s1)
/* 3181A0 802BD450 0C00A720 */  jal       atan2
/* 3181A4 802BD454 8E270040 */   lw       $a3, 0x40($s1)
/* 3181A8 802BD458 3C040004 */  lui       $a0, 4
/* 3181AC 802BD45C 24020078 */  addiu     $v0, $zero, 0x78
/* 3181B0 802BD460 8E030000 */  lw        $v1, ($s0)
/* 3181B4 802BD464 3C0140C0 */  lui       $at, 0x40c0
/* 3181B8 802BD468 44811000 */  mtc1      $at, $f2
/* 3181BC 802BD46C 3C014248 */  lui       $at, 0x4248
/* 3181C0 802BD470 44812000 */  mtc1      $at, $f4
/* 3181C4 802BD474 34840148 */  ori       $a0, $a0, 0x148
/* 3181C8 802BD478 E4600010 */  swc1      $f0, 0x10($v1)
/* 3181CC 802BD47C E4620014 */  swc1      $f2, 0x14($v1)
/* 3181D0 802BD480 E4640018 */  swc1      $f4, 0x18($v1)
/* 3181D4 802BD484 AC620000 */  sw        $v0, ($v1)
/* 3181D8 802BD488 8E220000 */  lw        $v0, ($s1)
/* 3181DC 802BD48C 2403FDFF */  addiu     $v1, $zero, -0x201
/* 3181E0 802BD490 00441025 */  or        $v0, $v0, $a0
/* 3181E4 802BD494 00431024 */  and       $v0, $v0, $v1
/* 3181E8 802BD498 AE220000 */  sw        $v0, ($s1)
/* 3181EC 802BD49C 3C10802C */  lui       $s0, 0x802c
/* 3181F0 802BD4A0 2610E89C */  addiu     $s0, $s0, -0x1764
.L802BD4A4:
/* 3181F4 802BD4A4 8E020000 */  lw        $v0, ($s0)
/* 3181F8 802BD4A8 3C0140C9 */  lui       $at, 0x40c9
/* 3181FC 802BD4AC 34210FD0 */  ori       $at, $at, 0xfd0
/* 318200 802BD4B0 44810000 */  mtc1      $at, $f0
/* 318204 802BD4B4 C44C0010 */  lwc1      $f12, 0x10($v0)
/* 318208 802BD4B8 46006302 */  mul.s     $f12, $f12, $f0
/* 31820C 802BD4BC 00000000 */  nop       
/* 318210 802BD4C0 27A50010 */  addiu     $a1, $sp, 0x10
/* 318214 802BD4C4 3C0143B4 */  lui       $at, 0x43b4
/* 318218 802BD4C8 44810000 */  mtc1      $at, $f0
/* 31821C 802BD4CC 27A60014 */  addiu     $a2, $sp, 0x14
/* 318220 802BD4D0 0C00A82D */  jal       sin_cos_rad
/* 318224 802BD4D4 46006303 */   div.s    $f12, $f12, $f0
/* 318228 802BD4D8 8E020000 */  lw        $v0, ($s0)
/* 31822C 802BD4DC C7A20010 */  lwc1      $f2, 0x10($sp)
/* 318230 802BD4E0 C440000C */  lwc1      $f0, 0xc($v0)
/* 318234 802BD4E4 46001082 */  mul.s     $f2, $f2, $f0
/* 318238 802BD4E8 00000000 */  nop       
/* 31823C 802BD4EC C6400048 */  lwc1      $f0, 0x48($s2)
/* 318240 802BD4F0 46020000 */  add.s     $f0, $f0, $f2
/* 318244 802BD4F4 E6200038 */  swc1      $f0, 0x38($s1)
/* 318248 802BD4F8 C7A20014 */  lwc1      $f2, 0x14($sp)
/* 31824C 802BD4FC C440000C */  lwc1      $f0, 0xc($v0)
/* 318250 802BD500 46001082 */  mul.s     $f2, $f2, $f0
/* 318254 802BD504 00000000 */  nop       
/* 318258 802BD508 C6400050 */  lwc1      $f0, 0x50($s2)
/* 31825C 802BD50C 46020001 */  sub.s     $f0, $f0, $f2
/* 318260 802BD510 E6200040 */  swc1      $f0, 0x40($s1)
/* 318264 802BD514 C4400010 */  lwc1      $f0, 0x10($v0)
/* 318268 802BD518 C44C0014 */  lwc1      $f12, 0x14($v0)
/* 31826C 802BD51C 0C00A6C9 */  jal       clamp_angle
/* 318270 802BD520 460C0301 */   sub.s    $f12, $f0, $f12
/* 318274 802BD524 8E100000 */  lw        $s0, ($s0)
/* 318278 802BD528 3C0141A0 */  lui       $at, 0x41a0
/* 31827C 802BD52C 44811000 */  mtc1      $at, $f2
/* 318280 802BD530 C604000C */  lwc1      $f4, 0xc($s0)
/* 318284 802BD534 4604103C */  c.lt.s    $f2, $f4
/* 318288 802BD538 00000000 */  nop       
/* 31828C 802BD53C 45000005 */  bc1f      .L802BD554
/* 318290 802BD540 E6000010 */   swc1     $f0, 0x10($s0)
/* 318294 802BD544 3C013F80 */  lui       $at, 0x3f80
/* 318298 802BD548 44810000 */  mtc1      $at, $f0
/* 31829C 802BD54C 080AF560 */  j         .L802BD580
/* 3182A0 802BD550 46002001 */   sub.s    $f0, $f4, $f0
.L802BD554:
/* 3182A4 802BD554 3C014198 */  lui       $at, 0x4198
/* 3182A8 802BD558 44810000 */  mtc1      $at, $f0
/* 3182AC 802BD55C 00000000 */  nop       
/* 3182B0 802BD560 4600203C */  c.lt.s    $f4, $f0
/* 3182B4 802BD564 00000000 */  nop       
/* 3182B8 802BD568 45000006 */  bc1f      .L802BD584
/* 3182BC 802BD56C 00000000 */   nop      
/* 3182C0 802BD570 3C013F80 */  lui       $at, 0x3f80
/* 3182C4 802BD574 44810000 */  mtc1      $at, $f0
/* 3182C8 802BD578 00000000 */  nop       
/* 3182CC 802BD57C 46002000 */  add.s     $f0, $f4, $f0
.L802BD580:
/* 3182D0 802BD580 E600000C */  swc1      $f0, 0xc($s0)
.L802BD584:
/* 3182D4 802BD584 3C10802C */  lui       $s0, 0x802c
/* 3182D8 802BD588 2610E89C */  addiu     $s0, $s0, -0x1764
/* 3182DC 802BD58C 8E020000 */  lw        $v0, ($s0)
/* 3182E0 802BD590 3C0140C9 */  lui       $at, 0x40c9
/* 3182E4 802BD594 34210FD0 */  ori       $at, $at, 0xfd0
/* 3182E8 802BD598 44810000 */  mtc1      $at, $f0
/* 3182EC 802BD59C C44C0018 */  lwc1      $f12, 0x18($v0)
/* 3182F0 802BD5A0 46006302 */  mul.s     $f12, $f12, $f0
/* 3182F4 802BD5A4 00000000 */  nop       
/* 3182F8 802BD5A8 3C0143B4 */  lui       $at, 0x43b4
/* 3182FC 802BD5AC 4481A000 */  mtc1      $at, $f20
/* 318300 802BD5B0 0C00A85B */  jal       sin_rad
/* 318304 802BD5B4 46146303 */   div.s    $f12, $f12, $f20
/* 318308 802BD5B8 8E020000 */  lw        $v0, ($s0)
/* 31830C 802BD5BC 3C014040 */  lui       $at, 0x4040
/* 318310 802BD5C0 44812000 */  mtc1      $at, $f4
/* 318314 802BD5C4 C4420018 */  lwc1      $f2, 0x18($v0)
/* 318318 802BD5C8 46041080 */  add.s     $f2, $f2, $f4
/* 31831C 802BD5CC 3C014316 */  lui       $at, 0x4316
/* 318320 802BD5D0 44813000 */  mtc1      $at, $f6
/* 318324 802BD5D4 00000000 */  nop       
/* 318328 802BD5D8 4602303C */  c.lt.s    $f6, $f2
/* 31832C 802BD5DC E4420018 */  swc1      $f2, 0x18($v0)
/* 318330 802BD5E0 46040082 */  mul.s     $f2, $f0, $f4
/* 318334 802BD5E4 00000000 */  nop       
/* 318338 802BD5E8 45030001 */  bc1tl     .L802BD5F0
/* 31833C 802BD5EC E4460018 */   swc1     $f6, 0x18($v0)
.L802BD5F0:
/* 318340 802BD5F0 C620003C */  lwc1      $f0, 0x3c($s1)
/* 318344 802BD5F4 46020000 */  add.s     $f0, $f0, $f2
/* 318348 802BD5F8 8E020000 */  lw        $v0, ($s0)
/* 31834C 802BD5FC E620003C */  swc1      $f0, 0x3c($s1)
/* 318350 802BD600 C44C0010 */  lwc1      $f12, 0x10($v0)
/* 318354 802BD604 0C00A6C9 */  jal       clamp_angle
/* 318358 802BD608 460CA301 */   sub.s    $f12, $f20, $f12
/* 31835C 802BD60C 8E020000 */  lw        $v0, ($s0)
/* 318360 802BD610 E6200034 */  swc1      $f0, 0x34($s1)
/* 318364 802BD614 C4400014 */  lwc1      $f0, 0x14($v0)
/* 318368 802BD618 3C01802C */  lui       $at, 0x802c
/* 31836C 802BD61C D422E900 */  ldc1      $f2, -0x1700($at)
/* 318370 802BD620 46000021 */  cvt.d.s   $f0, $f0
/* 318374 802BD624 46220000 */  add.d     $f0, $f0, $f2
/* 318378 802BD628 3C014220 */  lui       $at, 0x4220
/* 31837C 802BD62C 44811000 */  mtc1      $at, $f2
/* 318380 802BD630 46200020 */  cvt.s.d   $f0, $f0
/* 318384 802BD634 4600103C */  c.lt.s    $f2, $f0
/* 318388 802BD638 00000000 */  nop       
/* 31838C 802BD63C 45000002 */  bc1f      .L802BD648
/* 318390 802BD640 E4400014 */   swc1     $f0, 0x14($v0)
/* 318394 802BD644 E4420014 */  swc1      $f2, 0x14($v0)
.L802BD648:
/* 318398 802BD648 8E030000 */  lw        $v1, ($s0)
/* 31839C 802BD64C 8C620000 */  lw        $v0, ($v1)
/* 3183A0 802BD650 2442FFFF */  addiu     $v0, $v0, -1
/* 3183A4 802BD654 14400018 */  bnez      $v0, .L802BD6B8
/* 3183A8 802BD658 AC620000 */   sw       $v0, ($v1)
/* 3183AC 802BD65C 8C620004 */  lw        $v0, 4($v1)
/* 3183B0 802BD660 24420001 */  addiu     $v0, $v0, 1
/* 3183B4 802BD664 080AF5AE */  j         .L802BD6B8
/* 3183B8 802BD668 AC620004 */   sw       $v0, 4($v1)
.L802BD66C:
/* 3183BC 802BD66C 8C820008 */  lw        $v0, 8($a0)
/* 3183C0 802BD670 AE220000 */  sw        $v0, ($s1)
/* 3183C4 802BD674 8C820004 */  lw        $v0, 4($a0)
/* 3183C8 802BD678 2403001E */  addiu     $v1, $zero, 0x1e
/* 3183CC 802BD67C AC830000 */  sw        $v1, ($a0)
/* 3183D0 802BD680 24420001 */  addiu     $v0, $v0, 1
/* 3183D4 802BD684 080AF5AE */  j         .L802BD6B8
/* 3183D8 802BD688 AC820004 */   sw       $v0, 4($a0)
.L802BD68C:
/* 3183DC 802BD68C 0C03AE8F */  jal       func_800EBA3C
/* 3183E0 802BD690 0220202D */   daddu    $a0, $s1, $zero
/* 3183E4 802BD694 0C03AED0 */  jal       func_800EBB40
/* 3183E8 802BD698 0220202D */   daddu    $a0, $s1, $zero
/* 3183EC 802BD69C 8E030000 */  lw        $v1, ($s0)
/* 3183F0 802BD6A0 8C620000 */  lw        $v0, ($v1)
/* 3183F4 802BD6A4 2442FFFF */  addiu     $v0, $v0, -1
/* 3183F8 802BD6A8 14400003 */  bnez      $v0, .L802BD6B8
/* 3183FC 802BD6AC AC620000 */   sw       $v0, ($v1)
/* 318400 802BD6B0 AC600004 */  sw        $zero, 4($v1)
/* 318404 802BD6B4 AE600000 */  sw        $zero, ($s3)
.L802BD6B8:
/* 318408 802BD6B8 0000102D */  daddu     $v0, $zero, $zero
.L802BD6BC:
/* 31840C 802BD6BC 8FBF0028 */  lw        $ra, 0x28($sp)
/* 318410 802BD6C0 8FB30024 */  lw        $s3, 0x24($sp)
/* 318414 802BD6C4 8FB20020 */  lw        $s2, 0x20($sp)
/* 318418 802BD6C8 8FB1001C */  lw        $s1, 0x1c($sp)
/* 31841C 802BD6CC 8FB00018 */  lw        $s0, 0x18($sp)
/* 318420 802BD6D0 D7B40030 */  ldc1      $f20, 0x30($sp)
/* 318424 802BD6D4 03E00008 */  jr        $ra
/* 318428 802BD6D8 27BD0038 */   addiu    $sp, $sp, 0x38
