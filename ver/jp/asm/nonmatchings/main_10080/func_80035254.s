.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80035254
/* 10654 80035254 3C05800A */  lui       $a1, %hi(D_8009E742)
/* 10658 80035258 84A5E742 */  lh        $a1, %lo(D_8009E742)($a1)
/* 1065C 8003525C 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 10660 80035260 18A00009 */  blez      $a1, .L80035288
/* 10664 80035264 AFBF0010 */   sw       $ra, 0x10($sp)
/* 10668 80035268 44850000 */  mtc1      $a1, $f0
/* 1066C 8003526C 00000000 */  nop
/* 10670 80035270 46800020 */  cvt.s.w   $f0, $f0
/* 10674 80035274 44050000 */  mfc1      $a1, $f0
/* 10678 80035278 3C01800A */  lui       $at, %hi(D_8009E741)
/* 1067C 8003527C A020E741 */  sb        $zero, %lo(D_8009E741)($at)
/* 10680 80035280 0800D4AA */  j         .L800352A8
/* 10684 80035284 0000202D */   daddu    $a0, $zero, $zero
.L80035288:
/* 10688 80035288 24020001 */  addiu     $v0, $zero, 1
/* 1068C 8003528C 44850000 */  mtc1      $a1, $f0
/* 10690 80035290 00000000 */  nop
/* 10694 80035294 46800020 */  cvt.s.w   $f0, $f0
/* 10698 80035298 44050000 */  mfc1      $a1, $f0
/* 1069C 8003529C 0000202D */  daddu     $a0, $zero, $zero
/* 106A0 800352A0 3C01800A */  lui       $at, %hi(D_8009E741)
/* 106A4 800352A4 A022E741 */  sb        $v0, %lo(D_8009E741)($at)
.L800352A8:
/* 106A8 800352A8 0C04F38E */  jal       func_8013CE38
/* 106AC 800352AC 00000000 */   nop
/* 106B0 800352B0 24020001 */  addiu     $v0, $zero, 1
/* 106B4 800352B4 3C04800A */  lui       $a0, %hi(D_8009A630)
/* 106B8 800352B8 2484A630 */  addiu     $a0, $a0, %lo(D_8009A630)
/* 106BC 800352BC 3C01800A */  lui       $at, %hi(D_8009E740)
/* 106C0 800352C0 A022E740 */  sb        $v0, %lo(D_8009E740)($at)
/* 106C4 800352C4 8C820000 */  lw        $v0, ($a0)
/* 106C8 800352C8 2403FFBF */  addiu     $v1, $zero, -0x41
/* 106CC 800352CC 00431024 */  and       $v0, $v0, $v1
/* 106D0 800352D0 AC820000 */  sw        $v0, ($a0)
/* 106D4 800352D4 8FBF0010 */  lw        $ra, 0x10($sp)
/* 106D8 800352D8 03E00008 */  jr        $ra
/* 106DC 800352DC 27BD0018 */   addiu    $sp, $sp, 0x18
