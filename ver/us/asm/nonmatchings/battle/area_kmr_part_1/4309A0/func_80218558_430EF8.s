.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80218558_430EF8
/* 430EF8 80218558 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 430EFC 8021855C F7B60020 */  sdc1      $f22, 0x20($sp)
/* 430F00 80218560 46006586 */  mov.s     $f22, $f12
/* 430F04 80218564 F7B40018 */  sdc1      $f20, 0x18($sp)
/* 430F08 80218568 AFBF0010 */  sw        $ra, 0x10($sp)
/* 430F0C 8021856C 0C00A3FC */  jal       length2D
/* 430F10 80218570 46007506 */   mov.s    $f20, $f14
/* 430F14 80218574 4600A18D */  trunc.w.s $f6, $f20
/* 430F18 80218578 44023000 */  mfc1      $v0, $f6
/* 430F1C 8021857C 00000000 */  nop
/* 430F20 80218580 04420001 */  bltzl     $v0, .L80218588
/* 430F24 80218584 00021023 */   negu     $v0, $v0
.L80218588:
/* 430F28 80218588 44821000 */  mtc1      $v0, $f2
/* 430F2C 8021858C 00000000 */  nop
/* 430F30 80218590 468010A0 */  cvt.s.w   $f2, $f2
/* 430F34 80218594 46001103 */  div.s     $f4, $f2, $f0
/* 430F38 80218598 0000202D */  daddu     $a0, $zero, $zero
/* 430F3C 8021859C 2406005A */  addiu     $a2, $zero, 0x5a
/* 430F40 802185A0 0080282D */  daddu     $a1, $a0, $zero
/* 430F44 802185A4 3C078022 */  lui       $a3, %hi(D_8021EF6C_43790C)
/* 430F48 802185A8 24E7EF6C */  addiu     $a3, $a3, %lo(D_8021EF6C_43790C)
/* 430F4C 802185AC 30C2FFFF */  andi      $v0, $a2, 0xffff
.L802185B0:
/* 430F50 802185B0 3083FFFF */  andi      $v1, $a0, 0xffff
/* 430F54 802185B4 00431023 */  subu      $v0, $v0, $v1
/* 430F58 802185B8 00021FC2 */  srl       $v1, $v0, 0x1f
/* 430F5C 802185BC 00431021 */  addu      $v0, $v0, $v1
/* 430F60 802185C0 00021043 */  sra       $v0, $v0, 1
/* 430F64 802185C4 00821821 */  addu      $v1, $a0, $v0
/* 430F68 802185C8 3062FFFF */  andi      $v0, $v1, 0xffff
/* 430F6C 802185CC 00021080 */  sll       $v0, $v0, 2
/* 430F70 802185D0 00471021 */  addu      $v0, $v0, $a3
/* 430F74 802185D4 C4400000 */  lwc1      $f0, ($v0)
/* 430F78 802185D8 4604003C */  c.lt.s    $f0, $f4
/* 430F7C 802185DC 00000000 */  nop
/* 430F80 802185E0 45020002 */  bc1fl     .L802185EC
/* 430F84 802185E4 0060302D */   daddu    $a2, $v1, $zero
/* 430F88 802185E8 0060202D */  daddu     $a0, $v1, $zero
.L802185EC:
/* 430F8C 802185EC 24A50001 */  addiu     $a1, $a1, 1
/* 430F90 802185F0 30A2FFFF */  andi      $v0, $a1, 0xffff
/* 430F94 802185F4 2C420007 */  sltiu     $v0, $v0, 7
/* 430F98 802185F8 1440FFED */  bnez      $v0, .L802185B0
/* 430F9C 802185FC 30C2FFFF */   andi     $v0, $a2, 0xffff
/* 430FA0 80218600 3082FFFF */  andi      $v0, $a0, 0xffff
/* 430FA4 80218604 00021080 */  sll       $v0, $v0, 2
/* 430FA8 80218608 30C3FFFF */  andi      $v1, $a2, 0xffff
/* 430FAC 8021860C 3C018022 */  lui       $at, %hi(D_8021EF6C_43790C)
/* 430FB0 80218610 00220821 */  addu      $at, $at, $v0
/* 430FB4 80218614 C422EF6C */  lwc1      $f2, %lo(D_8021EF6C_43790C)($at)
/* 430FB8 80218618 00031880 */  sll       $v1, $v1, 2
/* 430FBC 8021861C 46041081 */  sub.s     $f2, $f2, $f4
/* 430FC0 80218620 3C018022 */  lui       $at, %hi(D_8021EF6C_43790C)
/* 430FC4 80218624 00230821 */  addu      $at, $at, $v1
/* 430FC8 80218628 C420EF6C */  lwc1      $f0, %lo(D_8021EF6C_43790C)($at)
/* 430FCC 8021862C 46040001 */  sub.s     $f0, $f0, $f4
/* 430FD0 80218630 46001085 */  abs.s     $f2, $f2
/* 430FD4 80218634 46000005 */  abs.s     $f0, $f0
/* 430FD8 80218638 4600103C */  c.lt.s    $f2, $f0
/* 430FDC 8021863C 00000000 */  nop
/* 430FE0 80218640 45000002 */  bc1f      .L8021864C
/* 430FE4 80218644 00C0182D */   daddu    $v1, $a2, $zero
/* 430FE8 80218648 0080182D */  daddu     $v1, $a0, $zero
.L8021864C:
/* 430FEC 8021864C 44800000 */  mtc1      $zero, $f0
/* 430FF0 80218650 00000000 */  nop
/* 430FF4 80218654 4600B03C */  c.lt.s    $f22, $f0
/* 430FF8 80218658 00000000 */  nop
/* 430FFC 8021865C 4500000A */  bc1f      .L80218688
/* 431000 80218660 00000000 */   nop
/* 431004 80218664 4614003E */  c.le.s    $f0, $f20
/* 431008 80218668 00000000 */  nop
/* 43100C 8021866C 45000004 */  bc1f      .L80218680
/* 431010 80218670 240200B4 */   addiu    $v0, $zero, 0xb4
/* 431014 80218674 00431823 */  subu      $v1, $v0, $v1
/* 431018 80218678 44800000 */  mtc1      $zero, $f0
/* 43101C 8021867C 00000000 */  nop
.L80218680:
/* 431020 80218680 4600B03C */  c.lt.s    $f22, $f0
/* 431024 80218684 00000000 */  nop
.L80218688:
/* 431028 80218688 45000005 */  bc1f      .L802186A0
/* 43102C 8021868C 00000000 */   nop
/* 431030 80218690 4600A03C */  c.lt.s    $f20, $f0
/* 431034 80218694 00000000 */  nop
/* 431038 80218698 45030001 */  bc1tl     .L802186A0
/* 43103C 8021869C 246300B4 */   addiu    $v1, $v1, 0xb4
.L802186A0:
/* 431040 802186A0 44800000 */  mtc1      $zero, $f0
/* 431044 802186A4 00000000 */  nop
/* 431048 802186A8 4616003E */  c.le.s    $f0, $f22
/* 43104C 802186AC 00000000 */  nop
/* 431050 802186B0 45000006 */  bc1f      .L802186CC
/* 431054 802186B4 00000000 */   nop
/* 431058 802186B8 4600A03C */  c.lt.s    $f20, $f0
/* 43105C 802186BC 00000000 */  nop
/* 431060 802186C0 45000002 */  bc1f      .L802186CC
/* 431064 802186C4 24020168 */   addiu    $v0, $zero, 0x168
/* 431068 802186C8 00431823 */  subu      $v1, $v0, $v1
.L802186CC:
/* 43106C 802186CC 8FBF0010 */  lw        $ra, 0x10($sp)
/* 431070 802186D0 D7B60020 */  ldc1      $f22, 0x20($sp)
/* 431074 802186D4 D7B40018 */  ldc1      $f20, 0x18($sp)
/* 431078 802186D8 3062FFFF */  andi      $v0, $v1, 0xffff
/* 43107C 802186DC 03E00008 */  jr        $ra
/* 431080 802186E0 27BD0028 */   addiu    $sp, $sp, 0x28
