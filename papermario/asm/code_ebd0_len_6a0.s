
.section .text800337D0, "ax"

func_800337D0:
/* 00EBD0 800337D0 3C028007 */  lui   $v0, 0x8007
/* 00EBD4 800337D4 8C42419C */  lw    $v0, 0x419c($v0)
/* 00EBD8 800337D8 03E00008 */  jr    $ra
/* 00EBDC 800337DC A44400B6 */   sh    $a0, 0xb6($v0)

func_800337E0:
/* 00EBE0 800337E0 3C028007 */  lui   $v0, 0x8007
/* 00EBE4 800337E4 8C42419C */  lw    $v0, 0x419c($v0)
/* 00EBE8 800337E8 A44400BC */  sh    $a0, 0xbc($v0)
/* 00EBEC 800337EC A44400BA */  sh    $a0, 0xba($v0)
/* 00EBF0 800337F0 03E00008 */  jr    $ra
/* 00EBF4 800337F4 A44400B8 */   sh    $a0, 0xb8($v0)

func_800337F8:
/* 00EBF8 800337F8 3C058007 */  lui   $a1, 0x8007
/* 00EBFC 800337FC 8CA5419C */  lw    $a1, 0x419c($a1)
/* 00EC00 80033800 84A200B6 */  lh    $v0, 0xb6($a1)
/* 00EC04 80033804 94A300B6 */  lhu   $v1, 0xb6($a1)
/* 00EC08 80033808 14400003 */  bnez  $v0, .L80033818
/* 00EC0C 8003380C 00641023 */   subu  $v0, $v1, $a0
/* 00EC10 80033810 03E00008 */  jr    $ra
/* 00EC14 80033814 24020001 */   addiu $v0, $zero, 1

.L80033818:
/* 00EC18 80033818 A4A200B6 */  sh    $v0, 0xb6($a1)
/* 00EC1C 8003381C 00021400 */  sll   $v0, $v0, 0x10
/* 00EC20 80033820 04420001 */  bltzl $v0, .L80033828
/* 00EC24 80033824 A4A000B6 */   sh    $zero, 0xb6($a1)
.L80033828:
/* 00EC28 80033828 03E00008 */  jr    $ra
/* 00EC2C 8003382C 0000102D */   daddu $v0, $zero, $zero

func_80033830:
/* 00EC30 80033830 3C058007 */  lui   $a1, 0x8007
/* 00EC34 80033834 8CA5419C */  lw    $a1, 0x419c($a1)
/* 00EC38 80033838 240600FF */  addiu $a2, $zero, 0xff
/* 00EC3C 8003383C 84A200B6 */  lh    $v0, 0xb6($a1)
/* 00EC40 80033840 94A300B6 */  lhu   $v1, 0xb6($a1)
/* 00EC44 80033844 14460003 */  bne   $v0, $a2, .L80033854
/* 00EC48 80033848 00641021 */   addu  $v0, $v1, $a0
/* 00EC4C 8003384C 03E00008 */  jr    $ra
/* 00EC50 80033850 24020001 */   addiu $v0, $zero, 1

.L80033854:
/* 00EC54 80033854 A4A200B6 */  sh    $v0, 0xb6($a1)
/* 00EC58 80033858 00021400 */  sll   $v0, $v0, 0x10
/* 00EC5C 8003385C 00021403 */  sra   $v0, $v0, 0x10
/* 00EC60 80033860 28420100 */  slti  $v0, $v0, 0x100
/* 00EC64 80033864 50400001 */  beql  $v0, $zero, .L8003386C
/* 00EC68 80033868 A4A600B6 */   sh    $a2, 0xb6($a1)
.L8003386C:
/* 00EC6C 8003386C 03E00008 */  jr    $ra
/* 00EC70 80033870 0000102D */   daddu $v0, $zero, $zero

func_80033874:
/* 00EC74 80033874 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00EC78 80033878 AFB00010 */  sw    $s0, 0x10($sp)
/* 00EC7C 8003387C 3C108007 */  lui   $s0, 0x8007
/* 00EC80 80033880 2610419C */  addiu $s0, $s0, 0x419c
/* 00EC84 80033884 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00EC88 80033888 8E020000 */  lw    $v0, ($s0)
/* 00EC8C 8003388C 844200B6 */  lh    $v0, 0xb6($v0)
/* 00EC90 80033890 44820000 */  mtc1  $v0, $f0
/* 00EC94 80033894 00000000 */  nop   
/* 00EC98 80033898 46800020 */  cvt.s.w $f0, $f0
/* 00EC9C 8003389C 44050000 */  mfc1  $a1, $f0
/* 00ECA0 800338A0 0C04DF62 */  jal   func_80137D88
/* 00ECA4 800338A4 0000202D */   daddu $a0, $zero, $zero
/* 00ECA8 800338A8 8E020000 */  lw    $v0, ($s0)
/* 00ECAC 800338AC 904500B9 */  lbu   $a1, 0xb9($v0)
/* 00ECB0 800338B0 904600BB */  lbu   $a2, 0xbb($v0)
/* 00ECB4 800338B4 904700BD */  lbu   $a3, 0xbd($v0)
/* 00ECB8 800338B8 0C04DF84 */  jal   func_80137E10
/* 00ECBC 800338BC 0000202D */   daddu $a0, $zero, $zero
/* 00ECC0 800338C0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00ECC4 800338C4 8FB00010 */  lw    $s0, 0x10($sp)
/* 00ECC8 800338C8 03E00008 */  jr    $ra
/* 00ECCC 800338CC 27BD0018 */   addiu $sp, $sp, 0x18

/* 00ECD0 800338D0 24020005 */  addiu $v0, $zero, 5
/* 00ECD4 800338D4 3C01800A */  lui   $at, 0x800a
/* 00ECD8 800338D8 A0220900 */  sb    $v0, 0x900($at)
/* 00ECDC 800338DC 03E00008 */  jr    $ra
/* 00ECE0 800338E0 00000000 */   nop   

/* 00ECE4 800338E4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00ECE8 800338E8 AFB00010 */  sw    $s0, 0x10($sp)
/* 00ECEC 800338EC 3C10800A */  lui   $s0, 0x800a
/* 00ECF0 800338F0 26100900 */  addiu $s0, $s0, 0x900
/* 00ECF4 800338F4 24030005 */  addiu $v1, $zero, 5
/* 00ECF8 800338F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00ECFC 800338FC 82020000 */  lb    $v0, ($s0)
/* 00ED00 80033900 1443000F */  bne   $v0, $v1, .L80033940
/* 00ED04 80033904 92040000 */   lbu   $a0, ($s0)
/* 00ED08 80033908 3C02800A */  lui   $v0, 0x800a
/* 00ED0C 8003390C 8C42A658 */  lw    $v0, -0x59a8($v0)
/* 00ED10 80033910 8C430004 */  lw    $v1, 4($v0)
/* 00ED14 80033914 3C02800A */  lui   $v0, 0x800a
/* 00ED18 80033918 8C42A64C */  lw    $v0, -0x59b4($v0)
/* 00ED1C 8003391C 14620089 */  bne   $v1, $v0, .L80033B44
/* 00ED20 80033920 2484FFFF */   addiu $a0, $a0, -1
/* 00ED24 80033924 3C02800A */  lui   $v0, 0x800a
/* 00ED28 80033928 2442A650 */  addiu $v0, $v0, -0x59b0
/* 00ED2C 8003392C 8C430000 */  lw    $v1, ($v0)
/* 00ED30 80033930 A2040000 */  sb    $a0, ($s0)
/* 00ED34 80033934 34630008 */  ori   $v1, $v1, 8
/* 00ED38 80033938 0C018028 */  jal   nuContRmbForceStop
/* 00ED3C 8003393C AC430000 */   sw    $v1, ($v0)
.L80033940:
/* 00ED40 80033940 82030000 */  lb    $v1, ($s0)
/* 00ED44 80033944 04600071 */  bltz  $v1, .L80033B0C
/* 00ED48 80033948 92020000 */   lbu   $v0, ($s0)
/* 00ED4C 8003394C 18600003 */  blez  $v1, .L8003395C
/* 00ED50 80033950 2442FFFF */   addiu $v0, $v0, -1
/* 00ED54 80033954 0800CED1 */  j     func_80033B44
/* 00ED58 80033958 A2020000 */   sb    $v0, ($s0)

.L8003395C:
/* 00ED5C 8003395C 3C048007 */  lui   $a0, 0x8007
/* 00ED60 80033960 248478A0 */  addiu $a0, $a0, 0x78a0
/* 00ED64 80033964 24050002 */  addiu $a1, $zero, 2
/* 00ED68 80033968 2402FFFF */  addiu $v0, $zero, -1
/* 00ED6C 8003396C 0C017CBC */  jal   nuGfxSetCfb
/* 00ED70 80033970 A2020000 */   sb    $v0, ($s0)
/* 00ED74 80033974 0C018030 */  jal   nuContRmbForceStopEnd
/* 00ED78 80033978 00000000 */   nop   
/* 00ED7C 8003397C 0C05260E */  jal   func_80149838
/* 00ED80 80033980 00000000 */   nop   
/* 00ED84 80033984 0C00EC6A */  jal   func_8003B1A8
/* 00ED88 80033988 00000000 */   nop   
/* 00ED8C 8003398C 3C108007 */  lui   $s0, 0x8007
/* 00ED90 80033990 2610419C */  addiu $s0, $s0, 0x419c
/* 00ED94 80033994 8E030000 */  lw    $v1, ($s0)
/* 00ED98 80033998 24020001 */  addiu $v0, $zero, 1
/* 00ED9C 8003399C 0C016BA8 */  jal   func_8005AEA0
/* 00EDA0 800339A0 A0620070 */   sb    $v0, 0x70($v1)
/* 00EDA4 800339A4 0C00B458 */  jal   func_8002D160
/* 00EDA8 800339A8 00000000 */   nop   
/* 00EDAC 800339AC 0C0AC82D */  jal   func_802B20B4
/* 00EDB0 800339B0 00000000 */   nop   
/* 00EDB4 800339B4 0C05259C */  jal   func_80149670
/* 00EDB8 800339B8 0000202D */   daddu $a0, $zero, $zero
/* 00EDBC 800339BC 8E100000 */  lw    $s0, ($s0)
/* 00EDC0 800339C0 3C03800E */  lui   $v1, 0x800e
/* 00EDC4 800339C4 9063C4EA */  lbu   $v1, -0x3b16($v1)
/* 00EDC8 800339C8 9205007E */  lbu   $a1, 0x7e($s0)
/* 00EDCC 800339CC 3C04800E */  lui   $a0, 0x800e
/* 00EDD0 800339D0 9084C4EB */  lbu   $a0, -0x3b15($a0)
/* 00EDD4 800339D4 30A20001 */  andi  $v0, $a1, 1
/* 00EDD8 800339D8 14400007 */  bnez  $v0, .L800339F8
/* 00EDDC 800339DC 34A20001 */   ori   $v0, $a1, 1
/* 00EDE0 800339E0 24020026 */  addiu $v0, $zero, 0x26
/* 00EDE4 800339E4 54620006 */  bnel  $v1, $v0, .L80033A00
/* 00EDE8 800339E8 24040005 */   addiu $a0, $zero, 5
/* 00EDEC 800339EC 54800004 */  bnezl $a0, .L80033A00
/* 00EDF0 800339F0 24040005 */   addiu $a0, $zero, 5
/* 00EDF4 800339F4 34A20001 */  ori   $v0, $a1, 1
.L800339F8:
/* 00EDF8 800339F8 A202007E */  sb    $v0, 0x7e($s0)
/* 00EDFC 800339FC 24040006 */  addiu $a0, $zero, 6
.L80033A00:
/* 00EE00 80033A00 0C0B763E */  jal   func_802DD8F8
/* 00EE04 80033A04 00000000 */   nop   
/* 00EE08 80033A08 0C045751 */  jal   func_80115D44
/* 00EE0C 80033A0C 00000000 */   nop   
/* 00EE10 80033A10 0C052010 */  jal   func_80148040
/* 00EE14 80033A14 00000000 */   nop   
/* 00EE18 80033A18 0C05177E */  jal   func_80145DF8
/* 00EE1C 80033A1C 00000000 */   nop   
/* 00EE20 80033A20 0C0482EC */  jal   func_80120BB0
/* 00EE24 80033A24 00000000 */   nop   
/* 00EE28 80033A28 0C047889 */  jal   func_8011E224
/* 00EE2C 80033A2C 00000000 */   nop   
/* 00EE30 80033A30 0C048C2E */  jal   func_801230B8
/* 00EE34 80033A34 00000000 */   nop   
/* 00EE38 80033A38 0000202D */  daddu $a0, $zero, $zero
/* 00EE3C 80033A3C 0C0514BA */  jal   func_801452E8
/* 00EE40 80033A40 0080282D */   daddu $a1, $a0, $zero
/* 00EE44 80033A44 0C050440 */  jal   func_80141100
/* 00EE48 80033A48 00000000 */   nop   
/* 00EE4C 80033A4C 0C03A6EC */  jal   func_800E9BB0
/* 00EE50 80033A50 00000000 */   nop   
/* 00EE54 80033A54 0C04C3FC */  jal   func_80130FF0
/* 00EE58 80033A58 00000000 */   nop   
/* 00EE5C 80033A5C 0C0B0C77 */  jal   func_802C31DC
/* 00EE60 80033A60 00000000 */   nop   
/* 00EE64 80033A64 0C00E12F */  jal   func_800384BC
/* 00EE68 80033A68 00000000 */   nop   
/* 00EE6C 80033A6C 0C04432E */  jal   func_80110CB8
/* 00EE70 80033A70 24040001 */   addiu $a0, $zero, 1
/* 00EE74 80033A74 0C0515A0 */  jal   func_80145680
/* 00EE78 80033A78 00000000 */   nop   
/* 00EE7C 80033A7C 3C040017 */  lui   $a0, 0x17
/* 00EE80 80033A80 2484C8E0 */  addiu $a0, $a0, -0x3720
/* 00EE84 80033A84 3C05001D */  lui   $a1, 0x1d
/* 00EE88 80033A88 24A5C310 */  addiu $a1, $a1, -0x3cf0
/* 00EE8C 80033A8C 3C068024 */  lui   $a2, 0x8024
/* 00EE90 80033A90 24C6E000 */  addiu $a2, $a2, -0x2000
/* 00EE94 80033A94 0C00A5CF */  jal   func_8002973C
/* 00EE98 80033A98 00000000 */   nop   
/* 00EE9C 80033A9C 0C08F84C */  jal   func_8023E130
/* 00EEA0 80033AA0 00000000 */   nop   
/* 00EEA4 80033AA4 0C09027D */  jal   func_802409F4
/* 00EEA8 80033AA8 00000000 */   nop   
/* 00EEAC 80033AAC 0C01CAF7 */  jal   func_80072BDC
/* 00EEB0 80033AB0 00000000 */   nop   
/* 00EEB4 80033AB4 3C04800F */  lui   $a0, 0x800f
/* 00EEB8 80033AB8 8C847B30 */  lw    $a0, 0x7b30($a0)
/* 00EEBC 80033ABC 8C820004 */  lw    $v0, 4($a0)
/* 00EEC0 80033AC0 2403FFBF */  addiu $v1, $zero, -0x41
/* 00EEC4 80033AC4 3C01800A */  lui   $at, 0x800a
/* 00EEC8 80033AC8 AC220904 */  sw    $v0, 0x904($at)
/* 00EECC 80033ACC 00431024 */  and   $v0, $v0, $v1
/* 00EED0 80033AD0 0C009C64 */  jal   func_80027190
/* 00EED4 80033AD4 AC820004 */   sw    $v0, 4($a0)
/* 00EED8 80033AD8 3C01800A */  lui   $at, 0x800a
/* 00EEDC 80033ADC AC220908 */  sw    $v0, 0x908($at)
/* 00EEE0 80033AE0 0C009C22 */  jal   func_80027088
/* 00EEE4 80033AE4 0000202D */   daddu $a0, $zero, $zero
/* 00EEE8 80033AE8 3C05800A */  lui   $a1, 0x800a
/* 00EEEC 80033AEC 24A5A650 */  addiu $a1, $a1, -0x59b0
/* 00EEF0 80033AF0 2403FFF7 */  addiu $v1, $zero, -9
/* 00EEF4 80033AF4 8CA20000 */  lw    $v0, ($a1)
/* 00EEF8 80033AF8 3C04800A */  lui   $a0, 0x800a
/* 00EEFC 80033AFC 80840900 */  lb    $a0, 0x900($a0)
/* 00EF00 80033B00 00431024 */  and   $v0, $v0, $v1
/* 00EF04 80033B04 0481000F */  bgez  $a0, .L80033B44
/* 00EF08 80033B08 ACA20000 */   sw    $v0, ($a1)
.L80033B0C:
/* 00EF0C 80033B0C 0C00F949 */  jal   func_8003E524
/* 00EF10 80033B10 00000000 */   nop   
/* 00EF14 80033B14 0C08F90E */  jal   func_8023E438
/* 00EF18 80033B18 00000000 */   nop   
/* 00EF1C 80033B1C 0C00E64C */  jal   func_80039930
/* 00EF20 80033B20 00000000 */   nop   
/* 00EF24 80033B24 0C04C7BB */  jal   func_80131EEC
/* 00EF28 80033B28 00000000 */   nop   
/* 00EF2C 80033B2C 0C016754 */  jal   func_80059D50
/* 00EF30 80033B30 00000000 */   nop   
/* 00EF34 80033B34 0C04599D */  jal   func_80116674
/* 00EF38 80033B38 00000000 */   nop   
/* 00EF3C 80033B3C 0C00B500 */  jal   func_8002D400
/* 00EF40 80033B40 00000000 */   nop   
func_80033B44:
.L80033B44:
/* 00EF44 80033B44 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00EF48 80033B48 8FB00010 */  lw    $s0, 0x10($sp)
/* 00EF4C 80033B4C 03E00008 */  jr    $ra
/* 00EF50 80033B50 27BD0018 */   addiu $sp, $sp, 0x18

/* 00EF54 80033B54 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00EF58 80033B58 AFBF0010 */  sw    $ra, 0x10($sp)
/* 00EF5C 80033B5C 0C00F96C */  jal   func_8003E5B0
/* 00EF60 80033B60 00000000 */   nop   
/* 00EF64 80033B64 3C02800A */  lui   $v0, 0x800a
/* 00EF68 80033B68 80420900 */  lb    $v0, 0x900($v0)
/* 00EF6C 80033B6C 04410003 */  bgez  $v0, .L80033B7C
/* 00EF70 80033B70 00000000 */   nop   
/* 00EF74 80033B74 0C08FA9F */  jal   func_8023EA7C
/* 00EF78 80033B78 00000000 */   nop   
.L80033B7C:
/* 00EF7C 80033B7C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 00EF80 80033B80 03E00008 */  jr    $ra
/* 00EF84 80033B84 27BD0018 */   addiu $sp, $sp, 0x18

/* 00EF88 80033B88 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00EF8C 80033B8C 3C02800A */  lui   $v0, 0x800a
/* 00EF90 80033B90 2442A650 */  addiu $v0, $v0, -0x59b0
/* 00EF94 80033B94 AFBF0010 */  sw    $ra, 0x10($sp)
/* 00EF98 80033B98 8C430000 */  lw    $v1, ($v0)
/* 00EF9C 80033B9C 34630008 */  ori   $v1, $v1, 8
/* 00EFA0 80033BA0 0C018028 */  jal   nuContRmbForceStop
/* 00EFA4 80033BA4 AC430000 */   sw    $v1, ($v0)
/* 00EFA8 80033BA8 8FBF0010 */  lw    $ra, 0x10($sp)
/* 00EFAC 80033BAC 24020005 */  addiu $v0, $zero, 5
/* 00EFB0 80033BB0 3C01800A */  lui   $at, 0x800a
/* 00EFB4 80033BB4 A0220900 */  sb    $v0, 0x900($at)
/* 00EFB8 80033BB8 03E00008 */  jr    $ra
/* 00EFBC 80033BBC 27BD0018 */   addiu $sp, $sp, 0x18

/* 00EFC0 80033BC0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 00EFC4 80033BC4 AFB30024 */  sw    $s3, 0x24($sp)
/* 00EFC8 80033BC8 3C138011 */  lui   $s3, 0x8011
/* 00EFCC 80033BCC 2673EFC8 */  addiu $s3, $s3, -0x1038
/* 00EFD0 80033BD0 3C06800A */  lui   $a2, 0x800a
/* 00EFD4 80033BD4 24C60900 */  addiu $a2, $a2, 0x900
/* 00EFD8 80033BD8 AFBF0028 */  sw    $ra, 0x28($sp)
/* 00EFDC 80033BDC AFB20020 */  sw    $s2, 0x20($sp)
/* 00EFE0 80033BE0 AFB1001C */  sw    $s1, 0x1c($sp)
/* 00EFE4 80033BE4 AFB00018 */  sw    $s0, 0x18($sp)
/* 00EFE8 80033BE8 80C20000 */  lb    $v0, ($a2)
/* 00EFEC 80033BEC 90C30000 */  lbu   $v1, ($a2)
/* 00EFF0 80033BF0 04400095 */  bltz  $v0, .L80033E48
/* 00EFF4 80033BF4 2462FFFF */   addiu $v0, $v1, -1
/* 00EFF8 80033BF8 A0C20000 */  sb    $v0, ($a2)
/* 00EFFC 80033BFC 00021600 */  sll   $v0, $v0, 0x18
/* 00F000 80033C00 14400091 */  bnez  $v0, .L80033E48
/* 00F004 80033C04 24050003 */   addiu $a1, $zero, 3
/* 00F008 80033C08 3C048007 */  lui   $a0, 0x8007
/* 00F00C 80033C0C 248478A0 */  addiu $a0, $a0, 0x78a0
/* 00F010 80033C10 2402FFFF */  addiu $v0, $zero, -1
/* 00F014 80033C14 0C017CBC */  jal   nuGfxSetCfb
/* 00F018 80033C18 A0C20000 */   sb    $v0, ($a2)
/* 00F01C 80033C1C 3C04800A */  lui   $a0, 0x800a
/* 00F020 80033C20 2484A650 */  addiu $a0, $a0, -0x59b0
/* 00F024 80033C24 8C820000 */  lw    $v0, ($a0)
/* 00F028 80033C28 2403FFF7 */  addiu $v1, $zero, -9
/* 00F02C 80033C2C 00431024 */  and   $v0, $v0, $v1
/* 00F030 80033C30 0C018030 */  jal   nuContRmbForceStopEnd
/* 00F034 80033C34 AC820000 */   sw    $v0, ($a0)
/* 00F038 80033C38 0C05260E */  jal   func_80149838
/* 00F03C 80033C3C 00000000 */   nop   
/* 00F040 80033C40 0C016AFA */  jal   func_8005ABE8
/* 00F044 80033C44 00000000 */   nop   
/* 00F048 80033C48 3C108007 */  lui   $s0, 0x8007
/* 00F04C 80033C4C 2610419C */  addiu $s0, $s0, 0x419c
/* 00F050 80033C50 8E040000 */  lw    $a0, ($s0)
/* 00F054 80033C54 0040902D */  daddu $s2, $v0, $zero
/* 00F058 80033C58 84830086 */  lh    $v1, 0x86($a0)
/* 00F05C 80033C5C 8482008C */  lh    $v0, 0x8c($a0)
/* 00F060 80033C60 00031900 */  sll   $v1, $v1, 4
/* 00F064 80033C64 3C018009 */  lui   $at, 0x8009
/* 00F068 80033C68 00230821 */  addu  $at, $at, $v1
/* 00F06C 80033C6C 8C2334F4 */  lw    $v1, 0x34f4($at)
/* 00F070 80033C70 00021140 */  sll   $v0, $v0, 5
/* 00F074 80033C74 0C0902AA */  jal   func_80240AA8
/* 00F078 80033C78 00628821 */   addu  $s1, $v1, $v0
/* 00F07C 80033C7C 8E020000 */  lw    $v0, ($s0)
/* 00F080 80033C80 0C016BE1 */  jal   func_8005AF84
/* 00F084 80033C84 A0400070 */   sb    $zero, 0x70($v0)
/* 00F088 80033C88 0C00AB37 */  jal   func_8002ACDC
/* 00F08C 80033C8C 00000000 */   nop   
/* 00F090 80033C90 0C05259C */  jal   func_80149670
/* 00F094 80033C94 24040001 */   addiu $a0, $zero, 1
/* 00F098 80033C98 8E030000 */  lw    $v1, ($s0)
/* 00F09C 80033C9C 9062007E */  lbu   $v0, 0x7e($v1)
/* 00F0A0 80033CA0 304200FE */  andi  $v0, $v0, 0xfe
/* 00F0A4 80033CA4 0C00AB28 */  jal   func_8002ACA0
/* 00F0A8 80033CA8 A062007E */   sb    $v0, 0x7e($v1)
/* 00F0AC 80033CAC 8E020000 */  lw    $v0, ($s0)
/* 00F0B0 80033CB0 0C0B763E */  jal   func_802DD8F8
/* 00F0B4 80033CB4 80440084 */   lb    $a0, 0x84($v0)
/* 00F0B8 80033CB8 0C0457FA */  jal   func_80115FE8
/* 00F0BC 80033CBC 00000000 */   nop   
/* 00F0C0 80033CC0 0C05203C */  jal   func_801480F0
/* 00F0C4 80033CC4 00000000 */   nop   
/* 00F0C8 80033CC8 0C048316 */  jal   func_80120C58
/* 00F0CC 80033CCC 00000000 */   nop   
/* 00F0D0 80033CD0 0C0478C4 */  jal   func_8011E310
/* 00F0D4 80033CD4 00000000 */   nop   
/* 00F0D8 80033CD8 0C048C45 */  jal   func_80123114
/* 00F0DC 80033CDC 00000000 */   nop   
/* 00F0E0 80033CE0 0000202D */  daddu $a0, $zero, $zero
/* 00F0E4 80033CE4 0C0514BA */  jal   func_801452E8
/* 00F0E8 80033CE8 0080282D */   daddu $a1, $a0, $zero
/* 00F0EC 80033CEC 0C0504C0 */  jal   func_80141300
/* 00F0F0 80033CF0 00000000 */   nop   
/* 00F0F4 80033CF4 0C04C433 */  jal   func_801310CC
/* 00F0F8 80033CF8 00000000 */   nop   
/* 00F0FC 80033CFC 0C0B0CBB */  jal   func_802C32EC
/* 00F100 80033D00 00000000 */   nop   
/* 00F104 80033D04 0C00E14B */  jal   func_8003852C
/* 00F108 80033D08 00000000 */   nop   
/* 00F10C 80033D0C 0C044396 */  jal   func_80110E58
/* 00F110 80033D10 00000000 */   nop   
/* 00F114 80033D14 0C0515CA */  jal   func_80145728
/* 00F118 80033D18 00000000 */   nop   
/* 00F11C 80033D1C 8E020000 */  lw    $v0, ($s0)
/* 00F120 80033D20 904200AA */  lbu   $v0, 0xaa($v0)
/* 00F124 80033D24 30420001 */  andi  $v0, $v0, 1
/* 00F128 80033D28 10400008 */  beqz  $v0, .L80033D4C
/* 00F12C 80033D2C 00000000 */   nop   
/* 00F130 80033D30 0C00EC6C */  jal   func_8003B1B0
/* 00F134 80033D34 00000000 */   nop   
/* 00F138 80033D38 3C02800A */  lui   $v0, 0x800a
/* 00F13C 80033D3C 8C420904 */  lw    $v0, 0x904($v0)
/* 00F140 80033D40 24040011 */  addiu $a0, $zero, 0x11
/* 00F144 80033D44 0800CF90 */  j     func_80033E40
/* 00F148 80033D48 AE620004 */   sw    $v0, 4($s3)

.L80033D4C:
/* 00F14C 80033D4C 3C028011 */  lui   $v0, 0x8011
/* 00F150 80033D50 2442F290 */  addiu $v0, $v0, -0xd70
/* 00F154 80033D54 0C03AC80 */  jal   func_800EB200
/* 00F158 80033D58 80440012 */   lb    $a0, 0x12($v0)
/* 00F15C 80033D5C 0C0169B0 */  jal   func_8005A6C0
/* 00F160 80033D60 00000000 */   nop   
/* 00F164 80033D64 3C04800E */  lui   $a0, 0x800e
/* 00F168 80033D68 24849230 */  addiu $a0, $a0, -0x6dd0
/* 00F16C 80033D6C 0C016B3A */  jal   func_8005ACE8
/* 00F170 80033D70 27A50010 */   addiu $a1, $sp, 0x10
/* 00F174 80033D74 0040802D */  daddu $s0, $v0, $zero
/* 00F178 80033D78 3C058021 */  lui   $a1, 0x8021
/* 00F17C 80033D7C 24A50000 */  addiu $a1, $a1, 0
/* 00F180 80033D80 0C01BB7C */  jal   decode_yay0
/* 00F184 80033D84 0200202D */   daddu $a0, $s0, $zero
/* 00F188 80033D88 0C00AB1E */  jal   func_8002AC78
/* 00F18C 80033D8C 0200202D */   daddu $a0, $s0, $zero
/* 00F190 80033D90 0C016BE5 */  jal   func_8005AF94
/* 00F194 80033D94 00000000 */   nop   
/* 00F198 80033D98 0C016C16 */  jal   func_8005B058
/* 00F19C 80033D9C 00000000 */   nop   
/* 00F1A0 80033DA0 8E240008 */  lw    $a0, 8($s1)
/* 00F1A4 80033DA4 10800004 */  beqz  $a0, .L80033DB8
/* 00F1A8 80033DA8 00000000 */   nop   
/* 00F1AC 80033DAC 8E25000C */  lw    $a1, 0xc($s1)
/* 00F1B0 80033DB0 0C00A5CF */  jal   func_8002973C
/* 00F1B4 80033DB4 8E260010 */   lw    $a2, 0x10($s1)
.L80033DB8:
/* 00F1B8 80033DB8 0C05175C */  jal   func_80145D70
/* 00F1BC 80033DBC 8E240014 */   lw    $a0, 0x14($s1)
/* 00F1C0 80033DC0 8E440038 */  lw    $a0, 0x38($s2)
/* 00F1C4 80033DC4 50800005 */  beql  $a0, $zero, .L80033DDC
/* 00F1C8 80033DC8 24040128 */   addiu $a0, $zero, 0x128
/* 00F1CC 80033DCC 0C05178A */  jal   func_80145E28
/* 00F1D0 80033DD0 00000000 */   nop   
/* 00F1D4 80033DD4 0800CF7B */  j     func_80033DEC
/* 00F1D8 80033DD8 00000000 */   nop   

.L80033DDC:
/* 00F1DC 80033DDC 240500C8 */  addiu $a1, $zero, 0xc8
/* 00F1E0 80033DE0 2406000C */  addiu $a2, $zero, 0xc
/* 00F1E4 80033DE4 0C05179C */  jal   func_80145E70
/* 00F1E8 80033DE8 24070014 */   addiu $a3, $zero, 0x14
func_80033DEC:
/* 00F1EC 80033DEC 3C04800B */  lui   $a0, 0x800b
/* 00F1F0 80033DF0 24840CF0 */  addiu $a0, $a0, 0xcf0
/* 00F1F4 80033DF4 0C016B74 */  jal   func_8005ADD0
/* 00F1F8 80033DF8 27A50010 */   addiu $a1, $sp, 0x10
/* 00F1FC 80033DFC 8E440000 */  lw    $a0, ($s2)
/* 00F200 80033E00 8FA60010 */  lw    $a2, 0x10($sp)
/* 00F204 80033E04 0C045709 */  jal   func_80115C24
/* 00F208 80033E08 0040282D */   daddu $a1, $v0, $zero
/* 00F20C 80033E0C 0C04584B */  jal   func_8011612C
/* 00F210 80033E10 00000000 */   nop   
/* 00F214 80033E14 0C00EC6C */  jal   func_8003B1B0
/* 00F218 80033E18 00000000 */   nop   
/* 00F21C 80033E1C 3C02800A */  lui   $v0, 0x800a
/* 00F220 80033E20 8C420904 */  lw    $v0, 0x904($v0)
/* 00F224 80033E24 3C04800A */  lui   $a0, 0x800a
/* 00F228 80033E28 8C840908 */  lw    $a0, 0x908($a0)
/* 00F22C 80033E2C 10800003 */  beqz  $a0, .L80033E3C
/* 00F230 80033E30 AE620004 */   sw    $v0, 4($s3)
/* 00F234 80033E34 0C009C22 */  jal   func_80027088
/* 00F238 80033E38 00000000 */   nop   
.L80033E3C:
/* 00F23C 80033E3C 24040004 */  addiu $a0, $zero, 4
func_80033E40:
/* 00F240 80033E40 0C00CD3C */  jal   func_800334F0
/* 00F244 80033E44 00000000 */   nop   
.L80033E48:
/* 00F248 80033E48 8FBF0028 */  lw    $ra, 0x28($sp)
/* 00F24C 80033E4C 8FB30024 */  lw    $s3, 0x24($sp)
/* 00F250 80033E50 8FB20020 */  lw    $s2, 0x20($sp)
/* 00F254 80033E54 8FB1001C */  lw    $s1, 0x1c($sp)
/* 00F258 80033E58 8FB00018 */  lw    $s0, 0x18($sp)
/* 00F25C 80033E5C 03E00008 */  jr    $ra
/* 00F260 80033E60 27BD0030 */   addiu $sp, $sp, 0x30

/* 00F264 80033E64 03E00008 */  jr    $ra
/* 00F268 80033E68 00000000 */   nop   

/* 00F26C 80033E6C 00000000 */  nop   
