.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802421A0
/* 854310 802421A0 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 854314 802421A4 AFB10014 */  sw        $s1, 0x14($sp)
/* 854318 802421A8 0080882D */  daddu     $s1, $a0, $zero
/* 85431C 802421AC AFB00010 */  sw        $s0, 0x10($sp)
/* 854320 802421B0 00A0802D */  daddu     $s0, $a1, $zero
/* 854324 802421B4 AFBF0018 */  sw        $ra, 0x18($sp)
/* 854328 802421B8 0C00EABB */  jal       get_npc_unsafe
/* 85432C 802421BC 2404FFFC */   addiu    $a0, $zero, -4
/* 854330 802421C0 12000003 */  beqz      $s0, .L802421D0
/* 854334 802421C4 0040182D */   daddu    $v1, $v0, $zero
/* 854338 802421C8 2402003C */  addiu     $v0, $zero, 0x3c
/* 85433C 802421CC AE220070 */  sw        $v0, 0x70($s1)
.L802421D0:
/* 854340 802421D0 C462000C */  lwc1      $f2, 0xc($v1)
/* 854344 802421D4 3C0141F0 */  lui       $at, 0x41f0
/* 854348 802421D8 44810000 */  mtc1      $at, $f0
/* 85434C 802421DC 00000000 */  nop       
/* 854350 802421E0 46001000 */  add.s     $f0, $f2, $f0
/* 854354 802421E4 3C0143B4 */  lui       $at, 0x43b4
/* 854358 802421E8 44811000 */  mtc1      $at, $f2
/* 85435C 802421EC 00000000 */  nop       
/* 854360 802421F0 4600103E */  c.le.s    $f2, $f0
/* 854364 802421F4 00000000 */  nop       
/* 854368 802421F8 45000003 */  bc1f      .L80242208
/* 85436C 802421FC E460000C */   swc1     $f0, 0xc($v1)
/* 854370 80242200 46020001 */  sub.s     $f0, $f0, $f2
/* 854374 80242204 E460000C */  swc1      $f0, 0xc($v1)
.L80242208:
/* 854378 80242208 8E230070 */  lw        $v1, 0x70($s1)
/* 85437C 8024220C 2463FFFF */  addiu     $v1, $v1, -1
/* 854380 80242210 000317C3 */  sra       $v0, $v1, 0x1f
/* 854384 80242214 AE230070 */  sw        $v1, 0x70($s1)
/* 854388 80242218 8FBF0018 */  lw        $ra, 0x18($sp)
/* 85438C 8024221C 8FB10014 */  lw        $s1, 0x14($sp)
/* 854390 80242220 8FB00010 */  lw        $s0, 0x10($sp)
/* 854394 80242224 30420002 */  andi      $v0, $v0, 2
/* 854398 80242228 03E00008 */  jr        $ra
/* 85439C 8024222C 27BD0020 */   addiu    $sp, $sp, 0x20