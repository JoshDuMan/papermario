
.section .text8002BF40, "ax"

func_8002BF40:
/* 007340 8002BF40 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 007344 8002BF44 3402B71B */  ori   $v0, $zero, 0xb71b
/* 007348 8002BF48 00820018 */  mult  $a0, $v0
/* 00734C 8002BF4C 0000202D */  daddu $a0, $zero, $zero
/* 007350 8002BF50 0000282D */  daddu $a1, $zero, $zero
/* 007354 8002BF54 AFBF0018 */  sw    $ra, 0x18($sp)
/* 007358 8002BF58 AFB10014 */  sw    $s1, 0x14($sp)
/* 00735C 8002BF5C AFB00010 */  sw    $s0, 0x10($sp)
/* 007360 8002BF60 00008010 */  mfhi  $s0
/* 007364 8002BF64 00008812 */  mflo  $s1
/* 007368 8002BF68 0C0198CC */  jal   osSetTime
/* 00736C 8002BF6C 00000000 */   nop   
.L8002BF70:
/* 007370 8002BF70 0C0198A8 */  jal   osGetTime
/* 007374 8002BF74 00000000 */   nop   
/* 007378 8002BF78 0040202D */  daddu $a0, $v0, $zero
/* 00737C 8002BF7C 0060282D */  daddu $a1, $v1, $zero
/* 007380 8002BF80 0090102B */  sltu  $v0, $a0, $s0
/* 007384 8002BF84 1440FFFA */  bnez  $v0, .L8002BF70
/* 007388 8002BF88 00000000 */   nop   
/* 00738C 8002BF8C 16040003 */  bne   $s0, $a0, .L8002BF9C
/* 007390 8002BF90 00B1102B */   sltu  $v0, $a1, $s1
/* 007394 8002BF94 1440FFF6 */  bnez  $v0, .L8002BF70
/* 007398 8002BF98 00000000 */   nop   
.L8002BF9C:
/* 00739C 8002BF9C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0073A0 8002BFA0 8FB10014 */  lw    $s1, 0x14($sp)
/* 0073A4 8002BFA4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0073A8 8002BFA8 03E00008 */  jr    $ra
/* 0073AC 8002BFAC 27BD0020 */   addiu $sp, $sp, 0x20

func_8002BFB0:
/* 0073B0 8002BFB0 3C08800A */  lui   $t0, 0x800a
/* 0073B4 8002BFB4 2508BB30 */  addiu $t0, $t0, -0x44d0
/* 0073B8 8002BFB8 950309D0 */  lhu   $v1, 0x9d0($t0)
/* 0073BC 8002BFBC 24020280 */  addiu $v0, $zero, 0x280
/* 0073C0 8002BFC0 14620005 */  bne   $v1, $v0, .L8002BFD8
/* 0073C4 8002BFC4 00000000 */   nop   
/* 0073C8 8002BFC8 00042040 */  sll   $a0, $a0, 1
/* 0073CC 8002BFCC 00052840 */  sll   $a1, $a1, 1
/* 0073D0 8002BFD0 00063040 */  sll   $a2, $a2, 1
/* 0073D4 8002BFD4 00073840 */  sll   $a3, $a3, 1
.L8002BFD8:
/* 0073D8 8002BFD8 950209D0 */  lhu   $v0, 0x9d0($t0)
/* 0073DC 8002BFDC 00450018 */  mult  $v0, $a1
/* 0073E0 8002BFE0 0000282D */  daddu $a1, $zero, $zero
/* 0073E4 8002BFE4 8D0209CC */  lw    $v0, 0x9cc($t0)
/* 0073E8 8002BFE8 00004812 */  mflo  $t1
/* 0073EC 8002BFEC 00091840 */  sll   $v1, $t1, 1
/* 0073F0 8002BFF0 00431021 */  addu  $v0, $v0, $v1
/* 0073F4 8002BFF4 00041840 */  sll   $v1, $a0, 1
/* 0073F8 8002BFF8 18E00014 */  blez  $a3, .L8002C04C
/* 0073FC 8002BFFC 00432021 */   addu  $a0, $v0, $v1
.L8002C000:
/* 007400 8002C000 18C0000A */  blez  $a2, .L8002C02C
/* 007404 8002C004 0000182D */   daddu $v1, $zero, $zero
.L8002C008:
/* 007408 8002C008 94820000 */  lhu   $v0, ($a0)
/* 00740C 8002C00C 24630001 */  addiu $v1, $v1, 1
/* 007410 8002C010 3042E738 */  andi  $v0, $v0, 0xe738
/* 007414 8002C014 00021082 */  srl   $v0, $v0, 2
/* 007418 8002C018 34420001 */  ori   $v0, $v0, 1
/* 00741C 8002C01C A4820000 */  sh    $v0, ($a0)
/* 007420 8002C020 0066102A */  slt   $v0, $v1, $a2
/* 007424 8002C024 1440FFF8 */  bnez  $v0, .L8002C008
/* 007428 8002C028 24840002 */   addiu $a0, $a0, 2
.L8002C02C:
/* 00742C 8002C02C 950209D0 */  lhu   $v0, 0x9d0($t0)
/* 007430 8002C030 24A50001 */  addiu $a1, $a1, 1
/* 007434 8002C034 00461023 */  subu  $v0, $v0, $a2
/* 007438 8002C038 00021040 */  sll   $v0, $v0, 1
/* 00743C 8002C03C 00822021 */  addu  $a0, $a0, $v0
/* 007440 8002C040 00A7102A */  slt   $v0, $a1, $a3
/* 007444 8002C044 1440FFEE */  bnez  $v0, .L8002C000
/* 007448 8002C048 00000000 */   nop   
.L8002C04C:
/* 00744C 8002C04C 03E00008 */  jr    $ra
/* 007450 8002C050 00000000 */   nop   

func_8002C054:
/* 007454 8002C054 3C026666 */  lui   $v0, 0x6666
/* 007458 8002C058 34426667 */  ori   $v0, $v0, 0x6667
/* 00745C 8002C05C 00C20018 */  mult  $a2, $v0
/* 007460 8002C060 0080382D */  daddu $a3, $a0, $zero
/* 007464 8002C064 000617C3 */  sra   $v0, $a2, 0x1f
/* 007468 8002C068 3C048007 */  lui   $a0, 0x8007
/* 00746C 8002C06C 24847290 */  addiu $a0, $a0, 0x7290
/* 007470 8002C070 00007010 */  mfhi  $t6
/* 007474 8002C074 000E1843 */  sra   $v1, $t6, 1
/* 007478 8002C078 00621823 */  subu  $v1, $v1, $v0
/* 00747C 8002C07C 000310C0 */  sll   $v0, $v1, 3
/* 007480 8002C080 00431023 */  subu  $v0, $v0, $v1
/* 007484 8002C084 00021080 */  sll   $v0, $v0, 2
/* 007488 8002C088 00445021 */  addu  $t2, $v0, $a0
/* 00748C 8002C08C 00031080 */  sll   $v0, $v1, 2
/* 007490 8002C090 00431021 */  addu  $v0, $v0, $v1
/* 007494 8002C094 00C23023 */  subu  $a2, $a2, $v0
/* 007498 8002C098 00061040 */  sll   $v0, $a2, 1
/* 00749C 8002C09C 00461021 */  addu  $v0, $v0, $a2
/* 0074A0 8002C0A0 00026040 */  sll   $t4, $v0, 1
/* 0074A4 8002C0A4 3C04800A */  lui   $a0, 0x800a
/* 0074A8 8002C0A8 2484BB30 */  addiu $a0, $a0, -0x44d0
/* 0074AC 8002C0AC 948309D0 */  lhu   $v1, 0x9d0($a0)
/* 0074B0 8002C0B0 24020140 */  addiu $v0, $zero, 0x140
/* 0074B4 8002C0B4 14620024 */  bne   $v1, $v0, .L8002C148
/* 0074B8 8002C0B8 24020280 */   addiu $v0, $zero, 0x280
/* 0074BC 8002C0BC 0060102D */  daddu $v0, $v1, $zero
/* 0074C0 8002C0C0 00450018 */  mult  $v0, $a1
/* 0074C4 8002C0C4 0000482D */  daddu $t1, $zero, $zero
/* 0074C8 8002C0C8 3C0D8000 */  lui   $t5, 0x8000
/* 0074CC 8002C0CC 0080582D */  daddu $t3, $a0, $zero
/* 0074D0 8002C0D0 8D6209CC */  lw    $v0, 0x9cc($t3)
/* 0074D4 8002C0D4 00007012 */  mflo  $t6
/* 0074D8 8002C0D8 000E1840 */  sll   $v1, $t6, 1
/* 0074DC 8002C0DC 00431021 */  addu  $v0, $v0, $v1
/* 0074E0 8002C0E0 00071840 */  sll   $v1, $a3, 1
/* 0074E4 8002C0E4 00432821 */  addu  $a1, $v0, $v1
/* 0074E8 8002C0E8 018D2006 */  srlv  $a0, $t5, $t4
.L8002C0EC:
/* 0074EC 8002C0EC 8D480000 */  lw    $t0, ($t2)
/* 0074F0 8002C0F0 254A0004 */  addiu $t2, $t2, 4
/* 0074F4 8002C0F4 24060005 */  addiu $a2, $zero, 5
.L8002C0F8:
/* 0074F8 8002C0F8 00A0382D */  daddu $a3, $a1, $zero
/* 0074FC 8002C0FC 24A50002 */  addiu $a1, $a1, 2
/* 007500 8002C100 00881024 */  and   $v0, $a0, $t0
/* 007504 8002C104 10400002 */  beqz  $v0, .L8002C110
/* 007508 8002C108 24030001 */   addiu $v1, $zero, 1
/* 00750C 8002C10C 3403FFFF */  ori   $v1, $zero, 0xffff
.L8002C110:
/* 007510 8002C110 A4E30000 */  sh    $v1, ($a3)
/* 007514 8002C114 24C6FFFF */  addiu $a2, $a2, -1
/* 007518 8002C118 04C1FFF7 */  bgez  $a2, .L8002C0F8
/* 00751C 8002C11C 00042042 */   srl   $a0, $a0, 1
/* 007520 8002C120 956209D0 */  lhu   $v0, 0x9d0($t3)
/* 007524 8002C124 25290001 */  addiu $t1, $t1, 1
/* 007528 8002C128 00021040 */  sll   $v0, $v0, 1
/* 00752C 8002C12C 2442FFF4 */  addiu $v0, $v0, -0xc
/* 007530 8002C130 00A22821 */  addu  $a1, $a1, $v0
/* 007534 8002C134 29220007 */  slti  $v0, $t1, 7
/* 007538 8002C138 1440FFEC */  bnez  $v0, .L8002C0EC
/* 00753C 8002C13C 018D2006 */   srlv  $a0, $t5, $t4
.L8002C140:
/* 007540 8002C140 03E00008 */  jr    $ra
/* 007544 8002C144 00000000 */   nop   

.L8002C148:
/* 007548 8002C148 1462FFFD */  bne   $v1, $v0, .L8002C140
/* 00754C 8002C14C 0000482D */   daddu $t1, $zero, $zero
/* 007550 8002C150 3C0B8000 */  lui   $t3, 0x8000
/* 007554 8002C154 00051080 */  sll   $v0, $a1, 2
/* 007558 8002C158 00451021 */  addu  $v0, $v0, $a1
/* 00755C 8002C15C 8C8309CC */  lw    $v1, 0x9cc($a0)
/* 007560 8002C160 00021240 */  sll   $v0, $v0, 9
/* 007564 8002C164 00621821 */  addu  $v1, $v1, $v0
/* 007568 8002C168 00071080 */  sll   $v0, $a3, 2
/* 00756C 8002C16C 00621821 */  addu  $v1, $v1, $v0
.L8002C170:
/* 007570 8002C170 018B3806 */  srlv  $a3, $t3, $t4
/* 007574 8002C174 8D480000 */  lw    $t0, ($t2)
/* 007578 8002C178 254A0004 */  addiu $t2, $t2, 4
/* 00757C 8002C17C 0000302D */  daddu $a2, $zero, $zero
/* 007580 8002C180 24650502 */  addiu $a1, $v1, 0x502
.L8002C184:
/* 007584 8002C184 00E81024 */  and   $v0, $a3, $t0
/* 007588 8002C188 10400002 */  beqz  $v0, .L8002C194
/* 00758C 8002C18C 24040001 */   addiu $a0, $zero, 1
/* 007590 8002C190 3404FFFF */  ori   $a0, $zero, 0xffff
.L8002C194:
/* 007594 8002C194 A4640000 */  sh    $a0, ($v1)
/* 007598 8002C198 A4A4FB00 */  sh    $a0, -0x500($a1)
/* 00759C 8002C19C A4A4FFFE */  sh    $a0, -2($a1)
/* 0075A0 8002C1A0 A4A40000 */  sh    $a0, ($a1)
/* 0075A4 8002C1A4 24A50004 */  addiu $a1, $a1, 4
/* 0075A8 8002C1A8 24630004 */  addiu $v1, $v1, 4
/* 0075AC 8002C1AC 24C60001 */  addiu $a2, $a2, 1
/* 0075B0 8002C1B0 28C20006 */  slti  $v0, $a2, 6
/* 0075B4 8002C1B4 1440FFF3 */  bnez  $v0, .L8002C184
/* 0075B8 8002C1B8 00073842 */   srl   $a3, $a3, 1
/* 0075BC 8002C1BC 25290001 */  addiu $t1, $t1, 1
/* 0075C0 8002C1C0 29220007 */  slti  $v0, $t1, 7
/* 0075C4 8002C1C4 1440FFEA */  bnez  $v0, .L8002C170
/* 0075C8 8002C1C8 246309E8 */   addiu $v1, $v1, 0x9e8
/* 0075CC 8002C1CC 03E00008 */  jr    $ra
/* 0075D0 8002C1D0 00000000 */   nop   

/* 0075D4 8002C1D4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0075D8 8002C1D8 AFB10014 */  sw    $s1, 0x14($sp)
/* 0075DC 8002C1DC 0080882D */  daddu $s1, $a0, $zero
/* 0075E0 8002C1E0 AFB00010 */  sw    $s0, 0x10($sp)
/* 0075E4 8002C1E4 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0075E8 8002C1E8 0C01929D */  jal   memcpy
/* 0075EC 8002C1EC 00C0802D */   daddu $s0, $a2, $zero
/* 0075F0 8002C1F0 02301021 */  addu  $v0, $s1, $s0
/* 0075F4 8002C1F4 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0075F8 8002C1F8 8FB10014 */  lw    $s1, 0x14($sp)
/* 0075FC 8002C1FC 8FB00010 */  lw    $s0, 0x10($sp)
/* 007600 8002C200 03E00008 */  jr    $ra
/* 007604 8002C204 27BD0020 */   addiu $sp, $sp, 0x20

func_8002C208:
/* 007608 8002C208 AFA60008 */  sw    $a2, 8($sp)
/* 00760C 8002C20C AFA7000C */  sw    $a3, 0xc($sp)
/* 007610 8002C210 27BDFED0 */  addiu $sp, $sp, -0x130
/* 007614 8002C214 AFB20118 */  sw    $s2, 0x118($sp)
/* 007618 8002C218 0080902D */  daddu $s2, $a0, $zero
/* 00761C 8002C21C AFB50124 */  sw    $s5, 0x124($sp)
/* 007620 8002C220 00A0A82D */  daddu $s5, $a1, $zero
/* 007624 8002C224 3C048003 */  lui   $a0, 0x8003
/* 007628 8002C228 2484C1D4 */  addiu $a0, $a0, -0x3e2c
/* 00762C 8002C22C 27A50010 */  addiu $a1, $sp, 0x10
/* 007630 8002C230 27A7013C */  addiu $a3, $sp, 0x13c
/* 007634 8002C234 AFBF0128 */  sw    $ra, 0x128($sp)
/* 007638 8002C238 AFB40120 */  sw    $s4, 0x120($sp)
/* 00763C 8002C23C AFB3011C */  sw    $s3, 0x11c($sp)
/* 007640 8002C240 AFB10114 */  sw    $s1, 0x114($sp)
/* 007644 8002C244 0C0192A8 */  jal   _Printf
/* 007648 8002C248 AFB00110 */   sw    $s0, 0x110($sp)
/* 00764C 8002C24C 0040802D */  daddu $s0, $v0, $zero
/* 007650 8002C250 1A000010 */  blez  $s0, .L8002C294
/* 007654 8002C254 27B10010 */   addiu $s1, $sp, 0x10
/* 007658 8002C258 3C148007 */  lui   $s4, 0x8007
/* 00765C 8002C25C 26947210 */  addiu $s4, $s4, 0x7210
/* 007660 8002C260 241300FF */  addiu $s3, $zero, 0xff
.L8002C264:
/* 007664 8002C264 92220000 */  lbu   $v0, ($s1)
/* 007668 8002C268 3042007F */  andi  $v0, $v0, 0x7f
/* 00766C 8002C26C 00541021 */  addu  $v0, $v0, $s4
/* 007670 8002C270 90460000 */  lbu   $a2, ($v0)
/* 007674 8002C274 10D30003 */  beq   $a2, $s3, .L8002C284
/* 007678 8002C278 0240202D */   daddu $a0, $s2, $zero
/* 00767C 8002C27C 0C00B015 */  jal   func_8002C054
/* 007680 8002C280 02A0282D */   daddu $a1, $s5, $zero
.L8002C284:
/* 007684 8002C284 26520006 */  addiu $s2, $s2, 6
/* 007688 8002C288 2610FFFF */  addiu $s0, $s0, -1
/* 00768C 8002C28C 1E00FFF5 */  bgtz  $s0, .L8002C264
/* 007690 8002C290 26310001 */   addiu $s1, $s1, 1
.L8002C294:
/* 007694 8002C294 8FBF0128 */  lw    $ra, 0x128($sp)
/* 007698 8002C298 8FB50124 */  lw    $s5, 0x124($sp)
/* 00769C 8002C29C 8FB40120 */  lw    $s4, 0x120($sp)
/* 0076A0 8002C2A0 8FB3011C */  lw    $s3, 0x11c($sp)
/* 0076A4 8002C2A4 8FB20118 */  lw    $s2, 0x118($sp)
/* 0076A8 8002C2A8 8FB10114 */  lw    $s1, 0x114($sp)
/* 0076AC 8002C2AC 8FB00110 */  lw    $s0, 0x110($sp)
/* 0076B0 8002C2B0 03E00008 */  jr    $ra
/* 0076B4 8002C2B4 27BD0130 */   addiu $sp, $sp, 0x130

func_8002C2B8:
/* 0076B8 8002C2B8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0076BC 8002C2BC AFBF0018 */  sw    $ra, 0x18($sp)
/* 0076C0 8002C2C0 8CE30000 */  lw    $v1, ($a3)
/* 0076C4 8002C2C4 000315C2 */  srl   $v0, $v1, 0x17
/* 0076C8 8002C2C8 304200FF */  andi  $v0, $v0, 0xff
/* 0076CC 8002C2CC 2442FFFF */  addiu $v0, $v0, -1
/* 0076D0 8002C2D0 2C4200FE */  sltiu $v0, $v0, 0xfe
/* 0076D4 8002C2D4 14400003 */  bnez  $v0, .L8002C2E4
/* 0076D8 8002C2D8 00C0402D */   daddu $t0, $a2, $zero
/* 0076DC 8002C2DC 1460000A */  bnez  $v1, .L8002C308
/* 0076E0 8002C2E0 00000000 */   nop   
.L8002C2E4:
/* 0076E4 8002C2E4 3C06800A */  lui   $a2, 0x800a
/* 0076E8 8002C2E8 24C68034 */  addiu $a2, $a2, -0x7fcc
/* 0076EC 8002C2EC C4E00000 */  lwc1  $f0, ($a3)
/* 0076F0 8002C2F0 46000021 */  cvt.d.s $f0, $f0
/* 0076F4 8002C2F4 F7A00010 */  sdc1  $f0, 0x10($sp)
/* 0076F8 8002C2F8 0C00B082 */  jal   func_8002C208
/* 0076FC 8002C2FC 0100382D */   daddu $a3, $t0, $zero
/* 007700 8002C300 0800B0C6 */  j     func_8002C318
/* 007704 8002C304 00000000 */   nop   

.L8002C308:
/* 007708 8002C308 3C06800A */  lui   $a2, 0x800a
/* 00770C 8002C30C 24C68040 */  addiu $a2, $a2, -0x7fc0
/* 007710 8002C310 0C00B082 */  jal   func_8002C208
/* 007714 8002C314 0100382D */   daddu $a3, $t0, $zero
func_8002C318:
/* 007718 8002C318 8FBF0018 */  lw    $ra, 0x18($sp)
/* 00771C 8002C31C 03E00008 */  jr    $ra
/* 007720 8002C320 27BD0020 */   addiu $sp, $sp, 0x20

func_8002C324:
/* 007724 8002C324 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 007728 8002C328 AFB10014 */  sw    $s1, 0x14($sp)
/* 00772C 8002C32C 0080882D */  daddu $s1, $a0, $zero
/* 007730 8002C330 AFB00010 */  sw    $s0, 0x10($sp)
/* 007734 8002C334 3C100002 */  lui   $s0, 2
/* 007738 8002C338 2404001E */  addiu $a0, $zero, 0x1e
/* 00773C 8002C33C 2405009B */  addiu $a1, $zero, 0x9b
/* 007740 8002C340 3C06800A */  lui   $a2, 0x800a
/* 007744 8002C344 24C68050 */  addiu $a2, $a2, -0x7fb0
/* 007748 8002C348 AFBF0018 */  sw    $ra, 0x18($sp)
/* 00774C 8002C34C 0C00B082 */  jal   func_8002C208
/* 007750 8002C350 0220382D */   daddu $a3, $s1, $zero
/* 007754 8002C354 0000182D */  daddu $v1, $zero, $zero
/* 007758 8002C358 3C078007 */  lui   $a3, 0x8007
/* 00775C 8002C35C 24E773D8 */  addiu $a3, $a3, 0x73d8
.L8002C360:
/* 007760 8002C360 02301024 */  and   $v0, $s1, $s0
/* 007764 8002C364 50400009 */  beql  $v0, $zero, .L8002C38C
/* 007768 8002C368 24E70004 */   addiu $a3, $a3, 4
/* 00776C 8002C36C 24040084 */  addiu $a0, $zero, 0x84
/* 007770 8002C370 8CE70000 */  lw    $a3, ($a3)
/* 007774 8002C374 3C06800A */  lui   $a2, 0x800a
/* 007778 8002C378 24C6805C */  addiu $a2, $a2, -0x7fa4
/* 00777C 8002C37C 0C00B082 */  jal   func_8002C208
/* 007780 8002C380 2405009B */   addiu $a1, $zero, 0x9b
/* 007784 8002C384 0800B0E7 */  j     func_8002C39C
/* 007788 8002C388 00000000 */   nop   

.L8002C38C:
/* 00778C 8002C38C 24630001 */  addiu $v1, $v1, 1
/* 007790 8002C390 28620006 */  slti  $v0, $v1, 6
/* 007794 8002C394 1440FFF2 */  bnez  $v0, .L8002C360
/* 007798 8002C398 00108042 */   srl   $s0, $s0, 1
func_8002C39C:
/* 00779C 8002C39C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0077A0 8002C3A0 8FB10014 */  lw    $s1, 0x14($sp)
/* 0077A4 8002C3A4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0077A8 8002C3A8 03E00008 */  jr    $ra
/* 0077AC 8002C3AC 27BD0020 */   addiu $sp, $sp, 0x20

func_8002C3B0:
/* 0077B0 8002C3B0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0077B4 8002C3B4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0077B8 8002C3B8 0080882D */  daddu $s1, $a0, $zero
/* 0077BC 8002C3BC AFB20020 */  sw    $s2, 0x20($sp)
/* 0077C0 8002C3C0 26320020 */  addiu $s2, $s1, 0x20
/* 0077C4 8002C3C4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0077C8 8002C3C8 AFB00018 */  sw    $s0, 0x18($sp)
/* 0077CC 8002C3CC 8E220120 */  lw    $v0, 0x120($s1)
/* 0077D0 8002C3D0 24030017 */  addiu $v1, $zero, 0x17
/* 0077D4 8002C3D4 00021082 */  srl   $v0, $v0, 2
/* 0077D8 8002C3D8 3042001F */  andi  $v0, $v0, 0x1f
/* 0077DC 8002C3DC 14430002 */  bne   $v0, $v1, .L8002C3E8
/* 0077E0 8002C3E0 0040802D */   daddu $s0, $v0, $zero
/* 0077E4 8002C3E4 24100010 */  addiu $s0, $zero, 0x10
.L8002C3E8:
/* 0077E8 8002C3E8 2402001F */  addiu $v0, $zero, 0x1f
/* 0077EC 8002C3EC 52020001 */  beql  $s0, $v0, .L8002C3F4
/* 0077F0 8002C3F0 24100011 */   addiu $s0, $zero, 0x11
.L8002C3F4:
/* 0077F4 8002C3F4 0C018634 */  jal   osWritebackDCacheAll
/* 0077F8 8002C3F8 00000000 */   nop   
/* 0077FC 8002C3FC 24040019 */  addiu $a0, $zero, 0x19
/* 007800 8002C400 24050014 */  addiu $a1, $zero, 0x14
/* 007804 8002C404 2406010E */  addiu $a2, $zero, 0x10e
/* 007808 8002C408 0C00AFEC */  jal   func_8002BFB0
/* 00780C 8002C40C 0080382D */   daddu $a3, $a0, $zero
/* 007810 8002C410 2404001E */  addiu $a0, $zero, 0x1e
/* 007814 8002C414 00101080 */  sll   $v0, $s0, 2
/* 007818 8002C418 3C018007 */  lui   $at, 0x8007
/* 00781C 8002C41C 00220821 */  addu  $at, $at, $v0
/* 007820 8002C420 8C227390 */  lw    $v0, 0x7390($at)
/* 007824 8002C424 AFA20010 */  sw    $v0, 0x10($sp)
/* 007828 8002C428 8E270014 */  lw    $a3, 0x14($s1)
/* 00782C 8002C42C 3C06800A */  lui   $a2, 0x800a
/* 007830 8002C430 24C68064 */  addiu $a2, $a2, -0x7f9c
/* 007834 8002C434 0C00B082 */  jal   func_8002C208
/* 007838 8002C438 24050019 */   addiu $a1, $zero, 0x19
/* 00783C 8002C43C 8E220118 */  lw    $v0, 0x118($s1)
/* 007840 8002C440 2404001E */  addiu $a0, $zero, 0x1e
/* 007844 8002C444 AFA20010 */  sw    $v0, 0x10($sp)
/* 007848 8002C448 8E220124 */  lw    $v0, 0x124($s1)
/* 00784C 8002C44C AFA20014 */  sw    $v0, 0x14($sp)
/* 007850 8002C450 8E27011C */  lw    $a3, 0x11c($s1)
/* 007854 8002C454 3C06800A */  lui   $a2, 0x800a
/* 007858 8002C458 24C68074 */  addiu $a2, $a2, -0x7f8c
/* 00785C 8002C45C 0C00B082 */  jal   func_8002C208
/* 007860 8002C460 24050023 */   addiu $a1, $zero, 0x23
/* 007864 8002C464 0C00AFD0 */  jal   func_8002BF40
/* 007868 8002C468 240407D0 */   addiu $a0, $zero, 0x7d0
/* 00786C 8002C46C 0C019CE0 */  jal   osViBlack
/* 007870 8002C470 0000202D */   daddu $a0, $zero, $zero
/* 007874 8002C474 0C019CF8 */  jal   osViRepeatLine
/* 007878 8002C478 0000202D */   daddu $a0, $zero, $zero
/* 00787C 8002C47C 3C04800A */  lui   $a0, 0x800a
/* 007880 8002C480 8C84C4FC */  lw    $a0, -0x3b04($a0)
/* 007884 8002C484 0C019C08 */  jal   osViSwapBuffer
/* 007888 8002C488 00000000 */   nop   
/* 00788C 8002C48C 24040019 */  addiu $a0, $zero, 0x19
/* 007890 8002C490 2405002D */  addiu $a1, $zero, 0x2d
/* 007894 8002C494 2406010E */  addiu $a2, $zero, 0x10e
/* 007898 8002C498 0C00AFEC */  jal   func_8002BFB0
/* 00789C 8002C49C 240700B9 */   addiu $a3, $zero, 0xb9
/* 0078A0 8002C4A0 8E22002C */  lw    $v0, 0x2c($s1)
/* 0078A4 8002C4A4 2404001E */  addiu $a0, $zero, 0x1e
/* 0078A8 8002C4A8 AFA20010 */  sw    $v0, 0x10($sp)
/* 0078AC 8002C4AC 8E220034 */  lw    $v0, 0x34($s1)
/* 0078B0 8002C4B0 AFA20014 */  sw    $v0, 0x14($sp)
/* 0078B4 8002C4B4 8E270024 */  lw    $a3, 0x24($s1)
/* 0078B8 8002C4B8 3C06800A */  lui   $a2, 0x800a
/* 0078BC 8002C4BC 24C68094 */  addiu $a2, $a2, -0x7f6c
/* 0078C0 8002C4C0 0C00B082 */  jal   func_8002C208
/* 0078C4 8002C4C4 24050032 */   addiu $a1, $zero, 0x32
/* 0078C8 8002C4C8 8E220044 */  lw    $v0, 0x44($s1)
/* 0078CC 8002C4CC 2404001E */  addiu $a0, $zero, 0x1e
/* 0078D0 8002C4D0 AFA20010 */  sw    $v0, 0x10($sp)
/* 0078D4 8002C4D4 8E22004C */  lw    $v0, 0x4c($s1)
/* 0078D8 8002C4D8 AFA20014 */  sw    $v0, 0x14($sp)
/* 0078DC 8002C4DC 8E27003C */  lw    $a3, 0x3c($s1)
/* 0078E0 8002C4E0 3C06800A */  lui   $a2, 0x800a
/* 0078E4 8002C4E4 24C680B4 */  addiu $a2, $a2, -0x7f4c
/* 0078E8 8002C4E8 0C00B082 */  jal   func_8002C208
/* 0078EC 8002C4EC 2405003C */   addiu $a1, $zero, 0x3c
/* 0078F0 8002C4F0 8E22005C */  lw    $v0, 0x5c($s1)
/* 0078F4 8002C4F4 2404001E */  addiu $a0, $zero, 0x1e
/* 0078F8 8002C4F8 AFA20010 */  sw    $v0, 0x10($sp)
/* 0078FC 8002C4FC 8E220064 */  lw    $v0, 0x64($s1)
/* 007900 8002C500 AFA20014 */  sw    $v0, 0x14($sp)
/* 007904 8002C504 8E270054 */  lw    $a3, 0x54($s1)
/* 007908 8002C508 3C06800A */  lui   $a2, 0x800a
/* 00790C 8002C50C 24C680D4 */  addiu $a2, $a2, -0x7f2c
/* 007910 8002C510 0C00B082 */  jal   func_8002C208
/* 007914 8002C514 24050046 */   addiu $a1, $zero, 0x46
/* 007918 8002C518 8E220074 */  lw    $v0, 0x74($s1)
/* 00791C 8002C51C 2404001E */  addiu $a0, $zero, 0x1e
/* 007920 8002C520 AFA20010 */  sw    $v0, 0x10($sp)
/* 007924 8002C524 8E22007C */  lw    $v0, 0x7c($s1)
/* 007928 8002C528 AFA20014 */  sw    $v0, 0x14($sp)
/* 00792C 8002C52C 8E27006C */  lw    $a3, 0x6c($s1)
/* 007930 8002C530 3C06800A */  lui   $a2, 0x800a
/* 007934 8002C534 24C680F4 */  addiu $a2, $a2, -0x7f0c
/* 007938 8002C538 0C00B082 */  jal   func_8002C208
/* 00793C 8002C53C 24050050 */   addiu $a1, $zero, 0x50
/* 007940 8002C540 8E22008C */  lw    $v0, 0x8c($s1)
/* 007944 8002C544 2404001E */  addiu $a0, $zero, 0x1e
/* 007948 8002C548 AFA20010 */  sw    $v0, 0x10($sp)
/* 00794C 8002C54C 8E220094 */  lw    $v0, 0x94($s1)
/* 007950 8002C550 AFA20014 */  sw    $v0, 0x14($sp)
/* 007954 8002C554 8E270084 */  lw    $a3, 0x84($s1)
/* 007958 8002C558 3C06800A */  lui   $a2, 0x800a
/* 00795C 8002C55C 24C68114 */  addiu $a2, $a2, -0x7eec
/* 007960 8002C560 0C00B082 */  jal   func_8002C208
/* 007964 8002C564 2405005A */   addiu $a1, $zero, 0x5a
/* 007968 8002C568 8E2200A4 */  lw    $v0, 0xa4($s1)
/* 00796C 8002C56C 2404001E */  addiu $a0, $zero, 0x1e
/* 007970 8002C570 AFA20010 */  sw    $v0, 0x10($sp)
/* 007974 8002C574 8E2200AC */  lw    $v0, 0xac($s1)
/* 007978 8002C578 AFA20014 */  sw    $v0, 0x14($sp)
/* 00797C 8002C57C 8E27009C */  lw    $a3, 0x9c($s1)
/* 007980 8002C580 3C06800A */  lui   $a2, 0x800a
/* 007984 8002C584 24C68134 */  addiu $a2, $a2, -0x7ecc
/* 007988 8002C588 0C00B082 */  jal   func_8002C208
/* 00798C 8002C58C 24050064 */   addiu $a1, $zero, 0x64
/* 007990 8002C590 8E2200BC */  lw    $v0, 0xbc($s1)
/* 007994 8002C594 2404001E */  addiu $a0, $zero, 0x1e
/* 007998 8002C598 AFA20010 */  sw    $v0, 0x10($sp)
/* 00799C 8002C59C 8E2200C4 */  lw    $v0, 0xc4($s1)
/* 0079A0 8002C5A0 AFA20014 */  sw    $v0, 0x14($sp)
/* 0079A4 8002C5A4 8E2700B4 */  lw    $a3, 0xb4($s1)
/* 0079A8 8002C5A8 3C06800A */  lui   $a2, 0x800a
/* 0079AC 8002C5AC 24C68154 */  addiu $a2, $a2, -0x7eac
/* 0079B0 8002C5B0 0C00B082 */  jal   func_8002C208
/* 0079B4 8002C5B4 2405006E */   addiu $a1, $zero, 0x6e
/* 0079B8 8002C5B8 8E2200D4 */  lw    $v0, 0xd4($s1)
/* 0079BC 8002C5BC 2404001E */  addiu $a0, $zero, 0x1e
/* 0079C0 8002C5C0 AFA20010 */  sw    $v0, 0x10($sp)
/* 0079C4 8002C5C4 8E2200DC */  lw    $v0, 0xdc($s1)
/* 0079C8 8002C5C8 AFA20014 */  sw    $v0, 0x14($sp)
/* 0079CC 8002C5CC 8E2700CC */  lw    $a3, 0xcc($s1)
/* 0079D0 8002C5D0 3C06800A */  lui   $a2, 0x800a
/* 0079D4 8002C5D4 24C68174 */  addiu $a2, $a2, -0x7e8c
/* 0079D8 8002C5D8 0C00B082 */  jal   func_8002C208
/* 0079DC 8002C5DC 24050078 */   addiu $a1, $zero, 0x78
/* 0079E0 8002C5E0 8E2200EC */  lw    $v0, 0xec($s1)
/* 0079E4 8002C5E4 2404001E */  addiu $a0, $zero, 0x1e
/* 0079E8 8002C5E8 AFA20010 */  sw    $v0, 0x10($sp)
/* 0079EC 8002C5EC 8E2200F4 */  lw    $v0, 0xf4($s1)
/* 0079F0 8002C5F0 AFA20014 */  sw    $v0, 0x14($sp)
/* 0079F4 8002C5F4 8E2700E4 */  lw    $a3, 0xe4($s1)
/* 0079F8 8002C5F8 3C06800A */  lui   $a2, 0x800a
/* 0079FC 8002C5FC 24C68194 */  addiu $a2, $a2, -0x7e6c
/* 007A00 8002C600 0C00B082 */  jal   func_8002C208
/* 007A04 8002C604 24050082 */   addiu $a1, $zero, 0x82
/* 007A08 8002C608 2404001E */  addiu $a0, $zero, 0x1e
/* 007A0C 8002C60C 8E220104 */  lw    $v0, 0x104($s1)
/* 007A10 8002C610 AFA20010 */  sw    $v0, 0x10($sp)
/* 007A14 8002C614 8E2700FC */  lw    $a3, 0xfc($s1)
/* 007A18 8002C618 3C06800A */  lui   $a2, 0x800a
/* 007A1C 8002C61C 24C681B4 */  addiu $a2, $a2, -0x7e4c
/* 007A20 8002C620 0C00B082 */  jal   func_8002C208
/* 007A24 8002C624 2405008C */   addiu $a1, $zero, 0x8c
/* 007A28 8002C628 8E24012C */  lw    $a0, 0x12c($s1)
/* 007A2C 8002C62C 0C00B0C9 */  jal   func_8002C324
/* 007A30 8002C630 00000000 */   nop   
/* 007A34 8002C634 2404001E */  addiu $a0, $zero, 0x1e
/* 007A38 8002C638 240500AA */  addiu $a1, $zero, 0xaa
/* 007A3C 8002C63C 0000302D */  daddu $a2, $zero, $zero
/* 007A40 8002C640 0C00B0AE */  jal   func_8002C2B8
/* 007A44 8002C644 26270134 */   addiu $a3, $s1, 0x134
/* 007A48 8002C648 24040078 */  addiu $a0, $zero, 0x78
/* 007A4C 8002C64C 240500AA */  addiu $a1, $zero, 0xaa
/* 007A50 8002C650 24060002 */  addiu $a2, $zero, 2
/* 007A54 8002C654 0C00B0AE */  jal   func_8002C2B8
/* 007A58 8002C658 2627013C */   addiu $a3, $s1, 0x13c
/* 007A5C 8002C65C 240400D2 */  addiu $a0, $zero, 0xd2
/* 007A60 8002C660 240500AA */  addiu $a1, $zero, 0xaa
/* 007A64 8002C664 24060004 */  addiu $a2, $zero, 4
/* 007A68 8002C668 0C00B0AE */  jal   func_8002C2B8
/* 007A6C 8002C66C 26270144 */   addiu $a3, $s1, 0x144
/* 007A70 8002C670 2404001E */  addiu $a0, $zero, 0x1e
/* 007A74 8002C674 240500B4 */  addiu $a1, $zero, 0xb4
/* 007A78 8002C678 24060006 */  addiu $a2, $zero, 6
/* 007A7C 8002C67C 0C00B0AE */  jal   func_8002C2B8
/* 007A80 8002C680 2627014C */   addiu $a3, $s1, 0x14c
/* 007A84 8002C684 24040078 */  addiu $a0, $zero, 0x78
/* 007A88 8002C688 240500B4 */  addiu $a1, $zero, 0xb4
/* 007A8C 8002C68C 24060008 */  addiu $a2, $zero, 8
/* 007A90 8002C690 0C00B0AE */  jal   func_8002C2B8
/* 007A94 8002C694 26270154 */   addiu $a3, $s1, 0x154
/* 007A98 8002C698 240400D2 */  addiu $a0, $zero, 0xd2
/* 007A9C 8002C69C 240500B4 */  addiu $a1, $zero, 0xb4
/* 007AA0 8002C6A0 2406000A */  addiu $a2, $zero, 0xa
/* 007AA4 8002C6A4 0C00B0AE */  jal   func_8002C2B8
/* 007AA8 8002C6A8 2627015C */   addiu $a3, $s1, 0x15c
/* 007AAC 8002C6AC 2404001E */  addiu $a0, $zero, 0x1e
/* 007AB0 8002C6B0 240500BE */  addiu $a1, $zero, 0xbe
/* 007AB4 8002C6B4 2406000C */  addiu $a2, $zero, 0xc
/* 007AB8 8002C6B8 0C00B0AE */  jal   func_8002C2B8
/* 007ABC 8002C6BC 26270164 */   addiu $a3, $s1, 0x164
/* 007AC0 8002C6C0 24040078 */  addiu $a0, $zero, 0x78
/* 007AC4 8002C6C4 240500BE */  addiu $a1, $zero, 0xbe
/* 007AC8 8002C6C8 2406000E */  addiu $a2, $zero, 0xe
/* 007ACC 8002C6CC 0C00B0AE */  jal   func_8002C2B8
/* 007AD0 8002C6D0 2627016C */   addiu $a3, $s1, 0x16c
/* 007AD4 8002C6D4 240400D2 */  addiu $a0, $zero, 0xd2
/* 007AD8 8002C6D8 240500BE */  addiu $a1, $zero, 0xbe
/* 007ADC 8002C6DC 24060010 */  addiu $a2, $zero, 0x10
/* 007AE0 8002C6E0 0C00B0AE */  jal   func_8002C2B8
/* 007AE4 8002C6E4 26270174 */   addiu $a3, $s1, 0x174
/* 007AE8 8002C6E8 2404001E */  addiu $a0, $zero, 0x1e
/* 007AEC 8002C6EC 240500C8 */  addiu $a1, $zero, 0xc8
/* 007AF0 8002C6F0 24060012 */  addiu $a2, $zero, 0x12
/* 007AF4 8002C6F4 0C00B0AE */  jal   func_8002C2B8
/* 007AF8 8002C6F8 2627017C */   addiu $a3, $s1, 0x17c
/* 007AFC 8002C6FC 24040078 */  addiu $a0, $zero, 0x78
/* 007B00 8002C700 240500C8 */  addiu $a1, $zero, 0xc8
/* 007B04 8002C704 24060014 */  addiu $a2, $zero, 0x14
/* 007B08 8002C708 0C00B0AE */  jal   func_8002C2B8
/* 007B0C 8002C70C 26270184 */   addiu $a3, $s1, 0x184
/* 007B10 8002C710 240400D2 */  addiu $a0, $zero, 0xd2
/* 007B14 8002C714 240500C8 */  addiu $a1, $zero, 0xc8
/* 007B18 8002C718 24060016 */  addiu $a2, $zero, 0x16
/* 007B1C 8002C71C 0C00B0AE */  jal   func_8002C2B8
/* 007B20 8002C720 2627018C */   addiu $a3, $s1, 0x18c
/* 007B24 8002C724 2404001E */  addiu $a0, $zero, 0x1e
/* 007B28 8002C728 240500D2 */  addiu $a1, $zero, 0xd2
/* 007B2C 8002C72C 24060018 */  addiu $a2, $zero, 0x18
/* 007B30 8002C730 0C00B0AE */  jal   func_8002C2B8
/* 007B34 8002C734 26270194 */   addiu $a3, $s1, 0x194
/* 007B38 8002C738 24040078 */  addiu $a0, $zero, 0x78
/* 007B3C 8002C73C 240500D2 */  addiu $a1, $zero, 0xd2
/* 007B40 8002C740 2406001A */  addiu $a2, $zero, 0x1a
/* 007B44 8002C744 0C00B0AE */  jal   func_8002C2B8
/* 007B48 8002C748 2627019C */   addiu $a3, $s1, 0x19c
/* 007B4C 8002C74C 240400D2 */  addiu $a0, $zero, 0xd2
/* 007B50 8002C750 0080282D */  daddu $a1, $a0, $zero
/* 007B54 8002C754 2406001C */  addiu $a2, $zero, 0x1c
/* 007B58 8002C758 0C00B0AE */  jal   func_8002C2B8
/* 007B5C 8002C75C 262701A4 */   addiu $a3, $s1, 0x1a4
/* 007B60 8002C760 2404001E */  addiu $a0, $zero, 0x1e
/* 007B64 8002C764 240500DC */  addiu $a1, $zero, 0xdc
/* 007B68 8002C768 0080302D */  daddu $a2, $a0, $zero
/* 007B6C 8002C76C 0C00B0AE */  jal   func_8002C2B8
/* 007B70 8002C770 262701AC */   addiu $a3, $s1, 0x1ac
/* 007B74 8002C774 0C00AFD0 */  jal   func_8002BF40
/* 007B78 8002C778 240401F4 */   addiu $a0, $zero, 0x1f4
/* 007B7C 8002C77C 240400D2 */  addiu $a0, $zero, 0xd2
/* 007B80 8002C780 8E4200FC */  lw    $v0, 0xfc($s2)
/* 007B84 8002C784 8C470000 */  lw    $a3, ($v0)
/* 007B88 8002C788 3C06800A */  lui   $a2, 0x800a
/* 007B8C 8002C78C 24C681C8 */  addiu $a2, $a2, -0x7e38
/* 007B90 8002C790 0C00B082 */  jal   func_8002C208
/* 007B94 8002C794 2405008C */   addiu $a1, $zero, 0x8c
/* 007B98 8002C798 8FBF0024 */  lw    $ra, 0x24($sp)
/* 007B9C 8002C79C 8FB20020 */  lw    $s2, 0x20($sp)
/* 007BA0 8002C7A0 8FB1001C */  lw    $s1, 0x1c($sp)
/* 007BA4 8002C7A4 8FB00018 */  lw    $s0, 0x18($sp)
/* 007BA8 8002C7A8 03E00008 */  jr    $ra
/* 007BAC 8002C7AC 27BD0028 */   addiu $sp, $sp, 0x28

func_8002C7B0:
/* 007BB0 8002C7B0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 007BB4 8002C7B4 AFBF0010 */  sw    $ra, 0x10($sp)
/* 007BB8 8002C7B8 0C0198A4 */  jal   osGetActiveQueue
/* 007BBC 8002C7BC 00000000 */   nop   
/* 007BC0 8002C7C0 0040202D */  daddu $a0, $v0, $zero
/* 007BC4 8002C7C4 8C830004 */  lw    $v1, 4($a0)
/* 007BC8 8002C7C8 2402FFFF */  addiu $v0, $zero, -1
/* 007BCC 8002C7CC 50620010 */  beql  $v1, $v0, .L8002C810
/* 007BD0 8002C7D0 0000102D */   daddu $v0, $zero, $zero
/* 007BD4 8002C7D4 0040182D */  daddu $v1, $v0, $zero
/* 007BD8 8002C7D8 8C820004 */  lw    $v0, 4($a0)
/* 007BDC 8002C7DC 2442FFFF */  addiu $v0, $v0, -1
.L8002C7E0:
/* 007BE0 8002C7E0 2C42007E */  sltiu $v0, $v0, 0x7e
/* 007BE4 8002C7E4 10400005 */  beqz  $v0, .L8002C7FC
/* 007BE8 8002C7E8 00000000 */   nop   
/* 007BEC 8002C7EC 94820012 */  lhu   $v0, 0x12($a0)
/* 007BF0 8002C7F0 30420003 */  andi  $v0, $v0, 3
/* 007BF4 8002C7F4 14400006 */  bnez  $v0, .L8002C810
/* 007BF8 8002C7F8 0080102D */   daddu $v0, $a0, $zero
.L8002C7FC:
/* 007BFC 8002C7FC 8C84000C */  lw    $a0, 0xc($a0)
/* 007C00 8002C800 8C820004 */  lw    $v0, 4($a0)
/* 007C04 8002C804 1443FFF6 */  bne   $v0, $v1, .L8002C7E0
/* 007C08 8002C808 2442FFFF */   addiu $v0, $v0, -1
/* 007C0C 8002C80C 0000102D */  daddu $v0, $zero, $zero
.L8002C810:
/* 007C10 8002C810 8FBF0010 */  lw    $ra, 0x10($sp)
/* 007C14 8002C814 03E00008 */  jr    $ra
/* 007C18 8002C818 27BD0018 */   addiu $sp, $sp, 0x18

/* 007C1C 8002C81C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 007C20 8002C820 2404000A */  addiu $a0, $zero, 0xa
/* 007C24 8002C824 AFB00018 */  sw    $s0, 0x18($sp)
/* 007C28 8002C828 3C10800A */  lui   $s0, 0x800a
/* 007C2C 8002C82C 2610C4E0 */  addiu $s0, $s0, -0x3b20
/* 007C30 8002C830 0200282D */  daddu $a1, $s0, $zero
/* 007C34 8002C834 AFBF001C */  sw    $ra, 0x1c($sp)
/* 007C38 8002C838 0C019654 */  jal   osSetEventMesg
/* 007C3C 8002C83C 24060001 */   addiu $a2, $zero, 1
/* 007C40 8002C840 2404000C */  addiu $a0, $zero, 0xc
/* 007C44 8002C844 0200282D */  daddu $a1, $s0, $zero
/* 007C48 8002C848 0C019654 */  jal   osSetEventMesg
/* 007C4C 8002C84C 24060002 */   addiu $a2, $zero, 2
.L8002C850:
/* 007C50 8002C850 3C04800A */  lui   $a0, 0x800a
/* 007C54 8002C854 2484C4E0 */  addiu $a0, $a0, -0x3b20
/* 007C58 8002C858 27A50010 */  addiu $a1, $sp, 0x10
/* 007C5C 8002C85C 0C0195BC */  jal   osRecvMesg
/* 007C60 8002C860 24060001 */   addiu $a2, $zero, 1
/* 007C64 8002C864 0C00B1EC */  jal   func_8002C7B0
/* 007C68 8002C868 00000000 */   nop   
/* 007C6C 8002C86C 0040802D */  daddu $s0, $v0, $zero
/* 007C70 8002C870 1200FFF7 */  beqz  $s0, .L8002C850
/* 007C74 8002C874 00000000 */   nop   
/* 007C78 8002C878 0C019850 */  jal   osStopThread
/* 007C7C 8002C87C 0200202D */   daddu $a0, $s0, $zero
/* 007C80 8002C880 0C00B0EC */  jal   func_8002C3B0
/* 007C84 8002C884 0200202D */   daddu $a0, $s0, $zero
func_8002C888:
/* 007C88 8002C888 0800B222 */  j     func_8002C888
/* 007C8C 8002C88C 00000000 */   nop   

func_8002C890:
/* 007C90 8002C890 3C02800A */  lui   $v0, 0x800a
/* 007C94 8002C894 2442BB30 */  addiu $v0, $v0, -0x44d0
/* 007C98 8002C898 3C03A000 */  lui   $v1, 0xa000
/* 007C9C 8002C89C 00832025 */  or    $a0, $a0, $v1
/* 007CA0 8002C8A0 AC4409CC */  sw    $a0, 0x9cc($v0)
/* 007CA4 8002C8A4 A44509D0 */  sh    $a1, 0x9d0($v0)
/* 007CA8 8002C8A8 03E00008 */  jr    $ra
/* 007CAC 8002C8AC A44609D2 */   sh    $a2, 0x9d2($v0)

func_8002C8B0:
/* 007CB0 8002C8B0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 007CB4 8002C8B4 3C07FFFD */  lui   $a3, 0xfffd
/* 007CB8 8002C8B8 34E7A800 */  ori   $a3, $a3, 0xa800
/* 007CBC 8002C8BC AFB00018 */  sw    $s0, 0x18($sp)
/* 007CC0 8002C8C0 3C10800A */  lui   $s0, 0x800a
/* 007CC4 8002C8C4 2610BB30 */  addiu $s0, $s0, -0x44d0
/* 007CC8 8002C8C8 AFB1001C */  sw    $s1, 0x1c($sp)
/* 007CCC 8002C8CC 261109B0 */  addiu $s1, $s0, 0x9b0
/* 007CD0 8002C8D0 0220202D */  daddu $a0, $s1, $zero
/* 007CD4 8002C8D4 260509C8 */  addiu $a1, $s0, 0x9c8
/* 007CD8 8002C8D8 24060001 */  addiu $a2, $zero, 1
/* 007CDC 8002C8DC 24020140 */  addiu $v0, $zero, 0x140
/* 007CE0 8002C8E0 AFBF0020 */  sw    $ra, 0x20($sp)
/* 007CE4 8002C8E4 A60209D0 */  sh    $v0, 0x9d0($s0)
/* 007CE8 8002C8E8 24020010 */  addiu $v0, $zero, 0x10
/* 007CEC 8002C8EC A60209D2 */  sh    $v0, 0x9d2($s0)
/* 007CF0 8002C8F0 3C028000 */  lui   $v0, 0x8000
/* 007CF4 8002C8F4 8C420318 */  lw    $v0, 0x318($v0)
/* 007CF8 8002C8F8 3C03A000 */  lui   $v1, 0xa000
/* 007CFC 8002C8FC 00431025 */  or    $v0, $v0, $v1
/* 007D00 8002C900 00471021 */  addu  $v0, $v0, $a3
/* 007D04 8002C904 0C019560 */  jal   osCreateMesgQueue
/* 007D08 8002C908 AE0209CC */   sw    $v0, 0x9cc($s0)
/* 007D0C 8002C90C 0200202D */  daddu $a0, $s0, $zero
/* 007D10 8002C910 24050002 */  addiu $a1, $zero, 2
/* 007D14 8002C914 3C068003 */  lui   $a2, 0x8003
/* 007D18 8002C918 24C6C81C */  addiu $a2, $a2, -0x37e4
/* 007D1C 8002C91C 24020080 */  addiu $v0, $zero, 0x80
/* 007D20 8002C920 0000382D */  daddu $a3, $zero, $zero
/* 007D24 8002C924 AFB10010 */  sw    $s1, 0x10($sp)
/* 007D28 8002C928 0C019798 */  jal   osCreateThread
/* 007D2C 8002C92C AFA20014 */   sw    $v0, 0x14($sp)
/* 007D30 8002C930 0C019808 */  jal   osStartThread
/* 007D34 8002C934 0200202D */   daddu $a0, $s0, $zero
/* 007D38 8002C938 8FBF0020 */  lw    $ra, 0x20($sp)
/* 007D3C 8002C93C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 007D40 8002C940 8FB00018 */  lw    $s0, 0x18($sp)
/* 007D44 8002C944 03E00008 */  jr    $ra
/* 007D48 8002C948 27BD0028 */   addiu $sp, $sp, 0x28

/* 007D4C 8002C94C AFA60008 */  sw    $a2, 8($sp)
/* 007D50 8002C950 AFA7000C */  sw    $a3, 0xc($sp)
/* 007D54 8002C954 27BDFED0 */  addiu $sp, $sp, -0x130
/* 007D58 8002C958 AFB20118 */  sw    $s2, 0x118($sp)
/* 007D5C 8002C95C 0080902D */  daddu $s2, $a0, $zero
/* 007D60 8002C960 AFB00110 */  sw    $s0, 0x110($sp)
/* 007D64 8002C964 00A0802D */  daddu $s0, $a1, $zero
/* 007D68 8002C968 AFB3011C */  sw    $s3, 0x11c($sp)
/* 007D6C 8002C96C 0240982D */  daddu $s3, $s2, $zero
/* 007D70 8002C970 3C048003 */  lui   $a0, 0x8003
/* 007D74 8002C974 2484C1D4 */  addiu $a0, $a0, -0x3e2c
/* 007D78 8002C978 27A50010 */  addiu $a1, $sp, 0x10
/* 007D7C 8002C97C 27A7013C */  addiu $a3, $sp, 0x13c
/* 007D80 8002C980 AFBF0128 */  sw    $ra, 0x128($sp)
/* 007D84 8002C984 AFB50124 */  sw    $s5, 0x124($sp)
/* 007D88 8002C988 AFB40120 */  sw    $s4, 0x120($sp)
/* 007D8C 8002C98C 0C0192A8 */  jal   _Printf
/* 007D90 8002C990 AFB10114 */   sw    $s1, 0x114($sp)
/* 007D94 8002C994 0040882D */  daddu $s1, $v0, $zero
/* 007D98 8002C998 1A20001D */  blez  $s1, .L8002CA10
/* 007D9C 8002C99C 00122400 */   sll   $a0, $s2, 0x10
/* 007DA0 8002C9A0 00042403 */  sra   $a0, $a0, 0x10
/* 007DA4 8002C9A4 2484FFFA */  addiu $a0, $a0, -6
/* 007DA8 8002C9A8 00108400 */  sll   $s0, $s0, 0x10
/* 007DAC 8002C9AC 00102C03 */  sra   $a1, $s0, 0x10
/* 007DB0 8002C9B0 24A5FFFA */  addiu $a1, $a1, -6
/* 007DB4 8002C9B4 26220002 */  addiu $v0, $s1, 2
/* 007DB8 8002C9B8 00023040 */  sll   $a2, $v0, 1
/* 007DBC 8002C9BC 00C23021 */  addu  $a2, $a2, $v0
/* 007DC0 8002C9C0 00063040 */  sll   $a2, $a2, 1
/* 007DC4 8002C9C4 0C00AFEC */  jal   func_8002BFB0
/* 007DC8 8002C9C8 24070013 */   addiu $a3, $zero, 0x13
/* 007DCC 8002C9CC 27B20010 */  addiu $s2, $sp, 0x10
/* 007DD0 8002C9D0 3C158007 */  lui   $s5, 0x8007
/* 007DD4 8002C9D4 26B57210 */  addiu $s5, $s5, 0x7210
/* 007DD8 8002C9D8 241400FF */  addiu $s4, $zero, 0xff
.L8002C9DC:
/* 007DDC 8002C9DC 92420000 */  lbu   $v0, ($s2)
/* 007DE0 8002C9E0 3042007F */  andi  $v0, $v0, 0x7f
/* 007DE4 8002C9E4 00551021 */  addu  $v0, $v0, $s5
/* 007DE8 8002C9E8 90460000 */  lbu   $a2, ($v0)
/* 007DEC 8002C9EC 10D40004 */  beq   $a2, $s4, .L8002CA00
/* 007DF0 8002C9F0 00132400 */   sll   $a0, $s3, 0x10
/* 007DF4 8002C9F4 00042403 */  sra   $a0, $a0, 0x10
/* 007DF8 8002C9F8 0C00B015 */  jal   func_8002C054
/* 007DFC 8002C9FC 00102C03 */   sra   $a1, $s0, 0x10
.L8002CA00:
/* 007E00 8002CA00 26730006 */  addiu $s3, $s3, 6
/* 007E04 8002CA04 2631FFFF */  addiu $s1, $s1, -1
/* 007E08 8002CA08 1E20FFF4 */  bgtz  $s1, .L8002C9DC
/* 007E0C 8002CA0C 26520001 */   addiu $s2, $s2, 1
.L8002CA10:
/* 007E10 8002CA10 8FBF0128 */  lw    $ra, 0x128($sp)
/* 007E14 8002CA14 8FB50124 */  lw    $s5, 0x124($sp)
/* 007E18 8002CA18 8FB40120 */  lw    $s4, 0x120($sp)
/* 007E1C 8002CA1C 8FB3011C */  lw    $s3, 0x11c($sp)
/* 007E20 8002CA20 8FB20118 */  lw    $s2, 0x118($sp)
/* 007E24 8002CA24 8FB10114 */  lw    $s1, 0x114($sp)
/* 007E28 8002CA28 8FB00110 */  lw    $s0, 0x110($sp)
/* 007E2C 8002CA2C 03E00008 */  jr    $ra
/* 007E30 8002CA30 27BD0130 */   addiu $sp, $sp, 0x130

/* 007E34 8002CA34 00000000 */  nop   
/* 007E38 8002CA38 00000000 */  nop   
/* 007E3C 8002CA3C 00000000 */  nop   
