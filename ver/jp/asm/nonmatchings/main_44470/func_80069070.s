.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80069070
/* 44470 80069070 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 44474 80069074 AFB00038 */  sw        $s0, 0x38($sp)
/* 44478 80069078 00808021 */  addu      $s0, $a0, $zero
/* 4447C 8006907C AFB40048 */  sw        $s4, 0x48($sp)
/* 44480 80069080 00A0A021 */  addu      $s4, $a1, $zero
/* 44484 80069084 AFBF004C */  sw        $ra, 0x4c($sp)
/* 44488 80069088 AFB30044 */  sw        $s3, 0x44($sp)
/* 4448C 8006908C AFB20040 */  sw        $s2, 0x40($sp)
/* 44490 80069090 AFB1003C */  sw        $s1, 0x3c($sp)
/* 44494 80069094 8E020000 */  lw        $v0, ($s0)
/* 44498 80069098 00C09821 */  addu      $s3, $a2, $zero
/* 4449C 8006909C 30420001 */  andi      $v0, $v0, 1
/* 444A0 800690A0 14400003 */  bnez      $v0, .L800690B0
/* 444A4 800690A4 00009021 */   addu     $s2, $zero, $zero
/* 444A8 800690A8 0801A454 */  j         .L80069150
/* 444AC 800690AC 24020005 */   addiu    $v0, $zero, 5
.L800690B0:
/* 444B0 800690B0 0C01A76D */  jal       func_80069DB4
/* 444B4 800690B4 02002021 */   addu     $a0, $s0, $zero
/* 444B8 800690B8 14400025 */  bnez      $v0, .L80069150
/* 444BC 800690BC 00000000 */   nop
/* 444C0 800690C0 92020065 */  lbu       $v0, 0x65($s0)
/* 444C4 800690C4 10400005 */  beqz      $v0, .L800690DC
/* 444C8 800690C8 02002021 */   addu     $a0, $s0, $zero
/* 444CC 800690CC 0C01A5AC */  jal       func_800696B0
/* 444D0 800690D0 00002821 */   addu     $a1, $zero, $zero
/* 444D4 800690D4 1440001E */  bnez      $v0, .L80069150
/* 444D8 800690D8 00000000 */   nop
.L800690DC:
/* 444DC 800690DC 8E020050 */  lw        $v0, 0x50($s0)
/* 444E0 800690E0 18400015 */  blez      $v0, .L80069138
/* 444E4 800690E4 00008821 */   addu     $s1, $zero, $zero
.L800690E8:
/* 444E8 800690E8 8E06005C */  lw        $a2, 0x5c($s0)
/* 444EC 800690EC 8E040004 */  lw        $a0, 4($s0)
/* 444F0 800690F0 8E050008 */  lw        $a1, 8($s0)
/* 444F4 800690F4 27A70010 */  addiu     $a3, $sp, 0x10
/* 444F8 800690F8 00D13021 */  addu      $a2, $a2, $s1
/* 444FC 800690FC 0C01A86C */  jal       func_8006A1B0
/* 44500 80069100 30C6FFFF */   andi     $a2, $a2, 0xffff
/* 44504 80069104 14400012 */  bnez      $v0, .L80069150
/* 44508 80069108 00000000 */   nop
/* 4450C 8006910C 97A20014 */  lhu       $v0, 0x14($sp)
/* 44510 80069110 10400004 */  beqz      $v0, .L80069124
/* 44514 80069114 00000000 */   nop
/* 44518 80069118 8FA20010 */  lw        $v0, 0x10($sp)
/* 4451C 8006911C 0002102B */  sltu      $v0, $zero, $v0
/* 44520 80069120 02429021 */  addu      $s2, $s2, $v0
.L80069124:
/* 44524 80069124 8E020050 */  lw        $v0, 0x50($s0)
/* 44528 80069128 26310001 */  addiu     $s1, $s1, 1
/* 4452C 8006912C 0222102A */  slt       $v0, $s1, $v0
/* 44530 80069130 1440FFED */  bnez      $v0, .L800690E8
/* 44534 80069134 00000000 */   nop
.L80069138:
/* 44538 80069138 AE720000 */  sw        $s2, ($s3)
/* 4453C 8006913C 8E020050 */  lw        $v0, 0x50($s0)
/* 44540 80069140 AE820000 */  sw        $v0, ($s4)
/* 44544 80069144 8E040004 */  lw        $a0, 4($s0)
/* 44548 80069148 0C01A528 */  jal       func_800694A0
/* 4454C 8006914C 8E050008 */   lw       $a1, 8($s0)
.L80069150:
/* 44550 80069150 8FBF004C */  lw        $ra, 0x4c($sp)
/* 44554 80069154 8FB40048 */  lw        $s4, 0x48($sp)
/* 44558 80069158 8FB30044 */  lw        $s3, 0x44($sp)
/* 4455C 8006915C 8FB20040 */  lw        $s2, 0x40($sp)
/* 44560 80069160 8FB1003C */  lw        $s1, 0x3c($sp)
/* 44564 80069164 8FB00038 */  lw        $s0, 0x38($sp)
/* 44568 80069168 03E00008 */  jr        $ra
/* 4456C 8006916C 27BD0050 */   addiu    $sp, $sp, 0x50
