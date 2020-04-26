
.section .text80065C50, "ax"

osSpTaskYield:
/* 041050 80065C50 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 041054 80065C54 AFBF0010 */  sw    $ra, 0x10($sp)
/* 041058 80065C58 0C01B1BC */  jal   osSpSetStatus
/* 04105C 80065C5C 24040400 */   addiu $a0, $zero, 0x400
/* 041060 80065C60 8FBF0010 */  lw    $ra, 0x10($sp)
/* 041064 80065C64 03E00008 */  jr    $ra
/* 041068 80065C68 27BD0018 */   addiu $sp, $sp, 0x18

/* 04106C 80065C6C 00000000 */  nop   
osSpTaskYielded:
/* 041070 80065C70 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 041074 80065C74 AFB00010 */  sw    $s0, 0x10($sp)
/* 041078 80065C78 AFBF0014 */  sw    $ra, 0x14($sp)
/* 04107C 80065C7C 0C01B1B8 */  jal   osSpGetStatus
/* 041080 80065C80 00808021 */   addu  $s0, $a0, $zero
/* 041084 80065C84 00022202 */  srl   $a0, $v0, 8
/* 041088 80065C88 30420080 */  andi  $v0, $v0, 0x80
/* 04108C 80065C8C 10400006 */  beqz  $v0, .L80065CA8
/* 041090 80065C90 30840001 */   andi  $a0, $a0, 1
/* 041094 80065C94 8E020004 */  lw    $v0, 4($s0)
/* 041098 80065C98 2403FFFD */  addiu $v1, $zero, -3
/* 04109C 80065C9C 00441025 */  or    $v0, $v0, $a0
/* 0410A0 80065CA0 00431024 */  and   $v0, $v0, $v1
/* 0410A4 80065CA4 AE020004 */  sw    $v0, 4($s0)
.L80065CA8:
/* 0410A8 80065CA8 00801021 */  addu  $v0, $a0, $zero
/* 0410AC 80065CAC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0410B0 80065CB0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0410B4 80065CB4 03E00008 */  jr    $ra
/* 0410B8 80065CB8 27BD0018 */   addiu $sp, $sp, 0x18

/* 0410BC 80065CBC 00000000 */  nop   
osSiRawStartDma:
/* 0410C0 80065CC0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0410C4 80065CC4 3C02A480 */  lui   $v0, 0xa480
/* 0410C8 80065CC8 34420018 */  ori   $v0, $v0, 0x18
/* 0410CC 80065CCC AFBF0018 */  sw    $ra, 0x18($sp)
/* 0410D0 80065CD0 AFB10014 */  sw    $s1, 0x14($sp)
/* 0410D4 80065CD4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0410D8 80065CD8 8C420000 */  lw    $v0, ($v0)
/* 0410DC 80065CDC 00808021 */  addu  $s0, $a0, $zero
/* 0410E0 80065CE0 30420003 */  andi  $v0, $v0, 3
/* 0410E4 80065CE4 10400003 */  beqz  $v0, .L80065CF4
/* 0410E8 80065CE8 00A08821 */   addu  $s1, $a1, $zero
/* 0410EC 80065CEC 08019754 */  j     func_80065D50
/* 0410F0 80065CF0 2402FFFF */   addiu $v0, $zero, -1

.L80065CF4:
/* 0410F4 80065CF4 24020001 */  addiu $v0, $zero, 1
/* 0410F8 80065CF8 16020003 */  bne   $s0, $v0, .L80065D08
/* 0410FC 80065CFC 02202021 */   addu  $a0, $s1, $zero
/* 041100 80065D00 0C018614 */  jal   osWritebackDCache
/* 041104 80065D04 24050040 */   addiu $a1, $zero, 0x40
.L80065D08:
/* 041108 80065D08 0C0187A4 */  jal   osVirtualToPhysical
/* 04110C 80065D0C 02202021 */   addu  $a0, $s1, $zero
/* 041110 80065D10 3C03A480 */  lui   $v1, 0xa480
/* 041114 80065D14 AC620000 */  sw    $v0, ($v1)
/* 041118 80065D18 56000003 */  bnezl $s0, .L80065D28
/* 04111C 80065D1C 3C03A480 */   lui   $v1, 0xa480
/* 041120 80065D20 0801974B */  j     func_80065D2C
/* 041124 80065D24 34630004 */   ori   $v1, $v1, 4

.L80065D28:
/* 041128 80065D28 34630010 */  ori   $v1, $v1, 0x10
func_80065D2C:
/* 04112C 80065D2C 3C021FC0 */  lui   $v0, 0x1fc0
/* 041130 80065D30 344207C0 */  ori   $v0, $v0, 0x7c0
/* 041134 80065D34 AC620000 */  sw    $v0, ($v1)
/* 041138 80065D38 16000005 */  bnez  $s0, .L80065D50
/* 04113C 80065D3C 00001021 */   addu  $v0, $zero, $zero
/* 041140 80065D40 02202021 */  addu  $a0, $s1, $zero
/* 041144 80065D44 0C0185C8 */  jal   osInvalDCache
/* 041148 80065D48 24050040 */   addiu $a1, $zero, 0x40
/* 04114C 80065D4C 00001021 */  addu  $v0, $zero, $zero
func_80065D50:
.L80065D50:
/* 041150 80065D50 8FBF0018 */  lw    $ra, 0x18($sp)
/* 041154 80065D54 8FB10014 */  lw    $s1, 0x14($sp)
/* 041158 80065D58 8FB00010 */  lw    $s0, 0x10($sp)
/* 04115C 80065D5C 03E00008 */  jr    $ra
/* 041160 80065D60 27BD0020 */   addiu $sp, $sp, 0x20

/* 041164 80065D64 00000000 */  nop   
/* 041168 80065D68 00000000 */  nop   
/* 04116C 80065D6C 00000000 */  nop   
