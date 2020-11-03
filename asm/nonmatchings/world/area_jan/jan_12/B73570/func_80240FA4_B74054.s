.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240FA4_B74054
/* B74054 80240FA4 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* B74058 80240FA8 AFB20038 */  sw        $s2, 0x38($sp)
/* B7405C 80240FAC 0080902D */  daddu     $s2, $a0, $zero
/* B74060 80240FB0 AFBF0048 */  sw        $ra, 0x48($sp)
/* B74064 80240FB4 AFB50044 */  sw        $s5, 0x44($sp)
/* B74068 80240FB8 AFB40040 */  sw        $s4, 0x40($sp)
/* B7406C 80240FBC AFB3003C */  sw        $s3, 0x3c($sp)
/* B74070 80240FC0 AFB10034 */  sw        $s1, 0x34($sp)
/* B74074 80240FC4 AFB00030 */  sw        $s0, 0x30($sp)
/* B74078 80240FC8 8E510148 */  lw        $s1, 0x148($s2)
/* B7407C 80240FCC 86240008 */  lh        $a0, 8($s1)
/* B74080 80240FD0 0C00EABB */  jal       get_npc_unsafe
/* B74084 80240FD4 00A0802D */   daddu    $s0, $a1, $zero
/* B74088 80240FD8 8E43000C */  lw        $v1, 0xc($s2)
/* B7408C 80240FDC 0240202D */  daddu     $a0, $s2, $zero
/* B74090 80240FE0 8C650000 */  lw        $a1, ($v1)
/* B74094 80240FE4 0C0B1EAF */  jal       get_variable
/* B74098 80240FE8 0040A82D */   daddu    $s5, $v0, $zero
/* B7409C 80240FEC AFA00010 */  sw        $zero, 0x10($sp)
/* B740A0 80240FF0 8E2300D0 */  lw        $v1, 0xd0($s1)
/* B740A4 80240FF4 8C630030 */  lw        $v1, 0x30($v1)
/* B740A8 80240FF8 AFA30014 */  sw        $v1, 0x14($sp)
/* B740AC 80240FFC 8E2300D0 */  lw        $v1, 0xd0($s1)
/* B740B0 80241000 8C63001C */  lw        $v1, 0x1c($v1)
/* B740B4 80241004 AFA30018 */  sw        $v1, 0x18($sp)
/* B740B8 80241008 8E2300D0 */  lw        $v1, 0xd0($s1)
/* B740BC 8024100C 8C630024 */  lw        $v1, 0x24($v1)
/* B740C0 80241010 AFA3001C */  sw        $v1, 0x1c($sp)
/* B740C4 80241014 8E2300D0 */  lw        $v1, 0xd0($s1)
/* B740C8 80241018 8C630028 */  lw        $v1, 0x28($v1)
/* B740CC 8024101C 27B40010 */  addiu     $s4, $sp, 0x10
/* B740D0 80241020 AFA30020 */  sw        $v1, 0x20($sp)
/* B740D4 80241024 8E2300D0 */  lw        $v1, 0xd0($s1)
/* B740D8 80241028 3C014282 */  lui       $at, 0x4282
/* B740DC 8024102C 44810000 */  mtc1      $at, $f0
/* B740E0 80241030 8C63002C */  lw        $v1, 0x2c($v1)
/* B740E4 80241034 0040982D */  daddu     $s3, $v0, $zero
/* B740E8 80241038 E7A00028 */  swc1      $f0, 0x28($sp)
/* B740EC 8024103C A7A0002C */  sh        $zero, 0x2c($sp)
/* B740F0 80241040 16000005 */  bnez      $s0, .L80241058
/* B740F4 80241044 AFA30024 */   sw       $v1, 0x24($sp)
/* B740F8 80241048 8E2200B0 */  lw        $v0, 0xb0($s1)
/* B740FC 8024104C 30420004 */  andi      $v0, $v0, 4
/* B74100 80241050 10400020 */  beqz      $v0, .L802410D4
/* B74104 80241054 00000000 */   nop      
.L80241058:
/* B74108 80241058 2404F7FF */  addiu     $a0, $zero, -0x801
/* B7410C 8024105C AE400070 */  sw        $zero, 0x70($s2)
/* B74110 80241060 A6A0008E */  sh        $zero, 0x8e($s5)
/* B74114 80241064 8E2200CC */  lw        $v0, 0xcc($s1)
/* B74118 80241068 8EA30000 */  lw        $v1, ($s5)
/* B7411C 8024106C 8C420000 */  lw        $v0, ($v0)
/* B74120 80241070 00641824 */  and       $v1, $v1, $a0
/* B74124 80241074 AEA30000 */  sw        $v1, ($s5)
/* B74128 80241078 AEA20028 */  sw        $v0, 0x28($s5)
/* B7412C 8024107C 8E2200D0 */  lw        $v0, 0xd0($s1)
/* B74130 80241080 8C420034 */  lw        $v0, 0x34($v0)
/* B74134 80241084 54400005 */  bnel      $v0, $zero, .L8024109C
/* B74138 80241088 2402FDFF */   addiu    $v0, $zero, -0x201
/* B7413C 8024108C 34620200 */  ori       $v0, $v1, 0x200
/* B74140 80241090 2403FFF7 */  addiu     $v1, $zero, -9
/* B74144 80241094 08090429 */  j         .L802410A4
/* B74148 80241098 00431024 */   and      $v0, $v0, $v1
.L8024109C:
/* B7414C 8024109C 00621024 */  and       $v0, $v1, $v0
/* B74150 802410A0 34420008 */  ori       $v0, $v0, 8
.L802410A4:
/* B74154 802410A4 AEA20000 */  sw        $v0, ($s5)
/* B74158 802410A8 8E2200B0 */  lw        $v0, 0xb0($s1)
/* B7415C 802410AC 30420004 */  andi      $v0, $v0, 4
/* B74160 802410B0 10400007 */  beqz      $v0, .L802410D0
/* B74164 802410B4 24020063 */   addiu    $v0, $zero, 0x63
/* B74168 802410B8 AE420070 */  sw        $v0, 0x70($s2)
/* B7416C 802410BC AE400074 */  sw        $zero, 0x74($s2)
/* B74170 802410C0 8E2200B0 */  lw        $v0, 0xb0($s1)
/* B74174 802410C4 2403FFFB */  addiu     $v1, $zero, -5
/* B74178 802410C8 00431024 */  and       $v0, $v0, $v1
/* B7417C 802410CC AE2200B0 */  sw        $v0, 0xb0($s1)
.L802410D0:
/* B74180 802410D0 AE20006C */  sw        $zero, 0x6c($s1)
.L802410D4:
/* B74184 802410D4 8E420070 */  lw        $v0, 0x70($s2)
/* B74188 802410D8 2842001E */  slti      $v0, $v0, 0x1e
/* B7418C 802410DC 10400009 */  beqz      $v0, .L80241104
/* B74190 802410E0 00000000 */   nop      
/* B74194 802410E4 8E22006C */  lw        $v0, 0x6c($s1)
/* B74198 802410E8 14400006 */  bnez      $v0, .L80241104
/* B7419C 802410EC 00000000 */   nop      
/* B741A0 802410F0 0C090237 */  jal       func_802408DC_B7398C
/* B741A4 802410F4 0240202D */   daddu    $a0, $s2, $zero
/* B741A8 802410F8 10400002 */  beqz      $v0, .L80241104
/* B741AC 802410FC 2402001E */   addiu    $v0, $zero, 0x1e
/* B741B0 80241100 AE420070 */  sw        $v0, 0x70($s2)
.L80241104:
/* B741B4 80241104 8E430070 */  lw        $v1, 0x70($s2)
/* B741B8 80241108 2C620064 */  sltiu     $v0, $v1, 0x64
/* B741BC 8024110C 10400048 */  beqz      $v0, .L80241230
/* B741C0 80241110 00031080 */   sll      $v0, $v1, 2
/* B741C4 80241114 3C018024 */  lui       $at, %hi(pause_textbox_draw_contents)
/* B741C8 80241118 00220821 */  addu      $at, $at, $v0
/* B741CC 8024111C 8C223570 */  lw        $v0, %lo(pause_textbox_draw_contents)($at)
/* B741D0 80241120 00400008 */  jr        $v0
/* B741D4 80241124 00000000 */   nop      
/* B741D8 80241128 0240202D */  daddu     $a0, $s2, $zero
/* B741DC 8024112C 0260282D */  daddu     $a1, $s3, $zero
/* B741E0 80241130 0C012568 */  jal       func_800495A0
/* B741E4 80241134 0280302D */   daddu    $a2, $s4, $zero
/* B741E8 80241138 0240202D */  daddu     $a0, $s2, $zero
/* B741EC 8024113C 0260282D */  daddu     $a1, $s3, $zero
/* B741F0 80241140 0C0125AE */  jal       func_800496B8
/* B741F4 80241144 0280302D */   daddu    $a2, $s4, $zero
/* B741F8 80241148 0809048C */  j         .L80241230
/* B741FC 8024114C 00000000 */   nop      
/* B74200 80241150 0240202D */  daddu     $a0, $s2, $zero
/* B74204 80241154 0260282D */  daddu     $a1, $s3, $zero
/* B74208 80241158 0C090130 */  jal       func_802404C0_B73570
/* B7420C 8024115C 0280302D */   daddu    $a2, $s4, $zero
/* B74210 80241160 0240202D */  daddu     $a0, $s2, $zero
/* B74214 80241164 0260282D */  daddu     $a1, $s3, $zero
/* B74218 80241168 0C090144 */  jal       func_80240510_B735C0
/* B7421C 8024116C 0280302D */   daddu    $a2, $s4, $zero
/* B74220 80241170 0809048C */  j         .L80241230
/* B74224 80241174 00000000 */   nop      
/* B74228 80241178 0240202D */  daddu     $a0, $s2, $zero
/* B7422C 8024117C 0260282D */  daddu     $a1, $s3, $zero
/* B74230 80241180 0C01278F */  jal       func_80049E3C
/* B74234 80241184 0280302D */   daddu    $a2, $s4, $zero
/* B74238 80241188 0240202D */  daddu     $a0, $s2, $zero
/* B7423C 8024118C 0260282D */  daddu     $a1, $s3, $zero
/* B74240 80241190 0C0127B3 */  jal       func_80049ECC
/* B74244 80241194 0280302D */   daddu    $a2, $s4, $zero
/* B74248 80241198 0809048C */  j         .L80241230
/* B7424C 8024119C 00000000 */   nop      
/* B74250 802411A0 0240202D */  daddu     $a0, $s2, $zero
/* B74254 802411A4 0260282D */  daddu     $a1, $s3, $zero
/* B74258 802411A8 0C0127DF */  jal       func_80049F7C
/* B7425C 802411AC 0280302D */   daddu    $a2, $s4, $zero
/* B74260 802411B0 0240202D */  daddu     $a0, $s2, $zero
/* B74264 802411B4 0260282D */  daddu     $a1, $s3, $zero
/* B74268 802411B8 0C012849 */  jal       func_8004A124
/* B7426C 802411BC 0280302D */   daddu    $a2, $s4, $zero
/* B74270 802411C0 0809048C */  j         .L80241230
/* B74274 802411C4 00000000 */   nop      
/* B74278 802411C8 0240202D */  daddu     $a0, $s2, $zero
/* B7427C 802411CC 0260282D */  daddu     $a1, $s3, $zero
/* B74280 802411D0 0C0128FA */  jal       func_8004A3E8
/* B74284 802411D4 0280302D */   daddu    $a2, $s4, $zero
/* B74288 802411D8 0809048C */  j         .L80241230
/* B7428C 802411DC 00000000 */   nop      
/* B74290 802411E0 0C0901B5 */  jal       func_802406D4_B73784
/* B74294 802411E4 0240202D */   daddu    $a0, $s2, $zero
/* B74298 802411E8 0C0901D0 */  jal       func_80240740_B737F0
/* B7429C 802411EC 0240202D */   daddu    $a0, $s2, $zero
/* B742A0 802411F0 8E430070 */  lw        $v1, 0x70($s2)
/* B742A4 802411F4 24020020 */  addiu     $v0, $zero, 0x20
/* B742A8 802411F8 1462000D */  bne       $v1, $v0, .L80241230
/* B742AC 802411FC 00000000 */   nop      
/* B742B0 80241200 0C0901EC */  jal       func_802407B0_B73860
/* B742B4 80241204 0240202D */   daddu    $a0, $s2, $zero
/* B742B8 80241208 8E430070 */  lw        $v1, 0x70($s2)
/* B742BC 8024120C 24020021 */  addiu     $v0, $zero, 0x21
/* B742C0 80241210 14620007 */  bne       $v1, $v0, .L80241230
/* B742C4 80241214 00000000 */   nop      
/* B742C8 80241218 0C090222 */  jal       func_80240888_B73938
/* B742CC 8024121C 0240202D */   daddu    $a0, $s2, $zero
/* B742D0 80241220 0809048C */  j         .L80241230
/* B742D4 80241224 00000000 */   nop      
/* B742D8 80241228 0C0129CF */  jal       func_8004A73C
/* B742DC 8024122C 0240202D */   daddu    $a0, $s2, $zero
.L80241230:
/* B742E0 80241230 8FBF0048 */  lw        $ra, 0x48($sp)
/* B742E4 80241234 8FB50044 */  lw        $s5, 0x44($sp)
/* B742E8 80241238 8FB40040 */  lw        $s4, 0x40($sp)
/* B742EC 8024123C 8FB3003C */  lw        $s3, 0x3c($sp)
/* B742F0 80241240 8FB20038 */  lw        $s2, 0x38($sp)
/* B742F4 80241244 8FB10034 */  lw        $s1, 0x34($sp)
/* B742F8 80241248 8FB00030 */  lw        $s0, 0x30($sp)
/* B742FC 8024124C 0000102D */  daddu     $v0, $zero, $zero
/* B74300 80241250 03E00008 */  jr        $ra
/* B74304 80241254 27BD0050 */   addiu    $sp, $sp, 0x50
/* B74308 80241258 00000000 */  nop       
/* B7430C 8024125C 00000000 */  nop       
