.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80243800_855970
/* 855970 80243800 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 855974 80243804 24040001 */  addiu     $a0, $zero, 1
/* 855978 80243808 27A50010 */  addiu     $a1, $sp, 0x10
/* 85597C 8024380C 27A60014 */  addiu     $a2, $sp, 0x14
/* 855980 80243810 27A70018 */  addiu     $a3, $sp, 0x18
/* 855984 80243814 AFBF0028 */  sw        $ra, 0x28($sp)
/* 855988 80243818 AFB10024 */  sw        $s1, 0x24($sp)
/* 85598C 8024381C 0C0470AC */  jal       func_8011C2B0
/* 855990 80243820 AFB00020 */   sw       $s0, 0x20($sp)
/* 855994 80243824 3C118025 */  lui       $s1, 0x8025
/* 855998 80243828 26310A54 */  addiu     $s1, $s1, 0xa54
/* 85599C 8024382C 8FA40010 */  lw        $a0, 0x10($sp)
/* 8559A0 80243830 8FA50014 */  lw        $a1, 0x14($sp)
/* 8559A4 80243834 8FA60018 */  lw        $a2, 0x18($sp)
/* 8559A8 80243838 0C090D62 */  jal       func_80243588_8556F8
/* 8559AC 8024383C 0220382D */   daddu    $a3, $s1, $zero
/* 8559B0 80243840 3C03800A */  lui       $v1, 0x800a
/* 8559B4 80243844 2463A66C */  addiu     $v1, $v1, -0x5994
/* 8559B8 80243848 8C620000 */  lw        $v0, ($v1)
/* 8559BC 8024384C 24040001 */  addiu     $a0, $zero, 1
/* 8559C0 80243850 0040802D */  daddu     $s0, $v0, $zero
/* 8559C4 80243854 24420008 */  addiu     $v0, $v0, 8
/* 8559C8 80243858 AC620000 */  sw        $v0, ($v1)
/* 8559CC 8024385C 3C02DE00 */  lui       $v0, 0xde00
/* 8559D0 80243860 0C0470BB */  jal       func_8011C2EC
/* 8559D4 80243864 AE020000 */   sw       $v0, ($s0)
/* 8559D8 80243868 8E230000 */  lw        $v1, ($s1)
/* 8559DC 8024386C 04600003 */  bltz      $v1, .L8024387C
/* 8559E0 80243870 AE020004 */   sw       $v0, 4($s0)
/* 8559E4 80243874 24620004 */  addiu     $v0, $v1, 4
/* 8559E8 80243878 AE220000 */  sw        $v0, ($s1)
.L8024387C:
/* 8559EC 8024387C 8E220000 */  lw        $v0, ($s1)
/* 8559F0 80243880 28420168 */  slti      $v0, $v0, 0x168
/* 8559F4 80243884 14400002 */  bnez      $v0, .L80243890
/* 8559F8 80243888 2402FFFF */   addiu    $v0, $zero, -1
/* 8559FC 8024388C AE220000 */  sw        $v0, ($s1)
.L80243890:
/* 855A00 80243890 8FBF0028 */  lw        $ra, 0x28($sp)
/* 855A04 80243894 8FB10024 */  lw        $s1, 0x24($sp)
/* 855A08 80243898 8FB00020 */  lw        $s0, 0x20($sp)
/* 855A0C 8024389C 03E00008 */  jr        $ra
/* 855A10 802438A0 27BD0030 */   addiu    $sp, $sp, 0x30
