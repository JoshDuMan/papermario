.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802401A0_954160
/* 954160 802401A0 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 954164 802401A4 AFB3001C */  sw        $s3, 0x1c($sp)
/* 954168 802401A8 0080982D */  daddu     $s3, $a0, $zero
/* 95416C 802401AC AFB00010 */  sw        $s0, 0x10($sp)
/* 954170 802401B0 24100001 */  addiu     $s0, $zero, 1
/* 954174 802401B4 AFB40020 */  sw        $s4, 0x20($sp)
/* 954178 802401B8 2414FFFF */  addiu     $s4, $zero, -1
/* 95417C 802401BC AFB50024 */  sw        $s5, 0x24($sp)
/* 954180 802401C0 0200A82D */  daddu     $s5, $s0, $zero
/* 954184 802401C4 AFB10014 */  sw        $s1, 0x14($sp)
/* 954188 802401C8 3C118011 */  lui       $s1, %hi(gPlayerData+0x8)
/* 95418C 802401CC 2631F298 */  addiu     $s1, $s1, %lo(gPlayerData+0x8)
/* 954190 802401D0 AFBF0028 */  sw        $ra, 0x28($sp)
/* 954194 802401D4 AFB20018 */  sw        $s2, 0x18($sp)
/* 954198 802401D8 8E6200B4 */  lw        $v0, 0xb4($s3)
/* 95419C 802401DC 0280182D */  daddu     $v1, $s4, $zero
/* 9541A0 802401E0 AE630084 */  sw        $v1, 0x84($s3)
/* 9541A4 802401E4 00021027 */  nor       $v0, $zero, $v0
/* 9541A8 802401E8 000217C2 */  srl       $v0, $v0, 0x1f
/* 9541AC 802401EC 00029400 */  sll       $s2, $v0, 0x10
.L802401F0:
/* 9541B0 802401F0 92220014 */  lbu       $v0, 0x14($s1)
/* 9541B4 802401F4 50400008 */  beql      $v0, $zero, .L80240218
/* 9541B8 802401F8 26100001 */   addiu    $s0, $s0, 1
/* 9541BC 802401FC 0200202D */  daddu     $a0, $s0, $zero
/* 9541C0 80240200 0C090055 */  jal       func_80240154_954114
/* 9541C4 80240204 00122C03 */   sra      $a1, $s2, 0x10
/* 9541C8 80240208 10540003 */  beq       $v0, $s4, .L80240218
/* 9541CC 8024020C 26100001 */   addiu    $s0, $s0, 1
/* 9541D0 80240210 08090089 */  j         .L80240224
/* 9541D4 80240214 AE750084 */   sw       $s5, 0x84($s3)
.L80240218:
/* 9541D8 80240218 2A02000C */  slti      $v0, $s0, 0xc
/* 9541DC 8024021C 1440FFF4 */  bnez      $v0, .L802401F0
/* 9541E0 80240220 26310008 */   addiu    $s1, $s1, 8
.L80240224:
/* 9541E4 80240224 8FBF0028 */  lw        $ra, 0x28($sp)
/* 9541E8 80240228 8FB50024 */  lw        $s5, 0x24($sp)
/* 9541EC 8024022C 8FB40020 */  lw        $s4, 0x20($sp)
/* 9541F0 80240230 8FB3001C */  lw        $s3, 0x1c($sp)
/* 9541F4 80240234 8FB20018 */  lw        $s2, 0x18($sp)
/* 9541F8 80240238 8FB10014 */  lw        $s1, 0x14($sp)
/* 9541FC 8024023C 8FB00010 */  lw        $s0, 0x10($sp)
/* 954200 80240240 24020002 */  addiu     $v0, $zero, 2
/* 954204 80240244 03E00008 */  jr        $ra
/* 954208 80240248 27BD0030 */   addiu    $sp, $sp, 0x30
