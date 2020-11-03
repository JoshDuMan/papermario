.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802404AC_87A08C
/* 87A08C 802404AC 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 87A090 802404B0 AFB5002C */  sw        $s5, 0x2c($sp)
/* 87A094 802404B4 0080A82D */  daddu     $s5, $a0, $zero
/* 87A098 802404B8 AFBE0038 */  sw        $fp, 0x38($sp)
/* 87A09C 802404BC 3C1E8011 */  lui       $fp, %hi(gPlayerData)
/* 87A0A0 802404C0 27DEF290 */  addiu     $fp, $fp, %lo(gPlayerData)
/* 87A0A4 802404C4 AFBF003C */  sw        $ra, 0x3c($sp)
/* 87A0A8 802404C8 AFB70034 */  sw        $s7, 0x34($sp)
/* 87A0AC 802404CC AFB60030 */  sw        $s6, 0x30($sp)
/* 87A0B0 802404D0 AFB40028 */  sw        $s4, 0x28($sp)
/* 87A0B4 802404D4 AFB30024 */  sw        $s3, 0x24($sp)
/* 87A0B8 802404D8 AFB20020 */  sw        $s2, 0x20($sp)
/* 87A0BC 802404DC AFB1001C */  sw        $s1, 0x1c($sp)
/* 87A0C0 802404E0 10A0004F */  beqz      $a1, .L80240620
/* 87A0C4 802404E4 AFB00018 */   sw       $s0, 0x18($sp)
/* 87A0C8 802404E8 0C00AB39 */  jal       heap_malloc
/* 87A0CC 802404EC 24040330 */   addiu    $a0, $zero, 0x330
/* 87A0D0 802404F0 0040982D */  daddu     $s3, $v0, $zero
/* 87A0D4 802404F4 0000B02D */  daddu     $s6, $zero, $zero
/* 87A0D8 802404F8 02C0902D */  daddu     $s2, $s6, $zero
/* 87A0DC 802404FC 3C148024 */  lui       $s4, 0x8024
/* 87A0E0 80240500 269439F8 */  addiu     $s4, $s4, 0x39f8
/* 87A0E4 80240504 0260882D */  daddu     $s1, $s3, $zero
/* 87A0E8 80240508 8EA200B4 */  lw        $v0, 0xb4($s5)
/* 87A0EC 8024050C 3C038024 */  lui       $v1, 0x8024
/* 87A0F0 80240510 246339F0 */  addiu     $v1, $v1, 0x39f0
/* 87A0F4 80240514 AEB30078 */  sw        $s3, 0x78($s5)
/* 87A0F8 80240518 00021027 */  nor       $v0, $zero, $v0
/* 87A0FC 8024051C 0002BFC2 */  srl       $s7, $v0, 0x1f
/* 87A100 80240520 00171080 */  sll       $v0, $s7, 2
/* 87A104 80240524 00431021 */  addu      $v0, $v0, $v1
/* 87A108 80240528 AFA20010 */  sw        $v0, 0x10($sp)
.L8024052C:
/* 87A10C 8024052C 86900000 */  lh        $s0, ($s4)
/* 87A110 80240530 001010C0 */  sll       $v0, $s0, 3
/* 87A114 80240534 03C21021 */  addu      $v0, $fp, $v0
/* 87A118 80240538 90420014 */  lbu       $v0, 0x14($v0)
/* 87A11C 8024053C 5040002E */  beql      $v0, $zero, .L802405F8
/* 87A120 80240540 26520001 */   addiu    $s2, $s2, 1
/* 87A124 80240544 00101100 */  sll       $v0, $s0, 4
/* 87A128 80240548 3C068009 */  lui       $a2, 0x8009
/* 87A12C 8024054C 24C6EF20 */  addiu     $a2, $a2, -0x10e0
/* 87A130 80240550 00461021 */  addu      $v0, $v0, $a2
/* 87A134 80240554 0200202D */  daddu     $a0, $s0, $zero
/* 87A138 80240558 AE300108 */  sw        $s0, 0x108($s1)
/* 87A13C 8024055C 8C420000 */  lw        $v0, ($v0)
/* 87A140 80240560 02E0282D */  daddu     $a1, $s7, $zero
/* 87A144 80240564 0C0900ED */  jal       func_802403B4_879F94
/* 87A148 80240568 AE220084 */   sw       $v0, 0x84($s1)
/* 87A14C 8024056C 0040202D */  daddu     $a0, $v0, $zero
/* 87A150 80240570 04800011 */  bltz      $a0, .L802405B8
/* 87A154 80240574 00101080 */   sll      $v0, $s0, 2
/* 87A158 80240578 3C06800F */  lui       $a2, 0x800f
/* 87A15C 8024057C 24C67F00 */  addiu     $a2, $a2, 0x7f00
/* 87A160 80240580 00461021 */  addu      $v0, $v0, $a2
/* 87A164 80240584 8C430000 */  lw        $v1, ($v0)
/* 87A168 80240588 24020001 */  addiu     $v0, $zero, 1
/* 87A16C 8024058C AE22018C */  sw        $v0, 0x18c($s1)
/* 87A170 80240590 00041080 */  sll       $v0, $a0, 2
/* 87A174 80240594 3C068024 */  lui       $a2, 0x8024
/* 87A178 80240598 24C63A08 */  addiu     $a2, $a2, 0x3a08
/* 87A17C 8024059C AE230000 */  sw        $v1, ($s1)
/* 87A180 802405A0 001218C0 */  sll       $v1, $s2, 3
/* 87A184 802405A4 00431021 */  addu      $v0, $v0, $v1
/* 87A188 802405A8 00461021 */  addu      $v0, $v0, $a2
/* 87A18C 802405AC 8C420000 */  lw        $v0, ($v0)
/* 87A190 802405B0 08090177 */  j         .L802405DC
/* 87A194 802405B4 AE220294 */   sw       $v0, 0x294($s1)
.L802405B8:
/* 87A198 802405B8 3C06800F */  lui       $a2, 0x800f
/* 87A19C 802405BC 24C67F40 */  addiu     $a2, $a2, 0x7f40
/* 87A1A0 802405C0 00461021 */  addu      $v0, $v0, $a2
/* 87A1A4 802405C4 8C420000 */  lw        $v0, ($v0)
/* 87A1A8 802405C8 AE20018C */  sw        $zero, 0x18c($s1)
/* 87A1AC 802405CC AE220000 */  sw        $v0, ($s1)
/* 87A1B0 802405D0 8FA60010 */  lw        $a2, 0x10($sp)
/* 87A1B4 802405D4 8CC20000 */  lw        $v0, ($a2)
/* 87A1B8 802405D8 AE220294 */  sw        $v0, 0x294($s1)
.L802405DC:
/* 87A1BC 802405DC 001010C0 */  sll       $v0, $s0, 3
/* 87A1C0 802405E0 03C21021 */  addu      $v0, $fp, $v0
/* 87A1C4 802405E4 80420015 */  lb        $v0, 0x15($v0)
/* 87A1C8 802405E8 26D60001 */  addiu     $s6, $s6, 1
/* 87A1CC 802405EC AE220210 */  sw        $v0, 0x210($s1)
/* 87A1D0 802405F0 26310004 */  addiu     $s1, $s1, 4
/* 87A1D4 802405F4 26520001 */  addiu     $s2, $s2, 1
.L802405F8:
/* 87A1D8 802405F8 2A420008 */  slti      $v0, $s2, 8
/* 87A1DC 802405FC 1440FFCB */  bnez      $v0, .L8024052C
/* 87A1E0 80240600 26940002 */   addiu    $s4, $s4, 2
/* 87A1E4 80240604 0260202D */  daddu     $a0, $s3, $zero
/* 87A1E8 80240608 24020004 */  addiu     $v0, $zero, 4
/* 87A1EC 8024060C AC820318 */  sw        $v0, 0x318($a0)
/* 87A1F0 80240610 AC960324 */  sw        $s6, 0x324($a0)
/* 87A1F4 80240614 0C03D390 */  jal       func_800F4E40
/* 87A1F8 80240618 AC800328 */   sw       $zero, 0x328($a0)
/* 87A1FC 8024061C AEA00070 */  sw        $zero, 0x70($s5)
.L80240620:
/* 87A200 80240620 8EA20070 */  lw        $v0, 0x70($s5)
/* 87A204 80240624 8EB30078 */  lw        $s3, 0x78($s5)
/* 87A208 80240628 14400008 */  bnez      $v0, .L8024064C
/* 87A20C 8024062C 24420001 */   addiu    $v0, $v0, 1
/* 87A210 80240630 8662032C */  lh        $v0, 0x32c($s3)
/* 87A214 80240634 10400009 */  beqz      $v0, .L8024065C
/* 87A218 80240638 AEA20074 */   sw       $v0, 0x74($s5)
/* 87A21C 8024063C 0C03C4EC */  jal       func_800F13B0
/* 87A220 80240640 00000000 */   nop      
/* 87A224 80240644 8EA20070 */  lw        $v0, 0x70($s5)
/* 87A228 80240648 24420001 */  addiu     $v0, $v0, 1
.L8024064C:
/* 87A22C 8024064C AEA20070 */  sw        $v0, 0x70($s5)
/* 87A230 80240650 2842000F */  slti      $v0, $v0, 0xf
/* 87A234 80240654 10400003 */  beqz      $v0, .L80240664
/* 87A238 80240658 00000000 */   nop      
.L8024065C:
/* 87A23C 8024065C 080901B3 */  j         .L802406CC
/* 87A240 80240660 0000102D */   daddu    $v0, $zero, $zero
.L80240664:
/* 87A244 80240664 0C03C54E */  jal       func_800F1538
/* 87A248 80240668 00000000 */   nop      
/* 87A24C 8024066C 8EA30074 */  lw        $v1, 0x74($s5)
/* 87A250 80240670 240200FF */  addiu     $v0, $zero, 0xff
/* 87A254 80240674 10620010 */  beq       $v1, $v0, .L802406B8
/* 87A258 80240678 2462FFFF */   addiu    $v0, $v1, -1
/* 87A25C 8024067C 00021080 */  sll       $v0, $v0, 2
/* 87A260 80240680 02621021 */  addu      $v0, $s3, $v0
/* 87A264 80240684 8C420108 */  lw        $v0, 0x108($v0)
/* 87A268 80240688 00021100 */  sll       $v0, $v0, 4
/* 87A26C 8024068C 3C038009 */  lui       $v1, 0x8009
/* 87A270 80240690 00621821 */  addu      $v1, $v1, $v0
/* 87A274 80240694 8C63EF20 */  lw        $v1, -0x10e0($v1)
/* 87A278 80240698 8EA20074 */  lw        $v0, 0x74($s5)
/* 87A27C 8024069C 2442FFFF */  addiu     $v0, $v0, -1
/* 87A280 802406A0 00021080 */  sll       $v0, $v0, 2
/* 87A284 802406A4 02621021 */  addu      $v0, $s3, $v0
/* 87A288 802406A8 AEA30084 */  sw        $v1, 0x84($s5)
/* 87A28C 802406AC 8C420108 */  lw        $v0, 0x108($v0)
/* 87A290 802406B0 080901B0 */  j         .L802406C0
/* 87A294 802406B4 AEA20088 */   sw       $v0, 0x88($s5)
.L802406B8:
/* 87A298 802406B8 2402FFFF */  addiu     $v0, $zero, -1
/* 87A29C 802406BC AEA20084 */  sw        $v0, 0x84($s5)
.L802406C0:
/* 87A2A0 802406C0 0C00AB4B */  jal       heap_free
/* 87A2A4 802406C4 8EA40078 */   lw       $a0, 0x78($s5)
/* 87A2A8 802406C8 24020002 */  addiu     $v0, $zero, 2
.L802406CC:
/* 87A2AC 802406CC 8FBF003C */  lw        $ra, 0x3c($sp)
/* 87A2B0 802406D0 8FBE0038 */  lw        $fp, 0x38($sp)
/* 87A2B4 802406D4 8FB70034 */  lw        $s7, 0x34($sp)
/* 87A2B8 802406D8 8FB60030 */  lw        $s6, 0x30($sp)
/* 87A2BC 802406DC 8FB5002C */  lw        $s5, 0x2c($sp)
/* 87A2C0 802406E0 8FB40028 */  lw        $s4, 0x28($sp)
/* 87A2C4 802406E4 8FB30024 */  lw        $s3, 0x24($sp)
/* 87A2C8 802406E8 8FB20020 */  lw        $s2, 0x20($sp)
/* 87A2CC 802406EC 8FB1001C */  lw        $s1, 0x1c($sp)
/* 87A2D0 802406F0 8FB00018 */  lw        $s0, 0x18($sp)
/* 87A2D4 802406F4 03E00008 */  jr        $ra
/* 87A2D8 802406F8 27BD0040 */   addiu    $sp, $sp, 0x40
