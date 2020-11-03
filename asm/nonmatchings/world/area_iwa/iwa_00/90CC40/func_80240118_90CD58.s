.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240118_90CD58
/* 90CD58 80240118 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 90CD5C 8024011C AFB20028 */  sw        $s2, 0x28($sp)
/* 90CD60 80240120 0080902D */  daddu     $s2, $a0, $zero
/* 90CD64 80240124 AFBF0030 */  sw        $ra, 0x30($sp)
/* 90CD68 80240128 AFB3002C */  sw        $s3, 0x2c($sp)
/* 90CD6C 8024012C AFB10024 */  sw        $s1, 0x24($sp)
/* 90CD70 80240130 AFB00020 */  sw        $s0, 0x20($sp)
/* 90CD74 80240134 8E530148 */  lw        $s3, 0x148($s2)
/* 90CD78 80240138 86640008 */  lh        $a0, 8($s3)
/* 90CD7C 8024013C 0C00EABB */  jal       get_npc_unsafe
/* 90CD80 80240140 00A0802D */   daddu    $s0, $a1, $zero
/* 90CD84 80240144 12000004 */  beqz      $s0, .L80240158
/* 90CD88 80240148 0040882D */   daddu    $s1, $v0, $zero
/* 90CD8C 8024014C 24020014 */  addiu     $v0, $zero, 0x14
/* 90CD90 80240150 AE400070 */  sw        $zero, 0x70($s2)
/* 90CD94 80240154 AE420074 */  sw        $v0, 0x74($s2)
.L80240158:
/* 90CD98 80240158 8E420074 */  lw        $v0, 0x74($s2)
/* 90CD9C 8024015C 30420001 */  andi      $v0, $v0, 1
/* 90CDA0 80240160 10400004 */  beqz      $v0, .L80240174
/* 90CDA4 80240164 2403FFFD */   addiu    $v1, $zero, -3
/* 90CDA8 80240168 8E220000 */  lw        $v0, ($s1)
/* 90CDAC 8024016C 0809005F */  j         .L8024017C
/* 90CDB0 80240170 00431024 */   and      $v0, $v0, $v1
.L80240174:
/* 90CDB4 80240174 8E220000 */  lw        $v0, ($s1)
/* 90CDB8 80240178 34420002 */  ori       $v0, $v0, 2
.L8024017C:
/* 90CDBC 8024017C AE220000 */  sw        $v0, ($s1)
/* 90CDC0 80240180 8E430074 */  lw        $v1, 0x74($s2)
/* 90CDC4 80240184 2402000F */  addiu     $v0, $zero, 0xf
/* 90CDC8 80240188 1462002A */  bne       $v1, $v0, .L80240234
/* 90CDCC 8024018C 00000000 */   nop      
/* 90CDD0 80240190 240403E5 */  addiu     $a0, $zero, 0x3e5
/* 90CDD4 80240194 962300A8 */  lhu       $v1, 0xa8($s1)
/* 90CDD8 80240198 C620003C */  lwc1      $f0, 0x3c($s1)
/* 90CDDC 8024019C C6220040 */  lwc1      $f2, 0x40($s1)
/* 90CDE0 802401A0 00031C00 */  sll       $v1, $v1, 0x10
/* 90CDE4 802401A4 00031403 */  sra       $v0, $v1, 0x10
/* 90CDE8 802401A8 00031FC2 */  srl       $v1, $v1, 0x1f
/* 90CDEC 802401AC 00431021 */  addu      $v0, $v0, $v1
/* 90CDF0 802401B0 00021043 */  sra       $v0, $v0, 1
/* 90CDF4 802401B4 44822000 */  mtc1      $v0, $f4
/* 90CDF8 802401B8 00000000 */  nop       
/* 90CDFC 802401BC 46802120 */  cvt.s.w   $f4, $f4
/* 90CE00 802401C0 46040000 */  add.s     $f0, $f0, $f4
/* 90CE04 802401C4 E7A20010 */  swc1      $f2, 0x10($sp)
/* 90CE08 802401C8 8E260038 */  lw        $a2, 0x38($s1)
/* 90CE0C 802401CC 44070000 */  mfc1      $a3, $f0
/* 90CE10 802401D0 0C052757 */  jal       play_sound_at_position
/* 90CE14 802401D4 0000282D */   daddu    $a1, $zero, $zero
/* 90CE18 802401D8 962300A8 */  lhu       $v1, 0xa8($s1)
/* 90CE1C 802401DC C624003C */  lwc1      $f4, 0x3c($s1)
/* 90CE20 802401E0 3C01BF80 */  lui       $at, 0xbf80
/* 90CE24 802401E4 44811000 */  mtc1      $at, $f2
/* 90CE28 802401E8 2402000A */  addiu     $v0, $zero, 0xa
/* 90CE2C 802401EC AFA00010 */  sw        $zero, 0x10($sp)
/* 90CE30 802401F0 AFA00018 */  sw        $zero, 0x18($sp)
/* 90CE34 802401F4 AFA2001C */  sw        $v0, 0x1c($sp)
/* 90CE38 802401F8 00031C00 */  sll       $v1, $v1, 0x10
/* 90CE3C 802401FC 00031403 */  sra       $v0, $v1, 0x10
/* 90CE40 80240200 00031FC2 */  srl       $v1, $v1, 0x1f
/* 90CE44 80240204 00431021 */  addu      $v0, $v0, $v1
/* 90CE48 80240208 00021043 */  sra       $v0, $v0, 1
/* 90CE4C 8024020C 44820000 */  mtc1      $v0, $f0
/* 90CE50 80240210 00000000 */  nop       
/* 90CE54 80240214 46800020 */  cvt.s.w   $f0, $f0
/* 90CE58 80240218 46002100 */  add.s     $f4, $f4, $f0
/* 90CE5C 8024021C E7A20014 */  swc1      $f2, 0x14($sp)
/* 90CE60 80240220 8E250038 */  lw        $a1, 0x38($s1)
/* 90CE64 80240224 8E270040 */  lw        $a3, 0x40($s1)
/* 90CE68 80240228 44062000 */  mfc1      $a2, $f4
/* 90CE6C 8024022C 0C01C064 */  jal       func_80070190
/* 90CE70 80240230 24040001 */   addiu    $a0, $zero, 1
.L80240234:
/* 90CE74 80240234 8E500074 */  lw        $s0, 0x74($s2)
/* 90CE78 80240238 2402000A */  addiu     $v0, $zero, 0xa
/* 90CE7C 8024023C 1602000F */  bne       $s0, $v0, .L8024027C
/* 90CE80 80240240 00000000 */   nop      
/* 90CE84 80240244 3C014120 */  lui       $at, 0x4120
/* 90CE88 80240248 44811000 */  mtc1      $at, $f2
/* 90CE8C 8024024C C6200040 */  lwc1      $f0, 0x40($s1)
/* 90CE90 80240250 46020000 */  add.s     $f0, $f0, $f2
/* 90CE94 80240254 C62E003C */  lwc1      $f14, 0x3c($s1)
/* 90CE98 80240258 C62C0038 */  lwc1      $f12, 0x38($s1)
/* 90CE9C 8024025C 44060000 */  mfc1      $a2, $f0
/* 90CEA0 80240260 0C01BE3C */  jal       func_8006F8F0
/* 90CEA4 80240264 46027380 */   add.s    $f14, $f14, $f2
/* 90CEA8 80240268 8E420074 */  lw        $v0, 0x74($s2)
/* 90CEAC 8024026C 14500003 */  bne       $v0, $s0, .L8024027C
/* 90CEB0 80240270 00000000 */   nop      
/* 90CEB4 80240274 0C0120A0 */  jal       spawn_drops
/* 90CEB8 80240278 0260202D */   daddu    $a0, $s3, $zero
.L8024027C:
/* 90CEBC 8024027C 8E430074 */  lw        $v1, 0x74($s2)
/* 90CEC0 80240280 2463FFFF */  addiu     $v1, $v1, -1
/* 90CEC4 80240284 AE430074 */  sw        $v1, 0x74($s2)
/* 90CEC8 80240288 8FBF0030 */  lw        $ra, 0x30($sp)
/* 90CECC 8024028C 8FB3002C */  lw        $s3, 0x2c($sp)
/* 90CED0 80240290 8FB20028 */  lw        $s2, 0x28($sp)
/* 90CED4 80240294 8FB10024 */  lw        $s1, 0x24($sp)
/* 90CED8 80240298 8FB00020 */  lw        $s0, 0x20($sp)
/* 90CEDC 8024029C 2C620001 */  sltiu     $v0, $v1, 1
/* 90CEE0 802402A0 03E00008 */  jr        $ra
/* 90CEE4 802402A4 27BD0038 */   addiu    $sp, $sp, 0x38
/* 90CEE8 802402A8 00000000 */  nop       
/* 90CEEC 802402AC 00000000 */  nop       
