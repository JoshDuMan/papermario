.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80218890_66A610
/* 66A610 80218890 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 66A614 80218894 AFB20020 */  sw        $s2, 0x20($sp)
/* 66A618 80218898 0080902D */  daddu     $s2, $a0, $zero
/* 66A61C 8021889C AFBF0028 */  sw        $ra, 0x28($sp)
/* 66A620 802188A0 AFB30024 */  sw        $s3, 0x24($sp)
/* 66A624 802188A4 AFB1001C */  sw        $s1, 0x1c($sp)
/* 66A628 802188A8 AFB00018 */  sw        $s0, 0x18($sp)
/* 66A62C 802188AC F7B40030 */  sdc1      $f20, 0x30($sp)
/* 66A630 802188B0 8E440148 */  lw        $a0, 0x148($s2)
/* 66A634 802188B4 0C09A75B */  jal       get_actor
/* 66A638 802188B8 00A0802D */   daddu    $s0, $a1, $zero
/* 66A63C 802188BC 0040882D */  daddu     $s1, $v0, $zero
/* 66A640 802188C0 12000002 */  beqz      $s0, .L802188CC
/* 66A644 802188C4 2633000C */   addiu    $s3, $s1, 0xc
/* 66A648 802188C8 AE400070 */  sw        $zero, 0x70($s2)
.L802188CC:
/* 66A64C 802188CC 8E420070 */  lw        $v0, 0x70($s2)
/* 66A650 802188D0 14400008 */  bnez      $v0, .L802188F4
/* 66A654 802188D4 24020001 */   addiu    $v0, $zero, 1
/* 66A658 802188D8 C6200144 */  lwc1      $f0, 0x144($s1)
/* 66A65C 802188DC C6220148 */  lwc1      $f2, 0x148($s1)
/* 66A660 802188E0 C624014C */  lwc1      $f4, 0x14c($s1)
/* 66A664 802188E4 E620000C */  swc1      $f0, 0xc($s1)
/* 66A668 802188E8 E6220010 */  swc1      $f2, 0x10($s1)
/* 66A66C 802188EC E6240014 */  swc1      $f4, 0x14($s1)
/* 66A670 802188F0 AE420070 */  sw        $v0, 0x70($s2)
.L802188F4:
/* 66A674 802188F4 C6200050 */  lwc1      $f0, 0x50($s1)
/* 66A678 802188F8 4480A000 */  mtc1      $zero, $f20
/* 66A67C 802188FC 00000000 */  nop
/* 66A680 80218900 4600A03C */  c.lt.s    $f20, $f0
/* 66A684 80218904 00000000 */  nop
/* 66A688 80218908 45000005 */  bc1f      .L80218920
/* 66A68C 8021890C 2404FF81 */   addiu    $a0, $zero, -0x7f
/* 66A690 80218910 8E260064 */  lw        $a2, 0x64($s1)
/* 66A694 80218914 0C098F3F */  jal       set_animation
/* 66A698 80218918 24050001 */   addiu    $a1, $zero, 1
/* 66A69C 8021891C C6200050 */  lwc1      $f0, 0x50($s1)
.L80218920:
/* 66A6A0 80218920 4614003C */  c.lt.s    $f0, $f20
/* 66A6A4 80218924 00000000 */  nop
/* 66A6A8 80218928 45000004 */  bc1f      .L8021893C
/* 66A6AC 8021892C 2404FF81 */   addiu    $a0, $zero, -0x7f
/* 66A6B0 80218930 8E260068 */  lw        $a2, 0x68($s1)
/* 66A6B4 80218934 0C098F3F */  jal       set_animation
/* 66A6B8 80218938 24050001 */   addiu    $a1, $zero, 1
.L8021893C:
/* 66A6BC 8021893C C6240010 */  lwc1      $f4, 0x10($s1)
/* 66A6C0 80218940 C6200050 */  lwc1      $f0, 0x50($s1)
/* 66A6C4 80218944 8E25004C */  lw        $a1, 0x4c($s1)
/* 66A6C8 80218948 46002100 */  add.s     $f4, $f4, $f0
/* 66A6CC 8021894C C6220048 */  lwc1      $f2, 0x48($s1)
/* 66A6D0 80218950 8E260054 */  lw        $a2, 0x54($s1)
/* 66A6D4 80218954 46020001 */  sub.s     $f0, $f0, $f2
/* 66A6D8 80218958 0260202D */  daddu     $a0, $s3, $zero
/* 66A6DC 8021895C E6240010 */  swc1      $f4, 0x10($s1)
/* 66A6E0 80218960 0C09904A */  jal       add_xz_vec3f
/* 66A6E4 80218964 E6200050 */   swc1     $f0, 0x50($s1)
/* 66A6E8 80218968 C6200010 */  lwc1      $f0, 0x10($s1)
/* 66A6EC 8021896C C6220014 */  lwc1      $f2, 0x14($s1)
/* 66A6F0 80218970 E6200148 */  swc1      $f0, 0x148($s1)
/* 66A6F4 80218974 C620000C */  lwc1      $f0, 0xc($s1)
/* 66A6F8 80218978 C6240148 */  lwc1      $f4, 0x148($s1)
/* 66A6FC 8021897C E622014C */  swc1      $f2, 0x14c($s1)
/* 66A700 80218980 4614203C */  c.lt.s    $f4, $f20
/* 66A704 80218984 00000000 */  nop
/* 66A708 80218988 45010003 */  bc1t      .L80218998
/* 66A70C 8021898C E6200144 */   swc1     $f0, 0x144($s1)
/* 66A710 80218990 08086271 */  j         .L802189C4
/* 66A714 80218994 0000102D */   daddu    $v0, $zero, $zero
.L80218998:
/* 66A718 80218998 C620018C */  lwc1      $f0, 0x18c($s1)
/* 66A71C 8021899C E6340148 */  swc1      $f20, 0x148($s1)
/* 66A720 802189A0 E7A00010 */  swc1      $f0, 0x10($sp)
/* 66A724 802189A4 8E250144 */  lw        $a1, 0x144($s1)
/* 66A728 802189A8 8E260148 */  lw        $a2, 0x148($s1)
/* 66A72C 802189AC 8E27014C */  lw        $a3, 0x14c($s1)
/* 66A730 802189B0 0C0990BC */  jal       play_movement_dust_effects
/* 66A734 802189B4 24040002 */   addiu    $a0, $zero, 2
/* 66A738 802189B8 0C05272D */  jal       sfx_play_sound
/* 66A73C 802189BC 24040148 */   addiu    $a0, $zero, 0x148
/* 66A740 802189C0 24020001 */  addiu     $v0, $zero, 1
.L802189C4:
/* 66A744 802189C4 8FBF0028 */  lw        $ra, 0x28($sp)
/* 66A748 802189C8 8FB30024 */  lw        $s3, 0x24($sp)
/* 66A74C 802189CC 8FB20020 */  lw        $s2, 0x20($sp)
/* 66A750 802189D0 8FB1001C */  lw        $s1, 0x1c($sp)
/* 66A754 802189D4 8FB00018 */  lw        $s0, 0x18($sp)
/* 66A758 802189D8 D7B40030 */  ldc1      $f20, 0x30($sp)
/* 66A75C 802189DC 03E00008 */  jr        $ra
/* 66A760 802189E0 27BD0038 */   addiu    $sp, $sp, 0x38
