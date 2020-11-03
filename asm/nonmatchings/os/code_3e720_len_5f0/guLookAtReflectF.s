.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel guLookAtReflectF
/* 3E720 80063320 27BDFF98 */  addiu     $sp, $sp, -0x68
/* 3E724 80063324 F7BC0058 */  sdc1      $f28, 0x58($sp)
/* 3E728 80063328 C7BC0088 */  lwc1      $f28, 0x88($sp)
/* 3E72C 8006332C F7BE0060 */  sdc1      $f30, 0x60($sp)
/* 3E730 80063330 C7BE008C */  lwc1      $f30, 0x8c($sp)
/* 3E734 80063334 F7BA0050 */  sdc1      $f26, 0x50($sp)
/* 3E738 80063338 C7BA0090 */  lwc1      $f26, 0x90($sp)
/* 3E73C 8006333C F7B40038 */  sdc1      $f20, 0x38($sp)
/* 3E740 80063340 C7B4007C */  lwc1      $f20, 0x7c($sp)
/* 3E744 80063344 F7B60040 */  sdc1      $f22, 0x40($sp)
/* 3E748 80063348 C7B60080 */  lwc1      $f22, 0x80($sp)
/* 3E74C 8006334C F7B80048 */  sdc1      $f24, 0x48($sp)
/* 3E750 80063350 C7B80084 */  lwc1      $f24, 0x84($sp)
/* 3E754 80063354 AFB10014 */  sw        $s1, 0x14($sp)
/* 3E758 80063358 00808821 */  addu      $s1, $a0, $zero
/* 3E75C 8006335C AFB00010 */  sw        $s0, 0x10($sp)
/* 3E760 80063360 00A08021 */  addu      $s0, $a1, $zero
/* 3E764 80063364 AFB50024 */  sw        $s5, 0x24($sp)
/* 3E768 80063368 00C0A821 */  addu      $s5, $a2, $zero
/* 3E76C 8006336C AFBE0030 */  sw        $fp, 0x30($sp)
/* 3E770 80063370 00E0F021 */  addu      $fp, $a3, $zero
/* 3E774 80063374 AFBF0034 */  sw        $ra, 0x34($sp)
/* 3E778 80063378 AFB7002C */  sw        $s7, 0x2c($sp)
/* 3E77C 8006337C AFB60028 */  sw        $s6, 0x28($sp)
/* 3E780 80063380 AFB40020 */  sw        $s4, 0x20($sp)
/* 3E784 80063384 AFB3001C */  sw        $s3, 0x1c($sp)
/* 3E788 80063388 0C019D28 */  jal       guMtxIdentF
/* 3E78C 8006338C AFB20018 */   sw       $s2, 0x18($sp)
/* 3E790 80063390 44957000 */  mtc1      $s5, $f14
/* 3E794 80063394 00000000 */  nop       
/* 3E798 80063398 460EA381 */  sub.s     $f14, $f20, $f14
/* 3E79C 8006339C 44147000 */  mfc1      $s4, $f14
/* 3E7A0 800633A0 00000000 */  nop       
/* 3E7A4 800633A4 44948000 */  mtc1      $s4, $f16
/* 3E7A8 800633A8 00000000 */  nop       
/* 3E7AC 800633AC 46107002 */  mul.s     $f0, $f14, $f16
/* 3E7B0 800633B0 449E7000 */  mtc1      $fp, $f14
/* 3E7B4 800633B4 00000000 */  nop       
/* 3E7B8 800633B8 460EB381 */  sub.s     $f14, $f22, $f14
/* 3E7BC 800633BC 44137000 */  mfc1      $s3, $f14
/* 3E7C0 800633C0 00000000 */  nop       
/* 3E7C4 800633C4 44938000 */  mtc1      $s3, $f16
/* 3E7C8 800633C8 00000000 */  nop       
/* 3E7CC 800633CC 46107102 */  mul.s     $f4, $f14, $f16
/* 3E7D0 800633D0 C7AE0078 */  lwc1      $f14, 0x78($sp)
/* 3E7D4 800633D4 460EC381 */  sub.s     $f14, $f24, $f14
/* 3E7D8 800633D8 44127000 */  mfc1      $s2, $f14
/* 3E7DC 800633DC 00000000 */  nop       
/* 3E7E0 800633E0 44928000 */  mtc1      $s2, $f16
/* 3E7E4 800633E4 00000000 */  nop       
/* 3E7E8 800633E8 46107082 */  mul.s     $f2, $f14, $f16
/* 3E7EC 800633EC 46040000 */  add.s     $f0, $f0, $f4
/* 3E7F0 800633F0 46020300 */  add.s     $f12, $f0, $f2
/* 3E7F4 800633F4 46006084 */  sqrt.s    $f2, $f12
/* 3E7F8 800633F8 46021032 */  c.eq.s    $f2, $f2
/* 3E7FC 800633FC 00000000 */  nop       
/* 3E800 80063400 45010004 */  bc1t      .L80063414
/* 3E804 80063404 00000000 */   nop      
/* 3E808 80063408 0C0187BC */  jal       sqrtf
/* 3E80C 8006340C 00000000 */   nop      
/* 3E810 80063410 46000086 */  mov.s     $f2, $f0
.L80063414:
/* 3E814 80063414 3C01800A */  lui       $at, 0x800a
/* 3E818 80063418 D4209BA0 */  ldc1      $f0, -0x6460($at)
/* 3E81C 8006341C 460010A1 */  cvt.d.s   $f2, $f2
/* 3E820 80063420 46220003 */  div.d     $f0, $f0, $f2
/* 3E824 80063424 44928000 */  mtc1      $s2, $f16
/* 3E828 80063428 462000A0 */  cvt.s.d   $f2, $f0
/* 3E82C 8006342C 46028402 */  mul.s     $f16, $f16, $f2
/* 3E830 80063430 44947000 */  mtc1      $s4, $f14
/* 3E834 80063434 00000000 */  nop       
/* 3E838 80063438 46027382 */  mul.s     $f14, $f14, $f2
/* 3E83C 8006343C 00000000 */  nop       
/* 3E840 80063440 4610F102 */  mul.s     $f4, $f30, $f16
/* 3E844 80063444 44147000 */  mfc1      $s4, $f14
/* 3E848 80063448 44937000 */  mtc1      $s3, $f14
/* 3E84C 8006344C 00000000 */  nop       
/* 3E850 80063450 46027382 */  mul.s     $f14, $f14, $f2
/* 3E854 80063454 44128000 */  mfc1      $s2, $f16
/* 3E858 80063458 44948000 */  mtc1      $s4, $f16
/* 3E85C 8006345C 00000000 */  nop       
/* 3E860 80063460 4610D202 */  mul.s     $f8, $f26, $f16
/* 3E864 80063464 00000000 */  nop       
/* 3E868 80063468 460ED002 */  mul.s     $f0, $f26, $f14
/* 3E86C 8006346C 44137000 */  mfc1      $s3, $f14
/* 3E870 80063470 44927000 */  mtc1      $s2, $f14
/* 3E874 80063474 00000000 */  nop       
/* 3E878 80063478 460EE082 */  mul.s     $f2, $f28, $f14
/* 3E87C 8006347C 44938000 */  mtc1      $s3, $f16
/* 3E880 80063480 00000000 */  nop       
/* 3E884 80063484 4610E282 */  mul.s     $f10, $f28, $f16
/* 3E888 80063488 44947000 */  mtc1      $s4, $f14
/* 3E88C 8006348C 00000000 */  nop       
/* 3E890 80063490 460EF182 */  mul.s     $f6, $f30, $f14
/* 3E894 80063494 46002501 */  sub.s     $f20, $f4, $f0
/* 3E898 80063498 4614A002 */  mul.s     $f0, $f20, $f20
/* 3E89C 8006349C 46024581 */  sub.s     $f22, $f8, $f2
/* 3E8A0 800634A0 4616B102 */  mul.s     $f4, $f22, $f22
/* 3E8A4 800634A4 46065601 */  sub.s     $f24, $f10, $f6
/* 3E8A8 800634A8 4618C082 */  mul.s     $f2, $f24, $f24
/* 3E8AC 800634AC 46040000 */  add.s     $f0, $f0, $f4
/* 3E8B0 800634B0 46020300 */  add.s     $f12, $f0, $f2
/* 3E8B4 800634B4 46006004 */  sqrt.s    $f0, $f12
/* 3E8B8 800634B8 46000032 */  c.eq.s    $f0, $f0
/* 3E8BC 800634BC 00000000 */  nop       
/* 3E8C0 800634C0 45010003 */  bc1t      .L800634D0
/* 3E8C4 800634C4 00000000 */   nop      
/* 3E8C8 800634C8 0C0187BC */  jal       sqrtf
/* 3E8CC 800634CC 00000000 */   nop      
.L800634D0:
/* 3E8D0 800634D0 3C01800A */  lui       $at, 0x800a
/* 3E8D4 800634D4 8C369BA8 */  lw        $s6, -0x6458($at)
/* 3E8D8 800634D8 8C379BAC */  lw        $s7, -0x6454($at)
/* 3E8DC 800634DC 44978000 */  mtc1      $s7, $f16
/* 3E8E0 800634E0 44968800 */  mtc1      $s6, $f17
/* 3E8E4 800634E4 46000021 */  cvt.d.s   $f0, $f0
/* 3E8E8 800634E8 46208003 */  div.d     $f0, $f16, $f0
/* 3E8EC 800634EC 462000A0 */  cvt.s.d   $f2, $f0
/* 3E8F0 800634F0 4602A502 */  mul.s     $f20, $f20, $f2
/* 3E8F4 800634F4 00000000 */  nop       
/* 3E8F8 800634F8 4602C602 */  mul.s     $f24, $f24, $f2
/* 3E8FC 800634FC 00000000 */  nop       
/* 3E900 80063500 4602B582 */  mul.s     $f22, $f22, $f2
/* 3E904 80063504 44937000 */  mtc1      $s3, $f14
/* 3E908 80063508 00000000 */  nop       
/* 3E90C 8006350C 46187102 */  mul.s     $f4, $f14, $f24
/* 3E910 80063510 44928000 */  mtc1      $s2, $f16
/* 3E914 80063514 00000000 */  nop       
/* 3E918 80063518 46168002 */  mul.s     $f0, $f16, $f22
/* 3E91C 8006351C 00000000 */  nop       
/* 3E920 80063520 46148202 */  mul.s     $f8, $f16, $f20
/* 3E924 80063524 44947000 */  mtc1      $s4, $f14
/* 3E928 80063528 00000000 */  nop       
/* 3E92C 8006352C 46187082 */  mul.s     $f2, $f14, $f24
/* 3E930 80063530 00000000 */  nop       
/* 3E934 80063534 46167282 */  mul.s     $f10, $f14, $f22
/* 3E938 80063538 44938000 */  mtc1      $s3, $f16
/* 3E93C 8006353C 00000000 */  nop       
/* 3E940 80063540 46148182 */  mul.s     $f6, $f16, $f20
/* 3E944 80063544 46002701 */  sub.s     $f28, $f4, $f0
/* 3E948 80063548 461CE002 */  mul.s     $f0, $f28, $f28
/* 3E94C 8006354C 46024781 */  sub.s     $f30, $f8, $f2
/* 3E950 80063550 461EF102 */  mul.s     $f4, $f30, $f30
/* 3E954 80063554 46065681 */  sub.s     $f26, $f10, $f6
/* 3E958 80063558 461AD082 */  mul.s     $f2, $f26, $f26
/* 3E95C 8006355C 46040000 */  add.s     $f0, $f0, $f4
/* 3E960 80063560 46020300 */  add.s     $f12, $f0, $f2
/* 3E964 80063564 46006004 */  sqrt.s    $f0, $f12
/* 3E968 80063568 46000032 */  c.eq.s    $f0, $f0
/* 3E96C 8006356C 00000000 */  nop       
/* 3E970 80063570 45010003 */  bc1t      .L80063580
/* 3E974 80063574 00000000 */   nop      
/* 3E978 80063578 0C0187BC */  jal       sqrtf
/* 3E97C 8006357C 00000000 */   nop      
.L80063580:
/* 3E980 80063580 44977000 */  mtc1      $s7, $f14
/* 3E984 80063584 44967800 */  mtc1      $s6, $f15
/* 3E988 80063588 46000021 */  cvt.d.s   $f0, $f0
/* 3E98C 8006358C 46207003 */  div.d     $f0, $f14, $f0
/* 3E990 80063590 462000A0 */  cvt.s.d   $f2, $f0
/* 3E994 80063594 4602E702 */  mul.s     $f28, $f28, $f2
/* 3E998 80063598 3C014300 */  lui       $at, 0x4300
/* 3E99C 8006359C 44810000 */  mtc1      $at, $f0
/* 3E9A0 800635A0 00000000 */  nop       
/* 3E9A4 800635A4 4600A102 */  mul.s     $f4, $f20, $f0
/* 3E9A8 800635A8 00000000 */  nop       
/* 3E9AC 800635AC 4602F782 */  mul.s     $f30, $f30, $f2
/* 3E9B0 800635B0 3C0142FE */  lui       $at, 0x42fe
/* 3E9B4 800635B4 44810000 */  mtc1      $at, $f0
/* 3E9B8 800635B8 00000000 */  nop       
/* 3E9BC 800635BC 4600203C */  c.lt.s    $f4, $f0
/* 3E9C0 800635C0 00000000 */  nop       
/* 3E9C4 800635C4 00000000 */  nop       
/* 3E9C8 800635C8 45000005 */  bc1f      .L800635E0
/* 3E9CC 800635CC 4602D682 */   mul.s    $f26, $f26, $f2
/* 3E9D0 800635D0 4600200D */  trunc.w.s $f0, $f4
/* 3E9D4 800635D4 44020000 */  mfc1      $v0, $f0
/* 3E9D8 800635D8 08018D79 */  j         .L800635E4
/* 3E9DC 800635DC 00000000 */   nop      
.L800635E0:
/* 3E9E0 800635E0 2402007F */  addiu     $v0, $zero, 0x7f
.L800635E4:
/* 3E9E4 800635E4 3C014300 */  lui       $at, 0x4300
/* 3E9E8 800635E8 44810000 */  mtc1      $at, $f0
/* 3E9EC 800635EC 00000000 */  nop       
/* 3E9F0 800635F0 4600B082 */  mul.s     $f2, $f22, $f0
/* 3E9F4 800635F4 3C0142FE */  lui       $at, 0x42fe
/* 3E9F8 800635F8 44810000 */  mtc1      $at, $f0
/* 3E9FC 800635FC 00000000 */  nop       
/* 3EA00 80063600 4600103C */  c.lt.s    $f2, $f0
/* 3EA04 80063604 00000000 */  nop       
/* 3EA08 80063608 00000000 */  nop       
/* 3EA0C 8006360C 45000005 */  bc1f      .L80063624
/* 3EA10 80063610 A2020008 */   sb       $v0, 8($s0)
/* 3EA14 80063614 4600100D */  trunc.w.s $f0, $f2
/* 3EA18 80063618 44020000 */  mfc1      $v0, $f0
/* 3EA1C 8006361C 08018D8A */  j         .L80063628
/* 3EA20 80063620 00000000 */   nop      
.L80063624:
/* 3EA24 80063624 2402007F */  addiu     $v0, $zero, 0x7f
.L80063628:
/* 3EA28 80063628 3C014300 */  lui       $at, 0x4300
/* 3EA2C 8006362C 44810000 */  mtc1      $at, $f0
/* 3EA30 80063630 00000000 */  nop       
/* 3EA34 80063634 4600C082 */  mul.s     $f2, $f24, $f0
/* 3EA38 80063638 3C0142FE */  lui       $at, 0x42fe
/* 3EA3C 8006363C 44810000 */  mtc1      $at, $f0
/* 3EA40 80063640 00000000 */  nop       
/* 3EA44 80063644 4600103C */  c.lt.s    $f2, $f0
/* 3EA48 80063648 00000000 */  nop       
/* 3EA4C 8006364C 00000000 */  nop       
/* 3EA50 80063650 45000005 */  bc1f      .L80063668
/* 3EA54 80063654 A2020009 */   sb       $v0, 9($s0)
/* 3EA58 80063658 4600100D */  trunc.w.s $f0, $f2
/* 3EA5C 8006365C 44020000 */  mfc1      $v0, $f0
/* 3EA60 80063660 08018D9B */  j         .L8006366C
/* 3EA64 80063664 00000000 */   nop      
.L80063668:
/* 3EA68 80063668 2402007F */  addiu     $v0, $zero, 0x7f
.L8006366C:
/* 3EA6C 8006366C 3C014300 */  lui       $at, 0x4300
/* 3EA70 80063670 44810000 */  mtc1      $at, $f0
/* 3EA74 80063674 00000000 */  nop       
/* 3EA78 80063678 4600E082 */  mul.s     $f2, $f28, $f0
/* 3EA7C 8006367C 3C0142FE */  lui       $at, 0x42fe
/* 3EA80 80063680 44810000 */  mtc1      $at, $f0
/* 3EA84 80063684 00000000 */  nop       
/* 3EA88 80063688 4600103C */  c.lt.s    $f2, $f0
/* 3EA8C 8006368C 00000000 */  nop       
/* 3EA90 80063690 00000000 */  nop       
/* 3EA94 80063694 45000005 */  bc1f      .L800636AC
/* 3EA98 80063698 A202000A */   sb       $v0, 0xa($s0)
/* 3EA9C 8006369C 4600100D */  trunc.w.s $f0, $f2
/* 3EAA0 800636A0 44020000 */  mfc1      $v0, $f0
/* 3EAA4 800636A4 08018DAC */  j         .L800636B0
/* 3EAA8 800636A8 00000000 */   nop      
.L800636AC:
/* 3EAAC 800636AC 2402007F */  addiu     $v0, $zero, 0x7f
.L800636B0:
/* 3EAB0 800636B0 3C014300 */  lui       $at, 0x4300
/* 3EAB4 800636B4 44810000 */  mtc1      $at, $f0
/* 3EAB8 800636B8 00000000 */  nop       
/* 3EABC 800636BC 4600F082 */  mul.s     $f2, $f30, $f0
/* 3EAC0 800636C0 3C0142FE */  lui       $at, 0x42fe
/* 3EAC4 800636C4 44810000 */  mtc1      $at, $f0
/* 3EAC8 800636C8 00000000 */  nop       
/* 3EACC 800636CC 4600103C */  c.lt.s    $f2, $f0
/* 3EAD0 800636D0 00000000 */  nop       
/* 3EAD4 800636D4 00000000 */  nop       
/* 3EAD8 800636D8 45000005 */  bc1f      .L800636F0
/* 3EADC 800636DC A2020018 */   sb       $v0, 0x18($s0)
/* 3EAE0 800636E0 4600100D */  trunc.w.s $f0, $f2
/* 3EAE4 800636E4 44020000 */  mfc1      $v0, $f0
/* 3EAE8 800636E8 08018DBD */  j         .L800636F4
/* 3EAEC 800636EC 00000000 */   nop      
.L800636F0:
/* 3EAF0 800636F0 2402007F */  addiu     $v0, $zero, 0x7f
.L800636F4:
/* 3EAF4 800636F4 3C014300 */  lui       $at, 0x4300
/* 3EAF8 800636F8 44810000 */  mtc1      $at, $f0
/* 3EAFC 800636FC 00000000 */  nop       
/* 3EB00 80063700 4600D082 */  mul.s     $f2, $f26, $f0
/* 3EB04 80063704 3C0142FE */  lui       $at, 0x42fe
/* 3EB08 80063708 44810000 */  mtc1      $at, $f0
/* 3EB0C 8006370C 00000000 */  nop       
/* 3EB10 80063710 4600103C */  c.lt.s    $f2, $f0
/* 3EB14 80063714 00000000 */  nop       
/* 3EB18 80063718 00000000 */  nop       
/* 3EB1C 8006371C 45000006 */  bc1f      .L80063738
/* 3EB20 80063720 A2020019 */   sb       $v0, 0x19($s0)
/* 3EB24 80063724 4600100D */  trunc.w.s $f0, $f2
/* 3EB28 80063728 44020000 */  mfc1      $v0, $f0
/* 3EB2C 8006372C 00000000 */  nop       
/* 3EB30 80063730 08018DD0 */  j         .L80063740
/* 3EB34 80063734 A202001A */   sb       $v0, 0x1a($s0)
.L80063738:
/* 3EB38 80063738 2402007F */  addiu     $v0, $zero, 0x7f
/* 3EB3C 8006373C A202001A */  sb        $v0, 0x1a($s0)
.L80063740:
/* 3EB40 80063740 44958000 */  mtc1      $s5, $f16
/* 3EB44 80063744 00000000 */  nop       
/* 3EB48 80063748 46148102 */  mul.s     $f4, $f16, $f20
/* 3EB4C 8006374C 449E7000 */  mtc1      $fp, $f14
/* 3EB50 80063750 00000000 */  nop       
/* 3EB54 80063754 46167182 */  mul.s     $f6, $f14, $f22
/* 3EB58 80063758 44957000 */  mtc1      $s5, $f14
/* 3EB5C 8006375C 00000000 */  nop       
/* 3EB60 80063760 461C7082 */  mul.s     $f2, $f14, $f28
/* 3EB64 80063764 C7B00078 */  lwc1      $f16, 0x78($sp)
/* 3EB68 80063768 46188202 */  mul.s     $f8, $f16, $f24
/* 3EB6C 8006376C 449E8000 */  mtc1      $fp, $f16
/* 3EB70 80063770 A2000000 */  sb        $zero, ($s0)
/* 3EB74 80063774 A2000001 */  sb        $zero, 1($s0)
/* 3EB78 80063778 A2000002 */  sb        $zero, 2($s0)
/* 3EB7C 8006377C A2000003 */  sb        $zero, 3($s0)
/* 3EB80 80063780 A2000004 */  sb        $zero, 4($s0)
/* 3EB84 80063784 461E8282 */  mul.s     $f10, $f16, $f30
/* 3EB88 80063788 A2000005 */  sb        $zero, 5($s0)
/* 3EB8C 8006378C A2000006 */  sb        $zero, 6($s0)
/* 3EB90 80063790 A2000007 */  sb        $zero, 7($s0)
/* 3EB94 80063794 C7AE0078 */  lwc1      $f14, 0x78($sp)
/* 3EB98 80063798 461A7302 */  mul.s     $f12, $f14, $f26
/* 3EB9C 8006379C 44958000 */  mtc1      $s5, $f16
/* 3EBA0 800637A0 44947000 */  mtc1      $s4, $f14
/* 3EBA4 800637A4 24020080 */  addiu     $v0, $zero, 0x80
/* 3EBA8 800637A8 A2000010 */  sb        $zero, 0x10($s0)
/* 3EBAC 800637AC A2020011 */  sb        $v0, 0x11($s0)
/* 3EBB0 800637B0 A2000012 */  sb        $zero, 0x12($s0)
/* 3EBB4 800637B4 A2000013 */  sb        $zero, 0x13($s0)
/* 3EBB8 800637B8 A2000014 */  sb        $zero, 0x14($s0)
/* 3EBBC 800637BC A2020015 */  sb        $v0, 0x15($s0)
/* 3EBC0 800637C0 A2000016 */  sb        $zero, 0x16($s0)
/* 3EBC4 800637C4 A2000017 */  sb        $zero, 0x17($s0)
/* 3EBC8 800637C8 E6340000 */  swc1      $f20, ($s1)
/* 3EBCC 800637CC 460E8002 */  mul.s     $f0, $f16, $f14
/* 3EBD0 800637D0 46062100 */  add.s     $f4, $f4, $f6
/* 3EBD4 800637D4 E6360010 */  swc1      $f22, 0x10($s1)
/* 3EBD8 800637D8 449E8000 */  mtc1      $fp, $f16
/* 3EBDC 800637DC 44937000 */  mtc1      $s3, $f14
/* 3EBE0 800637E0 46082100 */  add.s     $f4, $f4, $f8
/* 3EBE4 800637E4 E6380020 */  swc1      $f24, 0x20($s1)
/* 3EBE8 800637E8 E63C0004 */  swc1      $f28, 4($s1)
/* 3EBEC 800637EC 460E8202 */  mul.s     $f8, $f16, $f14
/* 3EBF0 800637F0 460A1080 */  add.s     $f2, $f2, $f10
/* 3EBF4 800637F4 3C013F80 */  lui       $at, 0x3f80
/* 3EBF8 800637F8 44815000 */  mtc1      $at, $f10
/* 3EBFC 800637FC C7B00078 */  lwc1      $f16, 0x78($sp)
/* 3EC00 80063800 44927000 */  mtc1      $s2, $f14
/* 3EC04 80063804 460C1080 */  add.s     $f2, $f2, $f12
/* 3EC08 80063808 460E8182 */  mul.s     $f6, $f16, $f14
/* 3EC0C 8006380C E63E0014 */  swc1      $f30, 0x14($s1)
/* 3EC10 80063810 E63A0024 */  swc1      $f26, 0x24($s1)
/* 3EC14 80063814 46080000 */  add.s     $f0, $f0, $f8
/* 3EC18 80063818 AE340008 */  sw        $s4, 8($s1)
/* 3EC1C 8006381C AE330018 */  sw        $s3, 0x18($s1)
/* 3EC20 80063820 AE320028 */  sw        $s2, 0x28($s1)
/* 3EC24 80063824 46060000 */  add.s     $f0, $f0, $f6
/* 3EC28 80063828 AE20000C */  sw        $zero, 0xc($s1)
/* 3EC2C 8006382C AE20001C */  sw        $zero, 0x1c($s1)
/* 3EC30 80063830 AE20002C */  sw        $zero, 0x2c($s1)
/* 3EC34 80063834 46002107 */  neg.s     $f4, $f4
/* 3EC38 80063838 E62A003C */  swc1      $f10, 0x3c($s1)
/* 3EC3C 8006383C 46001087 */  neg.s     $f2, $f2
/* 3EC40 80063840 E6240030 */  swc1      $f4, 0x30($s1)
/* 3EC44 80063844 46000007 */  neg.s     $f0, $f0
/* 3EC48 80063848 E6220034 */  swc1      $f2, 0x34($s1)
/* 3EC4C 8006384C E6200038 */  swc1      $f0, 0x38($s1)
/* 3EC50 80063850 8FBF0034 */  lw        $ra, 0x34($sp)
/* 3EC54 80063854 8FBE0030 */  lw        $fp, 0x30($sp)
/* 3EC58 80063858 8FB7002C */  lw        $s7, 0x2c($sp)
/* 3EC5C 8006385C 8FB60028 */  lw        $s6, 0x28($sp)
/* 3EC60 80063860 8FB50024 */  lw        $s5, 0x24($sp)
/* 3EC64 80063864 8FB40020 */  lw        $s4, 0x20($sp)
/* 3EC68 80063868 8FB3001C */  lw        $s3, 0x1c($sp)
/* 3EC6C 8006386C 8FB20018 */  lw        $s2, 0x18($sp)
/* 3EC70 80063870 8FB10014 */  lw        $s1, 0x14($sp)
/* 3EC74 80063874 8FB00010 */  lw        $s0, 0x10($sp)
/* 3EC78 80063878 D7BE0060 */  ldc1      $f30, 0x60($sp)
/* 3EC7C 8006387C D7BC0058 */  ldc1      $f28, 0x58($sp)
/* 3EC80 80063880 D7BA0050 */  ldc1      $f26, 0x50($sp)
/* 3EC84 80063884 D7B80048 */  ldc1      $f24, 0x48($sp)
/* 3EC88 80063888 D7B60040 */  ldc1      $f22, 0x40($sp)
/* 3EC8C 8006388C D7B40038 */  ldc1      $f20, 0x38($sp)
/* 3EC90 80063890 03E00008 */  jr        $ra
/* 3EC94 80063894 27BD0068 */   addiu    $sp, $sp, 0x68
