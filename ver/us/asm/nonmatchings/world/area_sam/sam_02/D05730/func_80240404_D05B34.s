.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240404_D05B34
/* D05B34 80240404 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* D05B38 80240408 AFB00010 */  sw        $s0, 0x10($sp)
/* D05B3C 8024040C 0080802D */  daddu     $s0, $a0, $zero
/* D05B40 80240410 10A00005 */  beqz      $a1, .L80240428
/* D05B44 80240414 AFBF0014 */   sw       $ra, 0x14($sp)
/* D05B48 80240418 AE000070 */  sw        $zero, 0x70($s0)
/* D05B4C 8024041C AE000074 */  sw        $zero, 0x74($s0)
/* D05B50 80240420 AE000078 */  sw        $zero, 0x78($s0)
/* D05B54 80240424 AE00007C */  sw        $zero, 0x7c($s0)
.L80240428:
/* D05B58 80240428 8E020070 */  lw        $v0, 0x70($s0)
/* D05B5C 8024042C 1440000E */  bnez      $v0, .L80240468
/* D05B60 80240430 00000000 */   nop
/* D05B64 80240434 8E0300A8 */  lw        $v1, 0xa8($s0)
/* D05B68 80240438 8E020088 */  lw        $v0, 0x88($s0)
/* D05B6C 8024043C 00621821 */  addu      $v1, $v1, $v0
/* D05B70 80240440 04610004 */  bgez      $v1, .L80240454
/* D05B74 80240444 AE0300A8 */   sw       $v1, 0xa8($s0)
/* D05B78 80240448 3C020002 */  lui       $v0, 2
/* D05B7C 8024044C 08090119 */  j         .L80240464
/* D05B80 80240450 00621021 */   addu     $v0, $v1, $v0
.L80240454:
/* D05B84 80240454 3C040002 */  lui       $a0, 2
/* D05B88 80240458 0083102A */  slt       $v0, $a0, $v1
/* D05B8C 8024045C 10400002 */  beqz      $v0, .L80240468
/* D05B90 80240460 00641023 */   subu     $v0, $v1, $a0
.L80240464:
/* D05B94 80240464 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80240468:
/* D05B98 80240468 8E020074 */  lw        $v0, 0x74($s0)
/* D05B9C 8024046C 1440000E */  bnez      $v0, .L802404A8
/* D05BA0 80240470 00000000 */   nop
/* D05BA4 80240474 8E0300AC */  lw        $v1, 0xac($s0)
/* D05BA8 80240478 8E02008C */  lw        $v0, 0x8c($s0)
/* D05BAC 8024047C 00621821 */  addu      $v1, $v1, $v0
/* D05BB0 80240480 04610004 */  bgez      $v1, .L80240494
/* D05BB4 80240484 AE0300AC */   sw       $v1, 0xac($s0)
/* D05BB8 80240488 3C020002 */  lui       $v0, 2
/* D05BBC 8024048C 08090129 */  j         .L802404A4
/* D05BC0 80240490 00621021 */   addu     $v0, $v1, $v0
.L80240494:
/* D05BC4 80240494 3C040002 */  lui       $a0, 2
/* D05BC8 80240498 0083102A */  slt       $v0, $a0, $v1
/* D05BCC 8024049C 10400002 */  beqz      $v0, .L802404A8
/* D05BD0 802404A0 00641023 */   subu     $v0, $v1, $a0
.L802404A4:
/* D05BD4 802404A4 AE0200AC */  sw        $v0, 0xac($s0)
.L802404A8:
/* D05BD8 802404A8 8E020078 */  lw        $v0, 0x78($s0)
/* D05BDC 802404AC 1440000E */  bnez      $v0, .L802404E8
/* D05BE0 802404B0 00000000 */   nop
/* D05BE4 802404B4 8E0300B0 */  lw        $v1, 0xb0($s0)
/* D05BE8 802404B8 8E020090 */  lw        $v0, 0x90($s0)
/* D05BEC 802404BC 00621821 */  addu      $v1, $v1, $v0
/* D05BF0 802404C0 04610004 */  bgez      $v1, .L802404D4
/* D05BF4 802404C4 AE0300B0 */   sw       $v1, 0xb0($s0)
/* D05BF8 802404C8 3C020002 */  lui       $v0, 2
/* D05BFC 802404CC 08090139 */  j         .L802404E4
/* D05C00 802404D0 00621021 */   addu     $v0, $v1, $v0
.L802404D4:
/* D05C04 802404D4 3C040002 */  lui       $a0, 2
/* D05C08 802404D8 0083102A */  slt       $v0, $a0, $v1
/* D05C0C 802404DC 10400002 */  beqz      $v0, .L802404E8
/* D05C10 802404E0 00641023 */   subu     $v0, $v1, $a0
.L802404E4:
/* D05C14 802404E4 AE0200B0 */  sw        $v0, 0xb0($s0)
.L802404E8:
/* D05C18 802404E8 8E02007C */  lw        $v0, 0x7c($s0)
/* D05C1C 802404EC 1440000E */  bnez      $v0, .L80240528
/* D05C20 802404F0 00000000 */   nop
/* D05C24 802404F4 8E0300B4 */  lw        $v1, 0xb4($s0)
/* D05C28 802404F8 8E020094 */  lw        $v0, 0x94($s0)
/* D05C2C 802404FC 00621821 */  addu      $v1, $v1, $v0
/* D05C30 80240500 04610004 */  bgez      $v1, .L80240514
/* D05C34 80240504 AE0300B4 */   sw       $v1, 0xb4($s0)
/* D05C38 80240508 3C020002 */  lui       $v0, 2
/* D05C3C 8024050C 08090149 */  j         .L80240524
/* D05C40 80240510 00621021 */   addu     $v0, $v1, $v0
.L80240514:
/* D05C44 80240514 3C040002 */  lui       $a0, 2
/* D05C48 80240518 0083102A */  slt       $v0, $a0, $v1
/* D05C4C 8024051C 10400002 */  beqz      $v0, .L80240528
/* D05C50 80240520 00641023 */   subu     $v0, $v1, $a0
.L80240524:
/* D05C54 80240524 AE0200B4 */  sw        $v0, 0xb4($s0)
.L80240528:
/* D05C58 80240528 8E040084 */  lw        $a0, 0x84($s0)
/* D05C5C 8024052C 0C046F07 */  jal       set_main_pan_u
/* D05C60 80240530 8E0500A8 */   lw       $a1, 0xa8($s0)
/* D05C64 80240534 8E040084 */  lw        $a0, 0x84($s0)
/* D05C68 80240538 0C046F0D */  jal       set_main_pan_v
/* D05C6C 8024053C 8E0500AC */   lw       $a1, 0xac($s0)
/* D05C70 80240540 8E040084 */  lw        $a0, 0x84($s0)
/* D05C74 80240544 0C046F13 */  jal       set_aux_pan_u
/* D05C78 80240548 8E0500B0 */   lw       $a1, 0xb0($s0)
/* D05C7C 8024054C 8E040084 */  lw        $a0, 0x84($s0)
/* D05C80 80240550 0C046F19 */  jal       set_aux_pan_v
/* D05C84 80240554 8E0500B4 */   lw       $a1, 0xb4($s0)
/* D05C88 80240558 8E020070 */  lw        $v0, 0x70($s0)
/* D05C8C 8024055C 8E030078 */  lw        $v1, 0x78($s0)
/* D05C90 80240560 8E040098 */  lw        $a0, 0x98($s0)
/* D05C94 80240564 24420001 */  addiu     $v0, $v0, 1
/* D05C98 80240568 AE020070 */  sw        $v0, 0x70($s0)
/* D05C9C 8024056C 8E020074 */  lw        $v0, 0x74($s0)
/* D05CA0 80240570 24630001 */  addiu     $v1, $v1, 1
/* D05CA4 80240574 AE030078 */  sw        $v1, 0x78($s0)
/* D05CA8 80240578 8E030070 */  lw        $v1, 0x70($s0)
/* D05CAC 8024057C 24420001 */  addiu     $v0, $v0, 1
/* D05CB0 80240580 AE020074 */  sw        $v0, 0x74($s0)
/* D05CB4 80240584 8E02007C */  lw        $v0, 0x7c($s0)
/* D05CB8 80240588 0064182A */  slt       $v1, $v1, $a0
/* D05CBC 8024058C 24420001 */  addiu     $v0, $v0, 1
/* D05CC0 80240590 14600002 */  bnez      $v1, .L8024059C
/* D05CC4 80240594 AE02007C */   sw       $v0, 0x7c($s0)
/* D05CC8 80240598 AE000070 */  sw        $zero, 0x70($s0)
.L8024059C:
/* D05CCC 8024059C 8E020074 */  lw        $v0, 0x74($s0)
/* D05CD0 802405A0 8E03009C */  lw        $v1, 0x9c($s0)
/* D05CD4 802405A4 0043102A */  slt       $v0, $v0, $v1
/* D05CD8 802405A8 50400001 */  beql      $v0, $zero, .L802405B0
/* D05CDC 802405AC AE000074 */   sw       $zero, 0x74($s0)
.L802405B0:
/* D05CE0 802405B0 8E020078 */  lw        $v0, 0x78($s0)
/* D05CE4 802405B4 8E0300A0 */  lw        $v1, 0xa0($s0)
/* D05CE8 802405B8 0043102A */  slt       $v0, $v0, $v1
/* D05CEC 802405BC 50400001 */  beql      $v0, $zero, .L802405C4
/* D05CF0 802405C0 AE000078 */   sw       $zero, 0x78($s0)
.L802405C4:
/* D05CF4 802405C4 8E02007C */  lw        $v0, 0x7c($s0)
/* D05CF8 802405C8 8E0300A4 */  lw        $v1, 0xa4($s0)
/* D05CFC 802405CC 0043102A */  slt       $v0, $v0, $v1
/* D05D00 802405D0 50400001 */  beql      $v0, $zero, .L802405D8
/* D05D04 802405D4 AE00007C */   sw       $zero, 0x7c($s0)
.L802405D8:
/* D05D08 802405D8 8FBF0014 */  lw        $ra, 0x14($sp)
/* D05D0C 802405DC 8FB00010 */  lw        $s0, 0x10($sp)
/* D05D10 802405E0 0000102D */  daddu     $v0, $zero, $zero
/* D05D14 802405E4 03E00008 */  jr        $ra
/* D05D18 802405E8 27BD0018 */   addiu    $sp, $sp, 0x18
