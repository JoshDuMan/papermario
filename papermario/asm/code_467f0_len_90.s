
.section .text8006B3F0, "ax"

osSetGlobalIntMask:
/* 0467F0 8006B3F0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0467F4 8006B3F4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0467F8 8006B3F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0467FC 8006B3FC 0C01ACD8 */  jal   osDisableInt
/* 046800 8006B400 00808021 */   addu  $s0, $a0, $zero
/* 046804 8006B404 3C038009 */  lui   $v1, 0x8009
/* 046808 8006B408 8C635900 */  lw    $v1, 0x5900($v1)
/* 04680C 8006B40C 00701825 */  or    $v1, $v1, $s0
/* 046810 8006B410 3C018009 */  lui   $at, 0x8009
/* 046814 8006B414 AC235900 */  sw    $v1, 0x5900($at)
/* 046818 8006B418 0C01ACF4 */  jal   osRestoreInt
/* 04681C 8006B41C 00402021 */   addu  $a0, $v0, $zero
/* 046820 8006B420 8FBF0014 */  lw    $ra, 0x14($sp)
/* 046824 8006B424 8FB00010 */  lw    $s0, 0x10($sp)
/* 046828 8006B428 03E00008 */  jr    $ra
/* 04682C 8006B42C 27BD0018 */   addiu $sp, $sp, 0x18

osResetGlobalIntMask:
/* 046830 8006B430 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 046834 8006B434 AFB00010 */  sw    $s0, 0x10($sp)
/* 046838 8006B438 AFBF0014 */  sw    $ra, 0x14($sp)
/* 04683C 8006B43C 0C01ACD8 */  jal   osDisableInt
/* 046840 8006B440 00808021 */   addu  $s0, $a0, $zero
/* 046844 8006B444 3C038009 */  lui   $v1, 0x8009
/* 046848 8006B448 8C635900 */  lw    $v1, 0x5900($v1)
/* 04684C 8006B44C 00108027 */  nor   $s0, $zero, $s0
/* 046850 8006B450 36100401 */  ori   $s0, $s0, 0x401
/* 046854 8006B454 00701824 */  and   $v1, $v1, $s0
/* 046858 8006B458 3C018009 */  lui   $at, 0x8009
/* 04685C 8006B45C AC235900 */  sw    $v1, 0x5900($at)
/* 046860 8006B460 0C01ACF4 */  jal   osRestoreInt
/* 046864 8006B464 00402021 */   addu  $a0, $v0, $zero
/* 046868 8006B468 8FBF0014 */  lw    $ra, 0x14($sp)
/* 04686C 8006B46C 8FB00010 */  lw    $s0, 0x10($sp)
/* 046870 8006B470 03E00008 */  jr    $ra
/* 046874 8006B474 27BD0018 */   addiu $sp, $sp, 0x18

/* 046878 8006B478 00000000 */  nop   
/* 04687C 8006B47C 00000000 */  nop   
