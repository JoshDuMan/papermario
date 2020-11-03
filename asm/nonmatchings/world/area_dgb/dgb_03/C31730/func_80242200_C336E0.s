.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80242200_C336E0
/* C336E0 80242200 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* C336E4 80242204 AFB20018 */  sw        $s2, 0x18($sp)
/* C336E8 80242208 0080902D */  daddu     $s2, $a0, $zero
/* C336EC 8024220C AFBF001C */  sw        $ra, 0x1c($sp)
/* C336F0 80242210 AFB10014 */  sw        $s1, 0x14($sp)
/* C336F4 80242214 AFB00010 */  sw        $s0, 0x10($sp)
/* C336F8 80242218 8E500148 */  lw        $s0, 0x148($s2)
/* C336FC 8024221C 86040008 */  lh        $a0, 8($s0)
/* C33700 80242220 0C00EABB */  jal       get_npc_unsafe
/* C33704 80242224 00A0882D */   daddu    $s1, $a1, $zero
/* C33708 80242228 0040182D */  daddu     $v1, $v0, $zero
/* C3370C 8024222C 9462008E */  lhu       $v0, 0x8e($v1)
/* C33710 80242230 2442FFFF */  addiu     $v0, $v0, -1
/* C33714 80242234 A462008E */  sh        $v0, 0x8e($v1)
/* C33718 80242238 00021400 */  sll       $v0, $v0, 0x10
/* C3371C 8024223C 1C400015 */  bgtz      $v0, .L80242294
/* C33720 80242240 00000000 */   nop      
/* C33724 80242244 8E0200CC */  lw        $v0, 0xcc($s0)
/* C33728 80242248 8C420004 */  lw        $v0, 4($v0)
/* C3372C 8024224C AC620028 */  sw        $v0, 0x28($v1)
/* C33730 80242250 8E0200D0 */  lw        $v0, 0xd0($s0)
/* C33734 80242254 8C420014 */  lw        $v0, 0x14($v0)
/* C33738 80242258 04410004 */  bgez      $v0, .L8024226C
/* C3373C 8024225C 00000000 */   nop      
/* C33740 80242260 C6200000 */  lwc1      $f0, ($s1)
/* C33744 80242264 080908A3 */  j         .L8024228C
/* C33748 80242268 E4600018 */   swc1     $f0, 0x18($v1)
.L8024226C:
/* C3374C 8024226C 3C018024 */  lui       $at, 0x8024
/* C33750 80242270 D4224EB8 */  ldc1      $f2, 0x4eb8($at)
/* C33754 80242274 44820000 */  mtc1      $v0, $f0
/* C33758 80242278 00000000 */  nop       
/* C3375C 8024227C 46800021 */  cvt.d.w   $f0, $f0
/* C33760 80242280 46220003 */  div.d     $f0, $f0, $f2
/* C33764 80242284 46200020 */  cvt.s.d   $f0, $f0
/* C33768 80242288 E4600018 */  swc1      $f0, 0x18($v1)
.L8024228C:
/* C3376C 8024228C 24020029 */  addiu     $v0, $zero, 0x29
/* C33770 80242290 AE420070 */  sw        $v0, 0x70($s2)
.L80242294:
/* C33774 80242294 8FBF001C */  lw        $ra, 0x1c($sp)
/* C33778 80242298 8FB20018 */  lw        $s2, 0x18($sp)
/* C3377C 8024229C 8FB10014 */  lw        $s1, 0x14($sp)
/* C33780 802422A0 8FB00010 */  lw        $s0, 0x10($sp)
/* C33784 802422A4 03E00008 */  jr        $ra
/* C33788 802422A8 27BD0020 */   addiu    $sp, $sp, 0x20
