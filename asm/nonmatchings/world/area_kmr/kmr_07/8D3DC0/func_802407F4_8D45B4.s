.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802407F4_8D45B4
/* 8D45B4 802407F4 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 8D45B8 802407F8 AFB40040 */  sw        $s4, 0x40($sp)
/* 8D45BC 802407FC 0080A02D */  daddu     $s4, $a0, $zero
/* 8D45C0 80240800 AFBF0048 */  sw        $ra, 0x48($sp)
/* 8D45C4 80240804 AFB50044 */  sw        $s5, 0x44($sp)
/* 8D45C8 80240808 AFB3003C */  sw        $s3, 0x3c($sp)
/* 8D45CC 8024080C AFB20038 */  sw        $s2, 0x38($sp)
/* 8D45D0 80240810 AFB10034 */  sw        $s1, 0x34($sp)
/* 8D45D4 80240814 AFB00030 */  sw        $s0, 0x30($sp)
/* 8D45D8 80240818 8E920148 */  lw        $s2, 0x148($s4)
/* 8D45DC 8024081C 86440008 */  lh        $a0, 8($s2)
/* 8D45E0 80240820 8E90000C */  lw        $s0, 0xc($s4)
/* 8D45E4 80240824 0C00EABB */  jal       get_npc_unsafe
/* 8D45E8 80240828 00A0882D */   daddu    $s1, $a1, $zero
/* 8D45EC 8024082C 0280202D */  daddu     $a0, $s4, $zero
/* 8D45F0 80240830 8E050000 */  lw        $a1, ($s0)
/* 8D45F4 80240834 0C0B1EAF */  jal       get_variable
/* 8D45F8 80240838 0040802D */   daddu    $s0, $v0, $zero
/* 8D45FC 8024083C AFA00010 */  sw        $zero, 0x10($sp)
/* 8D4600 80240840 8E4300D0 */  lw        $v1, 0xd0($s2)
/* 8D4604 80240844 8C630030 */  lw        $v1, 0x30($v1)
/* 8D4608 80240848 AFA30014 */  sw        $v1, 0x14($sp)
/* 8D460C 8024084C 8E4300D0 */  lw        $v1, 0xd0($s2)
/* 8D4610 80240850 8C63001C */  lw        $v1, 0x1c($v1)
/* 8D4614 80240854 AFA30018 */  sw        $v1, 0x18($sp)
/* 8D4618 80240858 8E4300D0 */  lw        $v1, 0xd0($s2)
/* 8D461C 8024085C 8C630024 */  lw        $v1, 0x24($v1)
/* 8D4620 80240860 AFA3001C */  sw        $v1, 0x1c($sp)
/* 8D4624 80240864 8E4300D0 */  lw        $v1, 0xd0($s2)
/* 8D4628 80240868 8C630028 */  lw        $v1, 0x28($v1)
/* 8D462C 8024086C 27B50010 */  addiu     $s5, $sp, 0x10
/* 8D4630 80240870 AFA30020 */  sw        $v1, 0x20($sp)
/* 8D4634 80240874 8E4300D0 */  lw        $v1, 0xd0($s2)
/* 8D4638 80240878 3C014282 */  lui       $at, 0x4282
/* 8D463C 8024087C 44810000 */  mtc1      $at, $f0
/* 8D4640 80240880 8C63002C */  lw        $v1, 0x2c($v1)
/* 8D4644 80240884 0040982D */  daddu     $s3, $v0, $zero
/* 8D4648 80240888 E7A00028 */  swc1      $f0, 0x28($sp)
/* 8D464C 8024088C A7A0002C */  sh        $zero, 0x2c($sp)
/* 8D4650 80240890 16200005 */  bnez      $s1, .L802408A8
/* 8D4654 80240894 AFA30024 */   sw       $v1, 0x24($sp)
/* 8D4658 80240898 8E4200B0 */  lw        $v0, 0xb0($s2)
/* 8D465C 8024089C 30420004 */  andi      $v0, $v0, 4
/* 8D4660 802408A0 1040002F */  beqz      $v0, .L80240960
/* 8D4664 802408A4 00000000 */   nop      
.L802408A8:
/* 8D4668 802408A8 AE800070 */  sw        $zero, 0x70($s4)
/* 8D466C 802408AC C600000C */  lwc1      $f0, 0xc($s0)
/* 8D4670 802408B0 A600008E */  sh        $zero, 0x8e($s0)
/* 8D4674 802408B4 8E4200CC */  lw        $v0, 0xcc($s2)
/* 8D4678 802408B8 4600008D */  trunc.w.s $f2, $f0
/* 8D467C 802408BC E642006C */  swc1      $f2, 0x6c($s2)
/* 8D4680 802408C0 8C420000 */  lw        $v0, ($v0)
/* 8D4684 802408C4 8E030000 */  lw        $v1, ($s0)
/* 8D4688 802408C8 AE020028 */  sw        $v0, 0x28($s0)
/* 8D468C 802408CC 2402F7FF */  addiu     $v0, $zero, -0x801
/* 8D4690 802408D0 00621824 */  and       $v1, $v1, $v0
/* 8D4694 802408D4 AE030000 */  sw        $v1, ($s0)
/* 8D4698 802408D8 8E4200D0 */  lw        $v0, 0xd0($s2)
/* 8D469C 802408DC 8C420034 */  lw        $v0, 0x34($v0)
/* 8D46A0 802408E0 54400005 */  bnel      $v0, $zero, .L802408F8
/* 8D46A4 802408E4 2402FDFF */   addiu    $v0, $zero, -0x201
/* 8D46A8 802408E8 34620200 */  ori       $v0, $v1, 0x200
/* 8D46AC 802408EC 2403FFF7 */  addiu     $v1, $zero, -9
/* 8D46B0 802408F0 08090240 */  j         .L80240900
/* 8D46B4 802408F4 00431024 */   and      $v0, $v0, $v1
.L802408F8:
/* 8D46B8 802408F8 00621024 */  and       $v0, $v1, $v0
/* 8D46BC 802408FC 34420008 */  ori       $v0, $v0, 8
.L80240900:
/* 8D46C0 80240900 AE020000 */  sw        $v0, ($s0)
/* 8D46C4 80240904 8E4200B0 */  lw        $v0, 0xb0($s2)
/* 8D46C8 80240908 30420004 */  andi      $v0, $v0, 4
/* 8D46CC 8024090C 10400009 */  beqz      $v0, .L80240934
/* 8D46D0 80240910 24020063 */   addiu    $v0, $zero, 0x63
/* 8D46D4 80240914 AE820070 */  sw        $v0, 0x70($s4)
/* 8D46D8 80240918 2402000F */  addiu     $v0, $zero, 0xf
/* 8D46DC 8024091C AE820074 */  sw        $v0, 0x74($s4)
/* 8D46E0 80240920 8E4200B0 */  lw        $v0, 0xb0($s2)
/* 8D46E4 80240924 2403FFFB */  addiu     $v1, $zero, -5
/* 8D46E8 80240928 00431024 */  and       $v0, $v0, $v1
/* 8D46EC 8024092C 08090258 */  j         .L80240960
/* 8D46F0 80240930 AE4200B0 */   sw       $v0, 0xb0($s2)
.L80240934:
/* 8D46F4 80240934 8E420000 */  lw        $v0, ($s2)
/* 8D46F8 80240938 3C034000 */  lui       $v1, 0x4000
/* 8D46FC 8024093C 00431024 */  and       $v0, $v0, $v1
/* 8D4700 80240940 10400007 */  beqz      $v0, .L80240960
/* 8D4704 80240944 3C03BFFF */   lui      $v1, 0xbfff
/* 8D4708 80240948 2402000C */  addiu     $v0, $zero, 0xc
/* 8D470C 8024094C AE820070 */  sw        $v0, 0x70($s4)
/* 8D4710 80240950 8E420000 */  lw        $v0, ($s2)
/* 8D4714 80240954 3463FFFF */  ori       $v1, $v1, 0xffff
/* 8D4718 80240958 00431024 */  and       $v0, $v0, $v1
/* 8D471C 8024095C AE420000 */  sw        $v0, ($s2)
.L80240960:
/* 8D4720 80240960 8E830070 */  lw        $v1, 0x70($s4)
/* 8D4724 80240964 2C620064 */  sltiu     $v0, $v1, 0x64
/* 8D4728 80240968 10400036 */  beqz      $v0, .L80240A44
/* 8D472C 8024096C 00031080 */   sll      $v0, $v1, 2
/* 8D4730 80240970 3C018024 */  lui       $at, 0x8024
/* 8D4734 80240974 00220821 */  addu      $at, $at, $v0
/* 8D4738 80240978 8C221EA8 */  lw        $v0, 0x1ea8($at)
/* 8D473C 8024097C 00400008 */  jr        $v0
/* 8D4740 80240980 00000000 */   nop      
/* 8D4744 80240984 0280202D */  daddu     $a0, $s4, $zero
/* 8D4748 80240988 0260282D */  daddu     $a1, $s3, $zero
/* 8D474C 8024098C 0C090000 */  jal       func_80240000_8D3DC0
/* 8D4750 80240990 02A0302D */   daddu    $a2, $s5, $zero
/* 8D4754 80240994 0280202D */  daddu     $a0, $s4, $zero
/* 8D4758 80240998 0260282D */  daddu     $a1, $s3, $zero
/* 8D475C 8024099C 0C09002D */  jal       func_802400B4_8D3E74
/* 8D4760 802409A0 02A0302D */   daddu    $a2, $s5, $zero
/* 8D4764 802409A4 08090291 */  j         .L80240A44
/* 8D4768 802409A8 00000000 */   nop      
/* 8D476C 802409AC 0280202D */  daddu     $a0, $s4, $zero
/* 8D4770 802409B0 0260282D */  daddu     $a1, $s3, $zero
/* 8D4774 802409B4 0C090075 */  jal       func_802401D4_8D3F94
/* 8D4778 802409B8 02A0302D */   daddu    $a2, $s5, $zero
/* 8D477C 802409BC 0280202D */  daddu     $a0, $s4, $zero
/* 8D4780 802409C0 0260282D */  daddu     $a1, $s3, $zero
/* 8D4784 802409C4 0C09008D */  jal       func_80240234_8D3FF4
/* 8D4788 802409C8 02A0302D */   daddu    $a2, $s5, $zero
/* 8D478C 802409CC 08090291 */  j         .L80240A44
/* 8D4790 802409D0 00000000 */   nop      
/* 8D4794 802409D4 0280202D */  daddu     $a0, $s4, $zero
/* 8D4798 802409D8 0260282D */  daddu     $a1, $s3, $zero
/* 8D479C 802409DC 0C0900AB */  jal       func_802402AC_8D406C
/* 8D47A0 802409E0 02A0302D */   daddu    $a2, $s5, $zero
/* 8D47A4 802409E4 0280202D */  daddu     $a0, $s4, $zero
/* 8D47A8 802409E8 0260282D */  daddu     $a1, $s3, $zero
/* 8D47AC 802409EC 0C0900F7 */  jal       func_802403DC_8D419C
/* 8D47B0 802409F0 02A0302D */   daddu    $a2, $s5, $zero
/* 8D47B4 802409F4 08090291 */  j         .L80240A44
/* 8D47B8 802409F8 00000000 */   nop      
/* 8D47BC 802409FC 0280202D */  daddu     $a0, $s4, $zero
/* 8D47C0 80240A00 0260282D */  daddu     $a1, $s3, $zero
/* 8D47C4 80240A04 0C09013E */  jal       func_802404F8_8D42B8
/* 8D47C8 80240A08 02A0302D */   daddu    $a2, $s5, $zero
/* 8D47CC 80240A0C 08090291 */  j         .L80240A44
/* 8D47D0 80240A10 00000000 */   nop      
/* 8D47D4 80240A14 0280202D */  daddu     $a0, $s4, $zero
/* 8D47D8 80240A18 0260282D */  daddu     $a1, $s3, $zero
/* 8D47DC 80240A1C 0C090150 */  jal       func_80240540_8D4300
/* 8D47E0 80240A20 02A0302D */   daddu    $a2, $s5, $zero
/* 8D47E4 80240A24 0280202D */  daddu     $a0, $s4, $zero
/* 8D47E8 80240A28 0260282D */  daddu     $a1, $s3, $zero
/* 8D47EC 80240A2C 0C09017B */  jal       func_802405EC_8D43AC
/* 8D47F0 80240A30 02A0302D */   daddu    $a2, $s5, $zero
/* 8D47F4 80240A34 08090291 */  j         .L80240A44
/* 8D47F8 80240A38 00000000 */   nop      
/* 8D47FC 80240A3C 0C0129CF */  jal       func_8004A73C
/* 8D4800 80240A40 0280202D */   daddu    $a0, $s4, $zero
.L80240A44:
/* 8D4804 80240A44 8FBF0048 */  lw        $ra, 0x48($sp)
/* 8D4808 80240A48 8FB50044 */  lw        $s5, 0x44($sp)
/* 8D480C 80240A4C 8FB40040 */  lw        $s4, 0x40($sp)
/* 8D4810 80240A50 8FB3003C */  lw        $s3, 0x3c($sp)
/* 8D4814 80240A54 8FB20038 */  lw        $s2, 0x38($sp)
/* 8D4818 80240A58 8FB10034 */  lw        $s1, 0x34($sp)
/* 8D481C 80240A5C 8FB00030 */  lw        $s0, 0x30($sp)
/* 8D4820 80240A60 0000102D */  daddu     $v0, $zero, $zero
/* 8D4824 80240A64 03E00008 */  jr        $ra
/* 8D4828 80240A68 27BD0050 */   addiu    $sp, $sp, 0x50
