.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802404B0_831CB0
/* 831CB0 802404B0 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 831CB4 802404B4 AFB00010 */  sw        $s0, 0x10($sp)
/* 831CB8 802404B8 3C108024 */  lui       $s0, %hi(D_80246644_837E44)
/* 831CBC 802404BC 26106644 */  addiu     $s0, $s0, %lo(D_80246644_837E44)
/* 831CC0 802404C0 AFBF0018 */  sw        $ra, 0x18($sp)
/* 831CC4 802404C4 AFB10014 */  sw        $s1, 0x14($sp)
/* 831CC8 802404C8 8E020000 */  lw        $v0, ($s0)
/* 831CCC 802404CC 14400010 */  bnez      $v0, .L80240510
/* 831CD0 802404D0 0080882D */   daddu    $s1, $a0, $zero
/* 831CD4 802404D4 0C00AB39 */  jal       heap_malloc
/* 831CD8 802404D8 24040040 */   addiu    $a0, $zero, 0x40
/* 831CDC 802404DC AE020000 */  sw        $v0, ($s0)
/* 831CE0 802404E0 0000182D */  daddu     $v1, $zero, $zero
/* 831CE4 802404E4 0040282D */  daddu     $a1, $v0, $zero
/* 831CE8 802404E8 0220202D */  daddu     $a0, $s1, $zero
.L802404EC:
/* 831CEC 802404EC 8C820084 */  lw        $v0, 0x84($a0)
/* 831CF0 802404F0 24840004 */  addiu     $a0, $a0, 4
/* 831CF4 802404F4 24630001 */  addiu     $v1, $v1, 1
/* 831CF8 802404F8 ACA20000 */  sw        $v0, ($a1)
/* 831CFC 802404FC 28620010 */  slti      $v0, $v1, 0x10
/* 831D00 80240500 1440FFFA */  bnez      $v0, .L802404EC
/* 831D04 80240504 24A50004 */   addiu    $a1, $a1, 4
/* 831D08 80240508 08090153 */  j         .L8024054C
/* 831D0C 8024050C 00000000 */   nop
.L80240510:
/* 831D10 80240510 0000182D */  daddu     $v1, $zero, $zero
/* 831D14 80240514 0040282D */  daddu     $a1, $v0, $zero
/* 831D18 80240518 0220202D */  daddu     $a0, $s1, $zero
.L8024051C:
/* 831D1C 8024051C 8CA20000 */  lw        $v0, ($a1)
/* 831D20 80240520 24A50004 */  addiu     $a1, $a1, 4
/* 831D24 80240524 24630001 */  addiu     $v1, $v1, 1
/* 831D28 80240528 AC820084 */  sw        $v0, 0x84($a0)
/* 831D2C 8024052C 28620010 */  slti      $v0, $v1, 0x10
/* 831D30 80240530 1440FFFA */  bnez      $v0, .L8024051C
/* 831D34 80240534 24840004 */   addiu    $a0, $a0, 4
/* 831D38 80240538 3C108024 */  lui       $s0, %hi(D_80246644_837E44)
/* 831D3C 8024053C 26106644 */  addiu     $s0, $s0, %lo(D_80246644_837E44)
/* 831D40 80240540 0C00AB4B */  jal       heap_free
/* 831D44 80240544 8E040000 */   lw       $a0, ($s0)
/* 831D48 80240548 AE000000 */  sw        $zero, ($s0)
.L8024054C:
/* 831D4C 8024054C 8FBF0018 */  lw        $ra, 0x18($sp)
/* 831D50 80240550 8FB10014 */  lw        $s1, 0x14($sp)
/* 831D54 80240554 8FB00010 */  lw        $s0, 0x10($sp)
/* 831D58 80240558 24020002 */  addiu     $v0, $zero, 2
/* 831D5C 8024055C 03E00008 */  jr        $ra
/* 831D60 80240560 27BD0020 */   addiu    $sp, $sp, 0x20
