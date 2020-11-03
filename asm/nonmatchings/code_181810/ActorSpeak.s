.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel ActorSpeak
/* 181810 80252F30 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 181814 80252F34 AFB3003C */  sw        $s3, 0x3c($sp)
/* 181818 80252F38 0080982D */  daddu     $s3, $a0, $zero
/* 18181C 80252F3C AFBF0044 */  sw        $ra, 0x44($sp)
/* 181820 80252F40 AFB40040 */  sw        $s4, 0x40($sp)
/* 181824 80252F44 AFB20038 */  sw        $s2, 0x38($sp)
/* 181828 80252F48 AFB10034 */  sw        $s1, 0x34($sp)
/* 18182C 80252F4C AFB00030 */  sw        $s0, 0x30($sp)
/* 181830 80252F50 10A00075 */  beqz      $a1, .L80253128
/* 181834 80252F54 8E71000C */   lw       $s1, 0xc($s3)
/* 181838 80252F58 8E250000 */  lw        $a1, ($s1)
/* 18183C 80252F5C 0C0B1EAF */  jal       get_variable
/* 181840 80252F60 26310004 */   addiu    $s1, $s1, 4
/* 181844 80252F64 8E250000 */  lw        $a1, ($s1)
/* 181848 80252F68 26310004 */  addiu     $s1, $s1, 4
/* 18184C 80252F6C 0260202D */  daddu     $a0, $s3, $zero
/* 181850 80252F70 0C0B1EAF */  jal       get_variable
/* 181854 80252F74 0040802D */   daddu    $s0, $v0, $zero
/* 181858 80252F78 0040902D */  daddu     $s2, $v0, $zero
/* 18185C 80252F7C 8E250000 */  lw        $a1, ($s1)
/* 181860 80252F80 26310004 */  addiu     $s1, $s1, 4
/* 181864 80252F84 0C0B1EAF */  jal       get_variable
/* 181868 80252F88 0260202D */   daddu    $a0, $s3, $zero
/* 18186C 80252F8C 8E250000 */  lw        $a1, ($s1)
/* 181870 80252F90 26310004 */  addiu     $s1, $s1, 4
/* 181874 80252F94 0260202D */  daddu     $a0, $s3, $zero
/* 181878 80252F98 0C0B1EAF */  jal       get_variable
/* 18187C 80252F9C 0040A02D */   daddu    $s4, $v0, $zero
/* 181880 80252FA0 3C01802A */  lui       $at, %hi(gSpeakingActorTalkAnim)
/* 181884 80252FA4 AC22FA6C */  sw        $v0, %lo(gSpeakingActorTalkAnim)($at)
/* 181888 80252FA8 8E250000 */  lw        $a1, ($s1)
/* 18188C 80252FAC 0C0B1EAF */  jal       get_variable
/* 181890 80252FB0 0260202D */   daddu    $a0, $s3, $zero
/* 181894 80252FB4 3C01802A */  lui       $at, %hi(gSpeakingActorIdleAnim)
/* 181898 80252FB8 AC22FA70 */  sw        $v0, %lo(gSpeakingActorIdleAnim)($at)
/* 18189C 80252FBC 2402FF81 */  addiu     $v0, $zero, -0x7f
/* 1818A0 80252FC0 16420002 */  bne       $s2, $v0, .L80252FCC
/* 1818A4 80252FC4 00000000 */   nop      
/* 1818A8 80252FC8 8E720148 */  lw        $s2, 0x148($s3)
.L80252FCC:
/* 1818AC 80252FCC 0C09A75B */  jal       get_actor
/* 1818B0 80252FD0 0240202D */   daddu    $a0, $s2, $zero
/* 1818B4 80252FD4 0040882D */  daddu     $s1, $v0, $zero
/* 1818B8 80252FD8 0220202D */  daddu     $a0, $s1, $zero
/* 1818BC 80252FDC 0C099117 */  jal       get_actor_part
/* 1818C0 80252FE0 0280282D */   daddu    $a1, $s4, $zero
/* 1818C4 80252FE4 0040902D */  daddu     $s2, $v0, $zero
/* 1818C8 80252FE8 86230150 */  lh        $v1, 0x150($s1)
/* 1818CC 80252FEC C6200144 */  lwc1      $f0, 0x144($s1)
/* 1818D0 80252FF0 8E220000 */  lw        $v0, ($s1)
/* 1818D4 80252FF4 3C01802A */  lui       $at, %hi(gSpeakingActor)
/* 1818D8 80252FF8 AC31FA74 */  sw        $s1, %lo(gSpeakingActor)($at)
/* 1818DC 80252FFC 3C01802A */  lui       $at, %hi(gSpeakingActorPart)
/* 1818E0 80253000 AC32FA78 */  sw        $s2, %lo(gSpeakingActorPart)($at)
/* 1818E4 80253004 44831000 */  mtc1      $v1, $f2
/* 1818E8 80253008 00000000 */  nop       
/* 1818EC 8025300C 468010A0 */  cvt.s.w   $f2, $f2
/* 1818F0 80253010 30428000 */  andi      $v0, $v0, 0x8000
/* 1818F4 80253014 1440000D */  bnez      $v0, .L8025304C
/* 1818F8 80253018 46020100 */   add.s    $f4, $f0, $f2
/* 1818FC 8025301C 86220152 */  lh        $v0, 0x152($s1)
/* 181900 80253020 C6200148 */  lwc1      $f0, 0x148($s1)
/* 181904 80253024 44821000 */  mtc1      $v0, $f2
/* 181908 80253028 00000000 */  nop       
/* 18190C 8025302C 468010A0 */  cvt.s.w   $f2, $f2
/* 181910 80253030 92220191 */  lbu       $v0, 0x191($s1)
/* 181914 80253034 46020000 */  add.s     $f0, $f0, $f2
/* 181918 80253038 44821000 */  mtc1      $v0, $f2
/* 18191C 8025303C 00000000 */  nop       
/* 181920 80253040 468010A0 */  cvt.s.w   $f2, $f2
/* 181924 80253044 08094C1F */  j         .L8025307C
/* 181928 80253048 46001000 */   add.s    $f0, $f2, $f0
.L8025304C:
/* 18192C 8025304C 86220152 */  lh        $v0, 0x152($s1)
/* 181930 80253050 C6220148 */  lwc1      $f2, 0x148($s1)
/* 181934 80253054 44820000 */  mtc1      $v0, $f0
/* 181938 80253058 00000000 */  nop       
/* 18193C 8025305C 46800020 */  cvt.s.w   $f0, $f0
/* 181940 80253060 92220191 */  lbu       $v0, 0x191($s1)
/* 181944 80253064 46001080 */  add.s     $f2, $f2, $f0
/* 181948 80253068 00021042 */  srl       $v0, $v0, 1
/* 18194C 8025306C 44820000 */  mtc1      $v0, $f0
/* 181950 80253070 00000000 */  nop       
/* 181954 80253074 46800020 */  cvt.s.w   $f0, $f0
/* 181958 80253078 46001000 */  add.s     $f0, $f2, $f0
.L8025307C:
/* 18195C 8025307C 24040001 */  addiu     $a0, $zero, 1
/* 181960 80253080 44052000 */  mfc1      $a1, $f4
/* 181964 80253084 44060000 */  mfc1      $a2, $f0
/* 181968 80253088 86230154 */  lh        $v1, 0x154($s1)
/* 18196C 8025308C C622014C */  lwc1      $f2, 0x14c($s1)
/* 181970 80253090 27A20020 */  addiu     $v0, $sp, 0x20
/* 181974 80253094 AFA20010 */  sw        $v0, 0x10($sp)
/* 181978 80253098 44830000 */  mtc1      $v1, $f0
/* 18197C 8025309C 00000000 */  nop       
/* 181980 802530A0 46800020 */  cvt.s.w   $f0, $f0
/* 181984 802530A4 46001080 */  add.s     $f2, $f2, $f0
/* 181988 802530A8 27A20024 */  addiu     $v0, $sp, 0x24
/* 18198C 802530AC AFA20014 */  sw        $v0, 0x14($sp)
/* 181990 802530B0 44071000 */  mfc1      $a3, $f2
/* 181994 802530B4 27A20028 */  addiu     $v0, $sp, 0x28
/* 181998 802530B8 0C00B94E */  jal       get_screen_coords
/* 18199C 802530BC AFA20018 */   sw       $v0, 0x18($sp)
/* 1819A0 802530C0 0200202D */  daddu     $a0, $s0, $zero
/* 1819A4 802530C4 3C05802A */  lui       $a1, %hi(gSpeakingActorPrintIsDone)
/* 1819A8 802530C8 24A5FA68 */  addiu     $a1, $a1, %lo(gSpeakingActorPrintIsDone)
/* 1819AC 802530CC 0C049640 */  jal       load_string
/* 1819B0 802530D0 ACA00000 */   sw       $zero, ($a1)
/* 1819B4 802530D4 8FA50020 */  lw        $a1, 0x20($sp)
/* 1819B8 802530D8 8FA60024 */  lw        $a2, 0x24($sp)
/* 1819BC 802530DC 0040202D */  daddu     $a0, $v0, $zero
/* 1819C0 802530E0 3C01802A */  lui       $at, %hi(gSpeakingActorPrintCtx)
/* 1819C4 802530E4 AC24FA60 */  sw        $a0, %lo(gSpeakingActorPrintCtx)($at)
/* 1819C8 802530E8 0C0496AE */  jal       clamp_printer_coords
/* 1819CC 802530EC 00000000 */   nop      
/* 1819D0 802530F0 3C03800A */  lui       $v1, %hi(D_8009A650)
/* 1819D4 802530F4 2463A650 */  addiu     $v1, $v1, %lo(D_8009A650)
/* 1819D8 802530F8 AE600070 */  sw        $zero, 0x70($s3)
/* 1819DC 802530FC 8C620000 */  lw        $v0, ($v1)
/* 1819E0 80253100 3C06802A */  lui       $a2, %hi(gSpeakingActorTalkAnim)
/* 1819E4 80253104 8CC6FA6C */  lw        $a2, %lo(gSpeakingActorTalkAnim)($a2)
/* 1819E8 80253108 34420010 */  ori       $v0, $v0, 0x10
/* 1819EC 8025310C 04C00004 */  bltz      $a2, .L80253120
/* 1819F0 80253110 AC620000 */   sw       $v0, ($v1)
/* 1819F4 80253114 0220202D */  daddu     $a0, $s1, $zero
/* 1819F8 80253118 0C098F82 */  jal       func_80263E08
/* 1819FC 8025311C 0240282D */   daddu    $a1, $s2, $zero
.L80253120:
/* 181A00 80253120 0C03A6D5 */  jal       increment_status_menu_disabled
/* 181A04 80253124 00000000 */   nop      
.L80253128:
/* 181A08 80253128 8E620070 */  lw        $v0, 0x70($s3)
/* 181A0C 8025312C 14400060 */  bnez      $v0, .L802532B0
/* 181A10 80253130 0000102D */   daddu    $v0, $zero, $zero
/* 181A14 80253134 3C11802A */  lui       $s1, %hi(gSpeakingActor)
/* 181A18 80253138 8E31FA74 */  lw        $s1, %lo(gSpeakingActor)($s1)
/* 181A1C 8025313C 3C12802A */  lui       $s2, %hi(gSpeakingActorPart)
/* 181A20 80253140 8E52FA78 */  lw        $s2, %lo(gSpeakingActorPart)($s2)
/* 181A24 80253144 86220150 */  lh        $v0, 0x150($s1)
/* 181A28 80253148 C6200144 */  lwc1      $f0, 0x144($s1)
/* 181A2C 8025314C 44821000 */  mtc1      $v0, $f2
/* 181A30 80253150 00000000 */  nop       
/* 181A34 80253154 468010A0 */  cvt.s.w   $f2, $f2
/* 181A38 80253158 8E220000 */  lw        $v0, ($s1)
/* 181A3C 8025315C 30428000 */  andi      $v0, $v0, 0x8000
/* 181A40 80253160 1440000D */  bnez      $v0, .L80253198
/* 181A44 80253164 46020100 */   add.s    $f4, $f0, $f2
/* 181A48 80253168 86220152 */  lh        $v0, 0x152($s1)
/* 181A4C 8025316C C6200148 */  lwc1      $f0, 0x148($s1)
/* 181A50 80253170 44821000 */  mtc1      $v0, $f2
/* 181A54 80253174 00000000 */  nop       
/* 181A58 80253178 468010A0 */  cvt.s.w   $f2, $f2
/* 181A5C 8025317C 92220191 */  lbu       $v0, 0x191($s1)
/* 181A60 80253180 46020000 */  add.s     $f0, $f0, $f2
/* 181A64 80253184 44821000 */  mtc1      $v0, $f2
/* 181A68 80253188 00000000 */  nop       
/* 181A6C 8025318C 468010A0 */  cvt.s.w   $f2, $f2
/* 181A70 80253190 08094C72 */  j         .L802531C8
/* 181A74 80253194 46001000 */   add.s    $f0, $f2, $f0
.L80253198:
/* 181A78 80253198 86220152 */  lh        $v0, 0x152($s1)
/* 181A7C 8025319C C6220148 */  lwc1      $f2, 0x148($s1)
/* 181A80 802531A0 44820000 */  mtc1      $v0, $f0
/* 181A84 802531A4 00000000 */  nop       
/* 181A88 802531A8 46800020 */  cvt.s.w   $f0, $f0
/* 181A8C 802531AC 92220191 */  lbu       $v0, 0x191($s1)
/* 181A90 802531B0 46001080 */  add.s     $f2, $f2, $f0
/* 181A94 802531B4 00021042 */  srl       $v0, $v0, 1
/* 181A98 802531B8 44820000 */  mtc1      $v0, $f0
/* 181A9C 802531BC 00000000 */  nop       
/* 181AA0 802531C0 46800020 */  cvt.s.w   $f0, $f0
/* 181AA4 802531C4 46001000 */  add.s     $f0, $f2, $f0
.L802531C8:
/* 181AA8 802531C8 24040001 */  addiu     $a0, $zero, 1
/* 181AAC 802531CC 44052000 */  mfc1      $a1, $f4
/* 181AB0 802531D0 44060000 */  mfc1      $a2, $f0
/* 181AB4 802531D4 86230154 */  lh        $v1, 0x154($s1)
/* 181AB8 802531D8 C622014C */  lwc1      $f2, 0x14c($s1)
/* 181ABC 802531DC 27A20020 */  addiu     $v0, $sp, 0x20
/* 181AC0 802531E0 AFA20010 */  sw        $v0, 0x10($sp)
/* 181AC4 802531E4 44830000 */  mtc1      $v1, $f0
/* 181AC8 802531E8 00000000 */  nop       
/* 181ACC 802531EC 46800020 */  cvt.s.w   $f0, $f0
/* 181AD0 802531F0 46001080 */  add.s     $f2, $f2, $f0
/* 181AD4 802531F4 27A20024 */  addiu     $v0, $sp, 0x24
/* 181AD8 802531F8 AFA20014 */  sw        $v0, 0x14($sp)
/* 181ADC 802531FC 44071000 */  mfc1      $a3, $f2
/* 181AE0 80253200 27A20028 */  addiu     $v0, $sp, 0x28
/* 181AE4 80253204 0C00B94E */  jal       get_screen_coords
/* 181AE8 80253208 AFA20018 */   sw       $v0, 0x18($sp)
/* 181AEC 8025320C 3C10802A */  lui       $s0, %hi(gSpeakingActorPrintCtx)
/* 181AF0 80253210 2610FA60 */  addiu     $s0, $s0, %lo(gSpeakingActorPrintCtx)
/* 181AF4 80253214 8E040000 */  lw        $a0, ($s0)
/* 181AF8 80253218 8FA50020 */  lw        $a1, 0x20($sp)
/* 181AFC 8025321C 0C0496AE */  jal       clamp_printer_coords
/* 181B00 80253220 8FA60024 */   lw       $a2, 0x24($sp)
/* 181B04 80253224 8E020000 */  lw        $v0, ($s0)
/* 181B08 80253228 8C4304FC */  lw        $v1, 0x4fc($v0)
/* 181B0C 8025322C 30620040 */  andi      $v0, $v1, 0x40
/* 181B10 80253230 10400005 */  beqz      $v0, .L80253248
/* 181B14 80253234 30620080 */   andi     $v0, $v1, 0x80
/* 181B18 80253238 0C03A6CC */  jal       decrement_status_menu_disabled
/* 181B1C 8025323C 00000000 */   nop      
/* 181B20 80253240 08094CAC */  j         .L802532B0
/* 181B24 80253244 24020001 */   addiu    $v0, $zero, 1
.L80253248:
/* 181B28 80253248 10400005 */  beqz      $v0, .L80253260
/* 181B2C 8025324C 00000000 */   nop      
/* 181B30 80253250 3C06802A */  lui       $a2, %hi(gSpeakingActorTalkAnim)
/* 181B34 80253254 8CC6FA6C */  lw        $a2, %lo(gSpeakingActorTalkAnim)($a2)
/* 181B38 80253258 08094C9A */  j         .L80253268
/* 181B3C 8025325C 00000000 */   nop      
.L80253260:
/* 181B40 80253260 3C06802A */  lui       $a2, %hi(gSpeakingActorIdleAnim)
/* 181B44 80253264 8CC6FA70 */  lw        $a2, %lo(gSpeakingActorIdleAnim)($a2)
.L80253268:
/* 181B48 80253268 04C00003 */  bltz      $a2, .L80253278
/* 181B4C 8025326C 0220202D */   daddu    $a0, $s1, $zero
/* 181B50 80253270 0C098F82 */  jal       func_80263E08
/* 181B54 80253274 0240282D */   daddu    $a1, $s2, $zero
.L80253278:
/* 181B58 80253278 3C03802A */  lui       $v1, %hi(gSpeakingActorPrintIsDone)
/* 181B5C 8025327C 8C63FA68 */  lw        $v1, %lo(gSpeakingActorPrintIsDone)($v1)
/* 181B60 80253280 24020001 */  addiu     $v0, $zero, 1
/* 181B64 80253284 1462000A */  bne       $v1, $v0, .L802532B0
/* 181B68 80253288 0000102D */   daddu    $v0, $zero, $zero
/* 181B6C 8025328C 0C03A6CC */  jal       decrement_status_menu_disabled
/* 181B70 80253290 00000000 */   nop      
/* 181B74 80253294 24020001 */  addiu     $v0, $zero, 1
/* 181B78 80253298 3C03800A */  lui       $v1, %hi(D_8009A650)
/* 181B7C 8025329C 2463A650 */  addiu     $v1, $v1, %lo(D_8009A650)
/* 181B80 802532A0 8C640000 */  lw        $a0, ($v1)
/* 181B84 802532A4 2405FFEF */  addiu     $a1, $zero, -0x11
/* 181B88 802532A8 00852024 */  and       $a0, $a0, $a1
/* 181B8C 802532AC AC640000 */  sw        $a0, ($v1)
.L802532B0:
/* 181B90 802532B0 8FBF0044 */  lw        $ra, 0x44($sp)
/* 181B94 802532B4 8FB40040 */  lw        $s4, 0x40($sp)
/* 181B98 802532B8 8FB3003C */  lw        $s3, 0x3c($sp)
/* 181B9C 802532BC 8FB20038 */  lw        $s2, 0x38($sp)
/* 181BA0 802532C0 8FB10034 */  lw        $s1, 0x34($sp)
/* 181BA4 802532C4 8FB00030 */  lw        $s0, 0x30($sp)
/* 181BA8 802532C8 03E00008 */  jr        $ra
/* 181BAC 802532CC 27BD0048 */   addiu    $sp, $sp, 0x48
