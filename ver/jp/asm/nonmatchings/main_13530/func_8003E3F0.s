.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8003E3F0
/* 197F0 8003E3F0 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 197F4 8003E3F4 AFBF001C */  sw        $ra, 0x1c($sp)
/* 197F8 8003E3F8 AFB20018 */  sw        $s2, 0x18($sp)
/* 197FC 8003E3FC AFB10014 */  sw        $s1, 0x14($sp)
/* 19800 8003E400 AFB00010 */  sw        $s0, 0x10($sp)
/* 19804 8003E404 80820004 */  lb        $v0, 4($a0)
/* 19808 8003E408 00021080 */  sll       $v0, $v0, 2
/* 1980C 8003E40C 3C12800B */  lui       $s2, %hi(D_800B0F18)
/* 19810 8003E410 02429021 */  addu      $s2, $s2, $v0
/* 19814 8003E414 8E520F18 */  lw        $s2, %lo(D_800B0F18)($s2)
/* 19818 8003E418 8E420000 */  lw        $v0, ($s2)
/* 1981C 8003E41C 1840000D */  blez      $v0, .L8003E454
/* 19820 8003E420 0000882D */   daddu    $s1, $zero, $zero
/* 19824 8003E424 0240802D */  daddu     $s0, $s2, $zero
.L8003E428:
/* 19828 8003E428 8E040004 */  lw        $a0, 4($s0)
/* 1982C 8003E42C 10800004 */  beqz      $a0, .L8003E440
/* 19830 8003E430 00000000 */   nop
/* 19834 8003E434 0C00F91B */  jal       func_8003E46C
/* 19838 8003E438 00000000 */   nop
/* 1983C 8003E43C AE000004 */  sw        $zero, 4($s0)
.L8003E440:
/* 19840 8003E440 8E420000 */  lw        $v0, ($s2)
/* 19844 8003E444 26310001 */  addiu     $s1, $s1, 1
/* 19848 8003E448 0222102A */  slt       $v0, $s1, $v0
/* 1984C 8003E44C 1440FFF6 */  bnez      $v0, .L8003E428
/* 19850 8003E450 26100004 */   addiu    $s0, $s0, 4
.L8003E454:
/* 19854 8003E454 8FBF001C */  lw        $ra, 0x1c($sp)
/* 19858 8003E458 8FB20018 */  lw        $s2, 0x18($sp)
/* 1985C 8003E45C 8FB10014 */  lw        $s1, 0x14($sp)
/* 19860 8003E460 8FB00010 */  lw        $s0, 0x10($sp)
/* 19864 8003E464 03E00008 */  jr        $ra
/* 19868 8003E468 27BD0020 */   addiu    $sp, $sp, 0x20