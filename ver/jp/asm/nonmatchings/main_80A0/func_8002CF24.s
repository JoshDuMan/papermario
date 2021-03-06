.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8002CF24
/* 8324 8002CF24 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 8328 8002CF28 3C0A800A */  lui       $t2, %hi(D_8009C4F0)
/* 832C 8002CF2C 254AC4F0 */  addiu     $t2, $t2, %lo(D_8009C4F0)
/* 8330 8002CF30 00071402 */  srl       $v0, $a3, 0x10
/* 8334 8002CF34 AFBF0014 */  sw        $ra, 0x14($sp)
/* 8338 8002CF38 AFB00010 */  sw        $s0, 0x10($sp)
/* 833C 8002CF3C 8D480000 */  lw        $t0, ($t2)
/* 8340 8002CF40 000630C0 */  sll       $a2, $a2, 3
/* 8344 8002CF44 AD020014 */  sw        $v0, 0x14($t0)
/* 8348 8002CF48 3C02800A */  lui       $v0, %hi(D_8009A5F0)
/* 834C 8002CF4C 8C42A5F0 */  lw        $v0, %lo(D_8009A5F0)($v0)
/* 8350 8002CF50 3C0B800A */  lui       $t3, %hi(D_8009A62C)
/* 8354 8002CF54 256BA62C */  addiu     $t3, $t3, %lo(D_8009A62C)
/* 8358 8002CF58 AD040040 */  sw        $a0, 0x40($t0)
/* 835C 8002CF5C AD050044 */  sw        $a1, 0x44($t0)
/* 8360 8002CF60 00C23021 */  addu      $a2, $a2, $v0
/* 8364 8002CF64 8CC20000 */  lw        $v0, ($a2)
/* 8368 8002CF68 3C098007 */  lui       $t1, %hi(D_800773DC)
/* 836C 8002CF6C 252973DC */  addiu     $t1, $t1, %lo(D_800773DC)
/* 8370 8002CF70 AD020020 */  sw        $v0, 0x20($t0)
/* 8374 8002CF74 8CC40004 */  lw        $a0, 4($a2)
/* 8378 8002CF78 8D630000 */  lw        $v1, ($t3)
/* 837C 8002CF7C 95250000 */  lhu       $a1, ($t1)
/* 8380 8002CF80 30E2FFFF */  andi      $v0, $a3, 0xffff
/* 8384 8002CF84 AD020008 */  sw        $v0, 8($t0)
/* 8388 8002CF88 30A20004 */  andi      $v0, $a1, 4
/* 838C 8002CF8C AD03000C */  sw        $v1, 0xc($t0)
/* 8390 8002CF90 10400006 */  beqz      $v0, .L8002CFAC
/* 8394 8002CF94 AD040028 */   sw       $a0, 0x28($t0)
/* 8398 8002CF98 8D020014 */  lw        $v0, 0x14($t0)
/* 839C 8002CF9C 38A30004 */  xori      $v1, $a1, 4
/* 83A0 8002CFA0 A5230000 */  sh        $v1, ($t1)
/* 83A4 8002CFA4 34420002 */  ori       $v0, $v0, 2
/* 83A8 8002CFA8 AD020014 */  sw        $v0, 0x14($t0)
.L8002CFAC:
/* 83AC 8002CFAC 30E20001 */  andi      $v0, $a3, 1
/* 83B0 8002CFB0 10400017 */  beqz      $v0, .L8002D010
/* 83B4 8002CFB4 A5270000 */   sh       $a3, ($t1)
/* 83B8 8002CFB8 3C05800A */  lui       $a1, %hi(D_8009A5D0)
/* 83BC 8002CFBC 24A5A5D0 */  addiu     $a1, $a1, %lo(D_8009A5D0)
/* 83C0 8002CFC0 8CA20000 */  lw        $v0, ($a1)
/* 83C4 8002CFC4 3C038007 */  lui       $v1, %hi(D_800773D0)
/* 83C8 8002CFC8 8C6373D0 */  lw        $v1, %lo(D_800773D0)($v1)
/* 83CC 8002CFCC 24420001 */  addiu     $v0, $v0, 1
/* 83D0 8002CFD0 14600002 */  bnez      $v1, .L8002CFDC
/* 83D4 8002CFD4 0043001B */   divu     $zero, $v0, $v1
/* 83D8 8002CFD8 0007000D */  break     7
.L8002CFDC:
/* 83DC 8002CFDC 00002010 */   mfhi     $a0
/* 83E0 8002CFE0 8D430000 */  lw        $v1, ($t2)
/* 83E4 8002CFE4 3C02800A */  lui       $v0, %hi(D_8009C4F6)
/* 83E8 8002CFE8 2442C4F6 */  addiu     $v0, $v0, %lo(D_8009C4F6)
/* 83EC 8002CFEC AC620054 */  sw        $v0, 0x54($v1)
/* 83F0 8002CFF0 3C03800A */  lui       $v1, %hi(D_8009A638)
/* 83F4 8002CFF4 8C63A638 */  lw        $v1, %lo(D_8009A638)($v1)
/* 83F8 8002CFF8 00041080 */  sll       $v0, $a0, 2
/* 83FC 8002CFFC 00431021 */  addu      $v0, $v0, $v1
/* 8400 8002D000 8C420000 */  lw        $v0, ($v0)
/* 8404 8002D004 ACA40000 */  sw        $a0, ($a1)
/* 8408 8002D008 0800B408 */  j         .L8002D020
/* 840C 8002D00C AD620000 */   sw       $v0, ($t3)
.L8002D010:
/* 8410 8002D010 8D430000 */  lw        $v1, ($t2)
/* 8414 8002D014 3C02800A */  lui       $v0, %hi(D_8009C4F4)
/* 8418 8002D018 2442C4F4 */  addiu     $v0, $v0, %lo(D_8009C4F4)
/* 841C 8002D01C AC620054 */  sw        $v0, 0x54($v1)
.L8002D020:
/* 8420 8002D020 0C018244 */  jal       func_80060910
/* 8424 8002D024 24040001 */   addiu    $a0, $zero, 1
/* 8428 8002D028 3C05800A */  lui       $a1, %hi(D_8009A5F8)
/* 842C 8002D02C 24A5A5F8 */  addiu     $a1, $a1, %lo(D_8009A5F8)
/* 8430 8002D030 8CA30000 */  lw        $v1, ($a1)
/* 8434 8002D034 0040202D */  daddu     $a0, $v0, $zero
/* 8438 8002D038 24630001 */  addiu     $v1, $v1, 1
/* 843C 8002D03C 0C018244 */  jal       func_80060910
/* 8440 8002D040 ACA30000 */   sw       $v1, ($a1)
/* 8444 8002D044 0C018628 */  jal       func_800618A0
/* 8448 8002D048 00000000 */   nop
/* 844C 8002D04C 3C04800E */  lui       $a0, %hi(D_800DA45C)
/* 8450 8002D050 2484A45C */  addiu     $a0, $a0, %lo(D_800DA45C)
/* 8454 8002D054 3C10800A */  lui       $s0, %hi(D_8009C4F0)
/* 8458 8002D058 2610C4F0 */  addiu     $s0, $s0, %lo(D_8009C4F0)
/* 845C 8002D05C 8E050000 */  lw        $a1, ($s0)
/* 8460 8002D060 0C0195FC */  jal       func_800657F0
/* 8464 8002D064 24060001 */   addiu    $a2, $zero, 1
/* 8468 8002D068 8E020000 */  lw        $v0, ($s0)
/* 846C 8002D06C 8C420000 */  lw        $v0, ($v0)
/* 8470 8002D070 AE020000 */  sw        $v0, ($s0)
/* 8474 8002D074 8FBF0014 */  lw        $ra, 0x14($sp)
/* 8478 8002D078 8FB00010 */  lw        $s0, 0x10($sp)
/* 847C 8002D07C 03E00008 */  jr        $ra
/* 8480 8002D080 27BD0018 */   addiu    $sp, $sp, 0x18
/* 8484 8002D084 00000000 */  nop
/* 8488 8002D088 00000000 */  nop
/* 848C 8002D08C 00000000 */  nop
