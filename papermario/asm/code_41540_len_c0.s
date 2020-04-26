
.section .text80066140, "ax"

osStopThread:
/* 041540 80066140 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 041544 80066144 AFB00010 */  sw    $s0, 0x10($sp)
/* 041548 80066148 00808021 */  addu  $s0, $a0, $zero
/* 04154C 8006614C AFBF0018 */  sw    $ra, 0x18($sp)
/* 041550 80066150 0C01ACD8 */  jal   osDisableInt
/* 041554 80066154 AFB10014 */   sw    $s1, 0x14($sp)
/* 041558 80066158 24030004 */  addiu $v1, $zero, 4
/* 04155C 8006615C 12000002 */  beqz  $s0, .L80066168
/* 041560 80066160 00408821 */   addu  $s1, $v0, $zero
/* 041564 80066164 96030010 */  lhu   $v1, 0x10($s0)
.L80066168:
/* 041568 80066168 3063FFFF */  andi  $v1, $v1, 0xffff
/* 04156C 8006616C 24020004 */  addiu $v0, $zero, 4
/* 041570 80066170 1062000C */  beq   $v1, $v0, .L800661A4
/* 041574 80066174 28620005 */   slti  $v0, $v1, 5
/* 041578 80066178 10400005 */  beqz  $v0, .L80066190
/* 04157C 8006617C 24020002 */   addiu $v0, $zero, 2
/* 041580 80066180 10620010 */  beq   $v1, $v0, .L800661C4
/* 041584 80066184 00000000 */   nop   
/* 041588 80066188 08019876 */  j     func_800661D8
/* 04158C 8006618C 00000000 */   nop   

.L80066190:
/* 041590 80066190 24020008 */  addiu $v0, $zero, 8
/* 041594 80066194 1062000B */  beq   $v1, $v0, .L800661C4
/* 041598 80066198 00000000 */   nop   
/* 04159C 8006619C 08019876 */  j     func_800661D8
/* 0415A0 800661A0 00000000 */   nop   

.L800661A4:
/* 0415A4 800661A4 3C038009 */  lui   $v1, 0x8009
/* 0415A8 800661A8 8C634660 */  lw    $v1, 0x4660($v1)
/* 0415AC 800661AC 00002021 */  addu  $a0, $zero, $zero
/* 0415B0 800661B0 24020001 */  addiu $v0, $zero, 1
/* 0415B4 800661B4 0C01AC1B */  jal   osEnqueueAndYield
/* 0415B8 800661B8 A4620010 */   sh    $v0, 0x10($v1)
/* 0415BC 800661BC 08019876 */  j     func_800661D8
/* 0415C0 800661C0 00000000 */   nop   

.L800661C4:
/* 0415C4 800661C4 8E040008 */  lw    $a0, 8($s0)
/* 0415C8 800661C8 24020001 */  addiu $v0, $zero, 1
/* 0415CC 800661CC 02002821 */  addu  $a1, $s0, $zero
/* 0415D0 800661D0 0C019880 */  jal   osDequeueThread
/* 0415D4 800661D4 A6020010 */   sh    $v0, 0x10($s0)
func_800661D8:
/* 0415D8 800661D8 0C01ACF4 */  jal   osRestoreInt
/* 0415DC 800661DC 02202021 */   addu  $a0, $s1, $zero
/* 0415E0 800661E0 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0415E4 800661E4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0415E8 800661E8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0415EC 800661EC 03E00008 */  jr    $ra
/* 0415F0 800661F0 27BD0020 */   addiu $sp, $sp, 0x20

/* 0415F4 800661F4 00000000 */  nop   
/* 0415F8 800661F8 00000000 */  nop   
/* 0415FC 800661FC 00000000 */  nop   
