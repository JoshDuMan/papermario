
.section .text80060E20, "ax"

osEPiStartDma:
/* 03C220 80060E20 3C028009 */  lui   $v0, 0x8009
/* 03C224 80060E24 8C423D50 */  lw    $v0, 0x3d50($v0)
/* 03C228 80060E28 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03C22C 80060E2C AFB00010 */  sw    $s0, 0x10($sp)
/* 03C230 80060E30 00A08021 */  addu  $s0, $a1, $zero
/* 03C234 80060E34 14400003 */  bnez  $v0, .L80060E44
/* 03C238 80060E38 AFBF0014 */   sw    $ra, 0x14($sp)
/* 03C23C 80060E3C 080183A9 */  j     func_80060EA4
/* 03C240 80060E40 2402FFFF */   addiu $v0, $zero, -1

.L80060E44:
/* 03C244 80060E44 14C00003 */  bnez  $a2, .L80060E54
/* 03C248 80060E48 AE040014 */   sw    $a0, 0x14($s0)
/* 03C24C 80060E4C 08018396 */  j     func_80060E58
/* 03C250 80060E50 2402000F */   addiu $v0, $zero, 0xf

.L80060E54:
/* 03C254 80060E54 24020010 */  addiu $v0, $zero, 0x10
func_80060E58:
/* 03C258 80060E58 A6020000 */  sh    $v0, ($s0)
/* 03C25C 80060E5C 92030002 */  lbu   $v1, 2($s0)
/* 03C260 80060E60 24020001 */  addiu $v0, $zero, 1
/* 03C264 80060E64 14620009 */  bne   $v1, $v0, .L80060E8C
/* 03C268 80060E68 00000000 */   nop   
/* 03C26C 80060E6C 0C01AD54 */  jal   osPiGetCmdQueue
/* 03C270 80060E70 00000000 */   nop   
/* 03C274 80060E74 00402021 */  addu  $a0, $v0, $zero
/* 03C278 80060E78 02002821 */  addu  $a1, $s0, $zero
/* 03C27C 80060E7C 0C01956C */  jal   osJamMesg
/* 03C280 80060E80 00003021 */   addu  $a2, $zero, $zero
/* 03C284 80060E84 080183A9 */  j     func_80060EA4
/* 03C288 80060E88 00000000 */   nop   

.L80060E8C:
/* 03C28C 80060E8C 0C01AD54 */  jal   osPiGetCmdQueue
/* 03C290 80060E90 00000000 */   nop   
/* 03C294 80060E94 00402021 */  addu  $a0, $v0, $zero
/* 03C298 80060E98 02002821 */  addu  $a1, $s0, $zero
/* 03C29C 80060E9C 0C019608 */  jal   osSendMesg
/* 03C2A0 80060EA0 00003021 */   addu  $a2, $zero, $zero
func_80060EA4:
/* 03C2A4 80060EA4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 03C2A8 80060EA8 8FB00010 */  lw    $s0, 0x10($sp)
/* 03C2AC 80060EAC 03E00008 */  jr    $ra
/* 03C2B0 80060EB0 27BD0018 */   addiu $sp, $sp, 0x18

/* 03C2B4 80060EB4 00000000 */  nop   
/* 03C2B8 80060EB8 00000000 */  nop   
/* 03C2BC 80060EBC 00000000 */  nop   
