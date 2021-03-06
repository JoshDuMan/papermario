.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8005B6D4
/* 36AD4 8005B6D4 27BDFF58 */  addiu     $sp, $sp, -0xa8
/* 36AD8 8005B6D8 00042400 */  sll       $a0, $a0, 0x10
/* 36ADC 8005B6DC 00042403 */  sra       $a0, $a0, 0x10
/* 36AE0 8005B6E0 000410C0 */  sll       $v0, $a0, 3
/* 36AE4 8005B6E4 00441023 */  subu      $v0, $v0, $a0
/* 36AE8 8005B6E8 3C03800B */  lui       $v1, %hi(D_800B42C4)
/* 36AEC 8005B6EC 8C6342C4 */  lw        $v1, %lo(D_800B42C4)($v1)
/* 36AF0 8005B6F0 00021080 */  sll       $v0, $v0, 2
/* 36AF4 8005B6F4 AFBF0074 */  sw        $ra, 0x74($sp)
/* 36AF8 8005B6F8 AFB40070 */  sw        $s4, 0x70($sp)
/* 36AFC 8005B6FC AFB3006C */  sw        $s3, 0x6c($sp)
/* 36B00 8005B700 AFB20068 */  sw        $s2, 0x68($sp)
/* 36B04 8005B704 AFB10064 */  sw        $s1, 0x64($sp)
/* 36B08 8005B708 AFB00060 */  sw        $s0, 0x60($sp)
/* 36B0C 8005B70C F7BE00A0 */  sdc1      $f30, 0xa0($sp)
/* 36B10 8005B710 F7BC0098 */  sdc1      $f28, 0x98($sp)
/* 36B14 8005B714 F7BA0090 */  sdc1      $f26, 0x90($sp)
/* 36B18 8005B718 F7B80088 */  sdc1      $f24, 0x88($sp)
/* 36B1C 8005B71C F7B60080 */  sdc1      $f22, 0x80($sp)
/* 36B20 8005B720 F7B40078 */  sdc1      $f20, 0x78($sp)
/* 36B24 8005B724 00629821 */  addu      $s3, $v1, $v0
/* 36B28 8005B728 0C047FD0 */  jal       func_8011FF40
/* 36B2C 8005B72C 86640008 */   lh       $a0, 8($s3)
/* 36B30 8005B730 0040802D */  daddu     $s0, $v0, $zero
/* 36B34 8005B734 8E050004 */  lw        $a1, 4($s0)
/* 36B38 8005B738 14A00005 */  bnez      $a1, .L8005B750
/* 36B3C 8005B73C 26040058 */   addiu    $a0, $s0, 0x58
/* 36B40 8005B740 0C00A5B8 */  jal       func_800296E0
/* 36B44 8005B744 27A50020 */   addiu    $a1, $sp, 0x20
/* 36B48 8005B748 08016DDB */  j         .L8005B76C
/* 36B4C 8005B74C 0000902D */   daddu    $s2, $zero, $zero
.L8005B750:
/* 36B50 8005B750 0C019D58 */  jal       func_80067560
/* 36B54 8005B754 27A40020 */   addiu    $a0, $sp, 0x20
/* 36B58 8005B758 26040058 */  addiu     $a0, $s0, 0x58
/* 36B5C 8005B75C 27A50020 */  addiu     $a1, $sp, 0x20
/* 36B60 8005B760 0C019D78 */  jal       func_800675E0
/* 36B64 8005B764 00A0302D */   daddu    $a2, $a1, $zero
/* 36B68 8005B768 0000902D */  daddu     $s2, $zero, $zero
.L8005B76C:
/* 36B6C 8005B76C 8E74000C */  lw        $s4, 0xc($s3)
/* 36B70 8005B770 8E710018 */  lw        $s1, 0x18($s3)
/* 36B74 8005B774 3C014974 */  lui       $at, 0x4974
/* 36B78 8005B778 342123FE */  ori       $at, $at, 0x23fe
/* 36B7C 8005B77C 4481A000 */  mtc1      $at, $f20
/* 36B80 8005B780 3C01C974 */  lui       $at, 0xc974
/* 36B84 8005B784 342123FE */  ori       $at, $at, 0x23fe
/* 36B88 8005B788 4481B000 */  mtc1      $at, $f22
/* 36B8C 8005B78C 86620014 */  lh        $v0, 0x14($s3)
/* 36B90 8005B790 4600A686 */  mov.s     $f26, $f20
/* 36B94 8005B794 4600A606 */  mov.s     $f24, $f20
/* 36B98 8005B798 4600B786 */  mov.s     $f30, $f22
/* 36B9C 8005B79C 1840002C */  blez      $v0, .L8005B850
/* 36BA0 8005B7A0 4600B706 */   mov.s    $f28, $f22
/* 36BA4 8005B7A4 26300008 */  addiu     $s0, $s1, 8
.L8005B7A8:
/* 36BA8 8005B7A8 26220004 */  addiu     $v0, $s1, 4
/* 36BAC 8005B7AC AFB10010 */  sw        $s1, 0x10($sp)
/* 36BB0 8005B7B0 AFA20014 */  sw        $v0, 0x14($sp)
/* 36BB4 8005B7B4 AFB00018 */  sw        $s0, 0x18($sp)
/* 36BB8 8005B7B8 8E050004 */  lw        $a1, 4($s0)
/* 36BBC 8005B7BC 8E060008 */  lw        $a2, 8($s0)
/* 36BC0 8005B7C0 8E07000C */  lw        $a3, 0xc($s0)
/* 36BC4 8005B7C4 0C019E94 */  jal       func_80067A50
/* 36BC8 8005B7C8 27A40020 */   addiu    $a0, $sp, 0x20
/* 36BCC 8005B7CC C6200000 */  lwc1      $f0, ($s1)
/* 36BD0 8005B7D0 4618003C */  c.lt.s    $f0, $f24
/* 36BD4 8005B7D4 00000000 */  nop
/* 36BD8 8005B7D8 45030001 */  bc1tl     .L8005B7E0
/* 36BDC 8005B7DC 46000606 */   mov.s    $f24, $f0
.L8005B7E0:
/* 36BE0 8005B7E0 4600E03C */  c.lt.s    $f28, $f0
/* 36BE4 8005B7E4 00000000 */  nop
/* 36BE8 8005B7E8 45030001 */  bc1tl     .L8005B7F0
/* 36BEC 8005B7EC 46000706 */   mov.s    $f28, $f0
.L8005B7F0:
/* 36BF0 8005B7F0 C600FFFC */  lwc1      $f0, -4($s0)
/* 36BF4 8005B7F4 461A003C */  c.lt.s    $f0, $f26
/* 36BF8 8005B7F8 00000000 */  nop
/* 36BFC 8005B7FC 45030001 */  bc1tl     .L8005B804
/* 36C00 8005B800 46000686 */   mov.s    $f26, $f0
.L8005B804:
/* 36C04 8005B804 4600F03C */  c.lt.s    $f30, $f0
/* 36C08 8005B808 00000000 */  nop
/* 36C0C 8005B80C 45030001 */  bc1tl     .L8005B814
/* 36C10 8005B810 46000786 */   mov.s    $f30, $f0
.L8005B814:
/* 36C14 8005B814 C6000000 */  lwc1      $f0, ($s0)
/* 36C18 8005B818 4614003C */  c.lt.s    $f0, $f20
/* 36C1C 8005B81C 00000000 */  nop
/* 36C20 8005B820 45030001 */  bc1tl     .L8005B828
/* 36C24 8005B824 46000506 */   mov.s    $f20, $f0
.L8005B828:
/* 36C28 8005B828 4600B03C */  c.lt.s    $f22, $f0
/* 36C2C 8005B82C 00000000 */  nop
/* 36C30 8005B830 45030001 */  bc1tl     .L8005B838
/* 36C34 8005B834 46000586 */   mov.s    $f22, $f0
.L8005B838:
/* 36C38 8005B838 26100018 */  addiu     $s0, $s0, 0x18
/* 36C3C 8005B83C 86620014 */  lh        $v0, 0x14($s3)
/* 36C40 8005B840 26520001 */  addiu     $s2, $s2, 1
/* 36C44 8005B844 0242102A */  slt       $v0, $s2, $v0
/* 36C48 8005B848 1440FFD7 */  bnez      $v0, .L8005B7A8
/* 36C4C 8005B84C 26310018 */   addiu    $s1, $s1, 0x18
.L8005B850:
/* 36C50 8005B850 8E620010 */  lw        $v0, 0x10($s3)
/* 36C54 8005B854 E4580000 */  swc1      $f24, ($v0)
/* 36C58 8005B858 8E620010 */  lw        $v0, 0x10($s3)
/* 36C5C 8005B85C E45A0004 */  swc1      $f26, 4($v0)
/* 36C60 8005B860 8E620010 */  lw        $v0, 0x10($s3)
/* 36C64 8005B864 E4540008 */  swc1      $f20, 8($v0)
/* 36C68 8005B868 8E620010 */  lw        $v0, 0x10($s3)
/* 36C6C 8005B86C E45C000C */  swc1      $f28, 0xc($v0)
/* 36C70 8005B870 8E620010 */  lw        $v0, 0x10($s3)
/* 36C74 8005B874 E45E0010 */  swc1      $f30, 0x10($v0)
/* 36C78 8005B878 8E620010 */  lw        $v0, 0x10($s3)
/* 36C7C 8005B87C E4560014 */  swc1      $f22, 0x14($v0)
/* 36C80 8005B880 8662000A */  lh        $v0, 0xa($s3)
/* 36C84 8005B884 18400066 */  blez      $v0, .L8005BA20
/* 36C88 8005B888 0000902D */   daddu    $s2, $zero, $zero
/* 36C8C 8005B88C 4480D000 */  mtc1      $zero, $f26
/* 36C90 8005B890 26900038 */  addiu     $s0, $s4, 0x38
.L8005B894:
/* 36C94 8005B894 8E04FFD0 */  lw        $a0, -0x30($s0)
/* 36C98 8005B898 8E820000 */  lw        $v0, ($s4)
/* 36C9C 8005B89C C4800000 */  lwc1      $f0, ($a0)
/* 36CA0 8005B8A0 C4420000 */  lwc1      $f2, ($v0)
/* 36CA4 8005B8A4 46020001 */  sub.s     $f0, $f0, $f2
/* 36CA8 8005B8A8 E600FFD4 */  swc1      $f0, -0x2c($s0)
/* 36CAC 8005B8AC C4800004 */  lwc1      $f0, 4($a0)
/* 36CB0 8005B8B0 C4420004 */  lwc1      $f2, 4($v0)
/* 36CB4 8005B8B4 46020001 */  sub.s     $f0, $f0, $f2
/* 36CB8 8005B8B8 E600FFD8 */  swc1      $f0, -0x28($s0)
/* 36CBC 8005B8BC C4800008 */  lwc1      $f0, 8($a0)
/* 36CC0 8005B8C0 C4420008 */  lwc1      $f2, 8($v0)
/* 36CC4 8005B8C4 46020001 */  sub.s     $f0, $f0, $f2
/* 36CC8 8005B8C8 8E03FFCC */  lw        $v1, -0x34($s0)
/* 36CCC 8005B8CC E600FFDC */  swc1      $f0, -0x24($s0)
/* 36CD0 8005B8D0 C4400000 */  lwc1      $f0, ($v0)
/* 36CD4 8005B8D4 C4620000 */  lwc1      $f2, ($v1)
/* 36CD8 8005B8D8 46020001 */  sub.s     $f0, $f0, $f2
/* 36CDC 8005B8DC E600FFE0 */  swc1      $f0, -0x20($s0)
/* 36CE0 8005B8E0 C4400004 */  lwc1      $f0, 4($v0)
/* 36CE4 8005B8E4 C4620004 */  lwc1      $f2, 4($v1)
/* 36CE8 8005B8E8 46020001 */  sub.s     $f0, $f0, $f2
/* 36CEC 8005B8EC E600FFE4 */  swc1      $f0, -0x1c($s0)
/* 36CF0 8005B8F0 C4400008 */  lwc1      $f0, 8($v0)
/* 36CF4 8005B8F4 C4620008 */  lwc1      $f2, 8($v1)
/* 36CF8 8005B8F8 46020001 */  sub.s     $f0, $f0, $f2
/* 36CFC 8005B8FC C60AFFD8 */  lwc1      $f10, -0x28($s0)
/* 36D00 8005B900 E600FFE8 */  swc1      $f0, -0x18($s0)
/* 36D04 8005B904 46000186 */  mov.s     $f6, $f0
/* 36D08 8005B908 46065382 */  mul.s     $f14, $f10, $f6
/* 36D0C 8005B90C 00000000 */  nop
/* 36D10 8005B910 C604FFD4 */  lwc1      $f4, -0x2c($s0)
/* 36D14 8005B914 46062182 */  mul.s     $f6, $f4, $f6
/* 36D18 8005B918 00000000 */  nop
/* 36D1C 8005B91C C608FFE4 */  lwc1      $f8, -0x1c($s0)
/* 36D20 8005B920 46082102 */  mul.s     $f4, $f4, $f8
/* 36D24 8005B924 00000000 */  nop
/* 36D28 8005B928 C602FFE0 */  lwc1      $f2, -0x20($s0)
/* 36D2C 8005B92C 46025282 */  mul.s     $f10, $f10, $f2
/* 36D30 8005B930 00000000 */  nop
/* 36D34 8005B934 C600FFDC */  lwc1      $f0, -0x24($s0)
/* 36D38 8005B938 46080302 */  mul.s     $f12, $f0, $f8
/* 36D3C 8005B93C 00000000 */  nop
/* 36D40 8005B940 46020002 */  mul.s     $f0, $f0, $f2
/* 36D44 8005B944 00000000 */  nop
/* 36D48 8005B948 460A2501 */  sub.s     $f20, $f4, $f10
/* 36D4C 8005B94C 4614A102 */  mul.s     $f4, $f20, $f20
/* 36D50 8005B950 00000000 */  nop
/* 36D54 8005B954 460C7601 */  sub.s     $f24, $f14, $f12
/* 36D58 8005B958 4618C202 */  mul.s     $f8, $f24, $f24
/* 36D5C 8005B95C 00000000 */  nop
/* 36D60 8005B960 C4620000 */  lwc1      $f2, ($v1)
/* 36D64 8005B964 46060581 */  sub.s     $f22, $f0, $f6
/* 36D68 8005B968 C4800000 */  lwc1      $f0, ($a0)
/* 36D6C 8005B96C 46001081 */  sub.s     $f2, $f2, $f0
/* 36D70 8005B970 4616B182 */  mul.s     $f6, $f22, $f22
/* 36D74 8005B974 00000000 */  nop
/* 36D78 8005B978 E602FFEC */  swc1      $f2, -0x14($s0)
/* 36D7C 8005B97C C4620004 */  lwc1      $f2, 4($v1)
/* 36D80 8005B980 C4800004 */  lwc1      $f0, 4($a0)
/* 36D84 8005B984 46001081 */  sub.s     $f2, $f2, $f0
/* 36D88 8005B988 E602FFF0 */  swc1      $f2, -0x10($s0)
/* 36D8C 8005B98C C4620008 */  lwc1      $f2, 8($v1)
/* 36D90 8005B990 46064200 */  add.s     $f8, $f8, $f6
/* 36D94 8005B994 C4800008 */  lwc1      $f0, 8($a0)
/* 36D98 8005B998 46001081 */  sub.s     $f2, $f2, $f0
/* 36D9C 8005B99C 46044300 */  add.s     $f12, $f8, $f4
/* 36DA0 8005B9A0 461A6032 */  c.eq.s    $f12, $f26
/* 36DA4 8005B9A4 00000000 */  nop
/* 36DA8 8005B9A8 4501000D */  bc1t      .L8005B9E0
/* 36DAC 8005B9AC E602FFF4 */   swc1     $f2, -0xc($s0)
/* 36DB0 8005B9B0 46006084 */  sqrt.s    $f2, $f12
/* 36DB4 8005B9B4 46021032 */  c.eq.s    $f2, $f2
/* 36DB8 8005B9B8 00000000 */  nop
/* 36DBC 8005B9BC 45010004 */  bc1t      .L8005B9D0
/* 36DC0 8005B9C0 00000000 */   nop
/* 36DC4 8005B9C4 0C0187B0 */  jal       func_80061EC0
/* 36DC8 8005B9C8 00000000 */   nop
/* 36DCC 8005B9CC 46000086 */  mov.s     $f2, $f0
.L8005B9D0:
/* 36DD0 8005B9D0 3C013F80 */  lui       $at, 0x3f80
/* 36DD4 8005B9D4 44810000 */  mtc1      $at, $f0
/* 36DD8 8005B9D8 08016E79 */  j         .L8005B9E4
/* 36DDC 8005B9DC 46020303 */   div.s    $f12, $f0, $f2
.L8005B9E0:
/* 36DE0 8005B9E0 4600D306 */  mov.s     $f12, $f26
.L8005B9E4:
/* 36DE4 8005B9E4 460CC002 */  mul.s     $f0, $f24, $f12
/* 36DE8 8005B9E8 00000000 */  nop
/* 36DEC 8005B9EC 460CB082 */  mul.s     $f2, $f22, $f12
/* 36DF0 8005B9F0 00000000 */  nop
/* 36DF4 8005B9F4 460CA102 */  mul.s     $f4, $f20, $f12
/* 36DF8 8005B9F8 00000000 */  nop
/* 36DFC 8005B9FC 26940040 */  addiu     $s4, $s4, 0x40
/* 36E00 8005BA00 26520001 */  addiu     $s2, $s2, 1
/* 36E04 8005BA04 E600FFF8 */  swc1      $f0, -8($s0)
/* 36E08 8005BA08 E602FFFC */  swc1      $f2, -4($s0)
/* 36E0C 8005BA0C E6040000 */  swc1      $f4, ($s0)
/* 36E10 8005BA10 8662000A */  lh        $v0, 0xa($s3)
/* 36E14 8005BA14 0242102A */  slt       $v0, $s2, $v0
/* 36E18 8005BA18 1440FF9E */  bnez      $v0, .L8005B894
/* 36E1C 8005BA1C 26100040 */   addiu    $s0, $s0, 0x40
.L8005BA20:
/* 36E20 8005BA20 8FBF0074 */  lw        $ra, 0x74($sp)
/* 36E24 8005BA24 8FB40070 */  lw        $s4, 0x70($sp)
/* 36E28 8005BA28 8FB3006C */  lw        $s3, 0x6c($sp)
/* 36E2C 8005BA2C 8FB20068 */  lw        $s2, 0x68($sp)
/* 36E30 8005BA30 8FB10064 */  lw        $s1, 0x64($sp)
/* 36E34 8005BA34 8FB00060 */  lw        $s0, 0x60($sp)
/* 36E38 8005BA38 D7BE00A0 */  ldc1      $f30, 0xa0($sp)
/* 36E3C 8005BA3C D7BC0098 */  ldc1      $f28, 0x98($sp)
/* 36E40 8005BA40 D7BA0090 */  ldc1      $f26, 0x90($sp)
/* 36E44 8005BA44 D7B80088 */  ldc1      $f24, 0x88($sp)
/* 36E48 8005BA48 D7B60080 */  ldc1      $f22, 0x80($sp)
/* 36E4C 8005BA4C D7B40078 */  ldc1      $f20, 0x78($sp)
/* 36E50 8005BA50 03E00008 */  jr        $ra
/* 36E54 8005BA54 27BD00A8 */   addiu    $sp, $sp, 0xa8
