.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024061C_C3E20C
/* C3E20C 8024061C 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* C3E210 80240620 AFB10014 */  sw        $s1, 0x14($sp)
/* C3E214 80240624 0080882D */  daddu     $s1, $a0, $zero
/* C3E218 80240628 AFBF0018 */  sw        $ra, 0x18($sp)
/* C3E21C 8024062C AFB00010 */  sw        $s0, 0x10($sp)
/* C3E220 80240630 8E300148 */  lw        $s0, 0x148($s1)
/* C3E224 80240634 0C00EABB */  jal       get_npc_unsafe
/* C3E228 80240638 86040008 */   lh       $a0, 8($s0)
/* C3E22C 8024063C 0040202D */  daddu     $a0, $v0, $zero
/* C3E230 80240640 8482008E */  lh        $v0, 0x8e($a0)
/* C3E234 80240644 9483008E */  lhu       $v1, 0x8e($a0)
/* C3E238 80240648 18400002 */  blez      $v0, .L80240654
/* C3E23C 8024064C 2462FFFF */   addiu    $v0, $v1, -1
/* C3E240 80240650 A482008E */  sh        $v0, 0x8e($a0)
.L80240654:
/* C3E244 80240654 8482008E */  lh        $v0, 0x8e($a0)
/* C3E248 80240658 24030001 */  addiu     $v1, $zero, 1
/* C3E24C 8024065C 14430005 */  bne       $v0, $v1, .L80240674
/* C3E250 80240660 00000000 */   nop
/* C3E254 80240664 8E0200CC */  lw        $v0, 0xcc($s0)
/* C3E258 80240668 8C420030 */  lw        $v0, 0x30($v0)
/* C3E25C 8024066C 080901A4 */  j         .L80240690
/* C3E260 80240670 AC820028 */   sw       $v0, 0x28($a0)
.L80240674:
/* C3E264 80240674 1C400006 */  bgtz      $v0, .L80240690
/* C3E268 80240678 00000000 */   nop
/* C3E26C 8024067C 8E0200CC */  lw        $v0, 0xcc($s0)
/* C3E270 80240680 8C420028 */  lw        $v0, 0x28($v0)
/* C3E274 80240684 A480008E */  sh        $zero, 0x8e($a0)
/* C3E278 80240688 AC820028 */  sw        $v0, 0x28($a0)
/* C3E27C 8024068C AE230070 */  sw        $v1, 0x70($s1)
.L80240690:
/* C3E280 80240690 8FBF0018 */  lw        $ra, 0x18($sp)
/* C3E284 80240694 8FB10014 */  lw        $s1, 0x14($sp)
/* C3E288 80240698 8FB00010 */  lw        $s0, 0x10($sp)
/* C3E28C 8024069C 03E00008 */  jr        $ra
/* C3E290 802406A0 27BD0020 */   addiu    $sp, $sp, 0x20
