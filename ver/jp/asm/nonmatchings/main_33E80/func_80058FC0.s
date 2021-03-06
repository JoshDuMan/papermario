.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80058FC0
/* 343C0 80058FC0 27BDFF98 */  addiu     $sp, $sp, -0x68
/* 343C4 80058FC4 AFB00030 */  sw        $s0, 0x30($sp)
/* 343C8 80058FC8 00A0802D */  daddu     $s0, $a1, $zero
/* 343CC 80058FCC AFB10034 */  sw        $s1, 0x34($sp)
/* 343D0 80058FD0 00C0882D */  daddu     $s1, $a2, $zero
/* 343D4 80058FD4 AFB60048 */  sw        $s6, 0x48($sp)
/* 343D8 80058FD8 24F60170 */  addiu     $s6, $a3, 0x170
/* 343DC 80058FDC 32220FFF */  andi      $v0, $s1, 0xfff
/* 343E0 80058FE0 3C030617 */  lui       $v1, 0x617
/* 343E4 80058FE4 00431025 */  or        $v0, $v0, $v1
/* 343E8 80058FE8 AFBF0054 */  sw        $ra, 0x54($sp)
/* 343EC 80058FEC AFBE0050 */  sw        $fp, 0x50($sp)
/* 343F0 80058FF0 AFB7004C */  sw        $s7, 0x4c($sp)
/* 343F4 80058FF4 AFB50044 */  sw        $s5, 0x44($sp)
/* 343F8 80058FF8 AFB40040 */  sw        $s4, 0x40($sp)
/* 343FC 80058FFC AFB3003C */  sw        $s3, 0x3c($sp)
/* 34400 80059000 AFB20038 */  sw        $s2, 0x38($sp)
/* 34404 80059004 F7B60060 */  sdc1      $f22, 0x60($sp)
/* 34408 80059008 F7B40058 */  sdc1      $f20, 0x58($sp)
/* 3440C 8005900C AFA40068 */  sw        $a0, 0x68($sp)
/* 34410 80059010 A7A70026 */  sh        $a3, 0x26($sp)
/* 34414 80059014 A7A0001E */  sh        $zero, 0x1e($sp)
/* 34418 80059018 AE020000 */  sw        $v0, ($s0)
/* 3441C 8005901C 8FA80068 */  lw        $t0, 0x68($sp)
/* 34420 80059020 26120008 */  addiu     $s2, $s0, 8
/* 34424 80059024 8D040004 */  lw        $a0, 4($t0)
/* 34428 80059028 0C018798 */  jal       func_80061E60
/* 3442C 8005902C 24F302E0 */   addiu    $s3, $a3, 0x2e0
/* 34430 80059030 0240202D */  daddu     $a0, $s2, $zero
/* 34434 80059034 3C0300FF */  lui       $v1, 0xff
/* 34438 80059038 3463FFFF */  ori       $v1, $v1, 0xffff
/* 3443C 8005903C AE020004 */  sw        $v0, 4($s0)
/* 34440 80059040 00111400 */  sll       $v0, $s1, 0x10
/* 34444 80059044 00021403 */  sra       $v0, $v0, 0x10
/* 34448 80059048 00431024 */  and       $v0, $v0, $v1
/* 3444C 8005904C 3C030200 */  lui       $v1, 0x200
/* 34450 80059050 00431025 */  or        $v0, $v0, $v1
/* 34454 80059054 AC820000 */  sw        $v0, ($a0)
/* 34458 80059058 24020170 */  addiu     $v0, $zero, 0x170
/* 3445C 8005905C AC820004 */  sw        $v0, 4($a0)
/* 34460 80059060 8FA80068 */  lw        $t0, 0x68($sp)
/* 34464 80059064 0000A02D */  daddu     $s4, $zero, $zero
/* 34468 80059068 91020010 */  lbu       $v0, 0x10($t0)
/* 3446C 8005906C 26520008 */  addiu     $s2, $s2, 8
/* 34470 80059070 1040011D */  beqz      $v0, .L800594E8
/* 34474 80059074 A7B10028 */   sh       $s1, 0x28($sp)
/* 34478 80059078 00131400 */  sll       $v0, $s3, 0x10
/* 3447C 8005907C 3C014700 */  lui       $at, 0x4700
/* 34480 80059080 4481B000 */  mtc1      $at, $f22
/* 34484 80059084 00021403 */  sra       $v0, $v0, 0x10
/* 34488 80059088 AFA2002C */  sw        $v0, 0x2c($sp)
.L8005908C:
/* 3448C 8005908C 97A8001E */  lhu       $t0, 0x1e($sp)
/* 34490 80059090 00081400 */  sll       $v0, $t0, 0x10
/* 34494 80059094 00021403 */  sra       $v0, $v0, 0x10
/* 34498 80059098 00021840 */  sll       $v1, $v0, 1
/* 3449C 8005909C 00621821 */  addu      $v1, $v1, $v0
/* 344A0 800590A0 8FA80068 */  lw        $t0, 0x68($sp)
/* 344A4 800590A4 00031900 */  sll       $v1, $v1, 4
/* 344A8 800590A8 8D02000C */  lw        $v0, 0xc($t0)
/* 344AC 800590AC 8D040004 */  lw        $a0, 4($t0)
/* 344B0 800590B0 00439821 */  addu      $s3, $v0, $v1
/* 344B4 800590B4 8E620000 */  lw        $v0, ($s3)
/* 344B8 800590B8 8D030000 */  lw        $v1, ($t0)
/* 344BC 800590BC 00021040 */  sll       $v0, $v0, 1
/* 344C0 800590C0 0082B823 */  subu      $s7, $a0, $v0
/* 344C4 800590C4 02E3102B */  sltu      $v0, $s7, $v1
/* 344C8 800590C8 10400004 */  beqz      $v0, .L800590DC
/* 344CC 800590CC 00000000 */   nop
/* 344D0 800590D0 8D020008 */  lw        $v0, 8($t0)
/* 344D4 800590D4 00021040 */  sll       $v0, $v0, 1
/* 344D8 800590D8 02E2B821 */  addu      $s7, $s7, $v0
.L800590DC:
/* 344DC 800590DC 8E620004 */  lw        $v0, 4($s3)
/* 344E0 800590E0 00021040 */  sll       $v0, $v0, 1
/* 344E4 800590E4 0082F023 */  subu      $fp, $a0, $v0
/* 344E8 800590E8 03C3102B */  sltu      $v0, $fp, $v1
/* 344EC 800590EC 10400005 */  beqz      $v0, .L80059104
/* 344F0 800590F0 00000000 */   nop
/* 344F4 800590F4 8FA80068 */  lw        $t0, 0x68($sp)
/* 344F8 800590F8 8D020008 */  lw        $v0, 8($t0)
/* 344FC 800590FC 00021040 */  sll       $v0, $v0, 1
/* 34500 80059100 03C2F021 */  addu      $fp, $fp, $v0
.L80059104:
/* 34504 80059104 16F40005 */  bne       $s7, $s4, .L8005911C
/* 34508 80059108 0240802D */   daddu    $s0, $s2, $zero
/* 3450C 8005910C 02C0102D */  daddu     $v0, $s6, $zero
/* 34510 80059110 97B60026 */  lhu       $s6, 0x26($sp)
/* 34514 80059114 08016450 */  j         .L80059140
/* 34518 80059118 A7A20026 */   sh       $v0, 0x26($sp)
.L8005911C:
/* 3451C 8005911C 26520008 */  addiu     $s2, $s2, 8
/* 34520 80059120 02E0202D */  daddu     $a0, $s7, $zero
/* 34524 80059124 97A80026 */  lhu       $t0, 0x26($sp)
/* 34528 80059128 3C030417 */  lui       $v1, 0x417
/* 3452C 8005912C 31020FFF */  andi      $v0, $t0, 0xfff
/* 34530 80059130 00431025 */  or        $v0, $v0, $v1
/* 34534 80059134 0C018798 */  jal       func_80061E60
/* 34538 80059138 AE020000 */   sw       $v0, ($s0)
/* 3453C 8005913C AE020004 */  sw        $v0, 4($s0)
.L80059140:
/* 34540 80059140 8E620028 */  lw        $v0, 0x28($s3)
/* 34544 80059144 10400068 */  beqz      $v0, .L800592E8
/* 34548 80059148 0260202D */   daddu    $a0, $s3, $zero
/* 3454C 8005914C 8E700004 */  lw        $s0, 4($s3)
/* 34550 80059150 8E620000 */  lw        $v0, ($s3)
/* 34554 80059154 240500B8 */  addiu     $a1, $zero, 0xb8
/* 34558 80059158 0C016621 */  jal       func_80059884
/* 3455C 8005915C 02028023 */   subu     $s0, $s0, $v0
/* 34560 80059160 44901000 */  mtc1      $s0, $f2
/* 34564 80059164 00000000 */  nop
/* 34568 80059168 468010A0 */  cvt.s.w   $f2, $f2
/* 3456C 8005916C 46020103 */  div.s     $f4, $f0, $f2
/* 34570 80059170 46162002 */  mul.s     $f0, $f4, $f22
/* 34574 80059174 00000000 */  nop
/* 34578 80059178 4600018D */  trunc.w.s $f6, $f0
/* 3457C 8005917C 44023000 */  mfc1      $v0, $f6
/* 34580 80059180 3C013800 */  lui       $at, 0x3800
/* 34584 80059184 44810000 */  mtc1      $at, $f0
/* 34588 80059188 44822000 */  mtc1      $v0, $f4
/* 3458C 8005918C 00000000 */  nop
/* 34590 80059190 46802120 */  cvt.s.w   $f4, $f4
/* 34594 80059194 46002102 */  mul.s     $f4, $f4, $f0
/* 34598 80059198 00000000 */  nop
/* 3459C 8005919C 3C013FF0 */  lui       $at, 0x3ff0
/* 345A0 800591A0 44811800 */  mtc1      $at, $f3
/* 345A4 800591A4 44801000 */  mtc1      $zero, $f2
/* 345A8 800591A8 46002021 */  cvt.d.s   $f0, $f4
/* 345AC 800591AC 46201081 */  sub.d     $f2, $f2, $f0
/* 345B0 800591B0 3C014338 */  lui       $at, 0x4338
/* 345B4 800591B4 44812000 */  mtc1      $at, $f4
/* 345B8 800591B8 46201520 */  cvt.s.d   $f20, $f2
/* 345BC 800591BC 4604A102 */  mul.s     $f4, $f20, $f4
/* 345C0 800591C0 00000000 */  nop
/* 345C4 800591C4 8E620028 */  lw        $v0, 0x28($s3)
/* 345C8 800591C8 C4400008 */  lwc1      $f0, 8($v0)
/* 345CC 800591CC 46040000 */  add.s     $f0, $f0, $f4
/* 345D0 800591D0 4600018D */  trunc.w.s $f6, $f0
/* 345D4 800591D4 44143000 */  mfc1      $s4, $f6
/* 345D8 800591D8 00000000 */  nop
/* 345DC 800591DC 44941000 */  mtc1      $s4, $f2
/* 345E0 800591E0 00000000 */  nop
/* 345E4 800591E4 468010A0 */  cvt.s.w   $f2, $f2
/* 345E8 800591E8 46020001 */  sub.s     $f0, $f0, $f2
/* 345EC 800591EC E4400008 */  swc1      $f0, 8($v0)
/* 345F0 800591F0 8E630018 */  lw        $v1, 0x18($s3)
/* 345F4 800591F4 8E620004 */  lw        $v0, 4($s3)
/* 345F8 800591F8 8FA80068 */  lw        $t0, 0x68($sp)
/* 345FC 800591FC 00621823 */  subu      $v1, $v1, $v0
/* 34600 80059200 8D020004 */  lw        $v0, 4($t0)
/* 34604 80059204 00031840 */  sll       $v1, $v1, 1
/* 34608 80059208 00432821 */  addu      $a1, $v0, $v1
/* 3460C 8005920C 30A20007 */  andi      $v0, $a1, 7
/* 34610 80059210 00021843 */  sra       $v1, $v0, 1
/* 34614 80059214 0003A840 */  sll       $s5, $v1, 1
/* 34618 80059218 8D020000 */  lw        $v0, ($t0)
/* 3461C 8005921C 00B52823 */  subu      $a1, $a1, $s5
/* 34620 80059220 00A2102B */  sltu      $v0, $a1, $v0
/* 34624 80059224 10400004 */  beqz      $v0, .L80059238
/* 34628 80059228 00000000 */   nop
/* 3462C 8005922C 8D020008 */  lw        $v0, 8($t0)
/* 34630 80059230 00021040 */  sll       $v0, $v0, 1
/* 34634 80059234 00A22821 */  addu      $a1, $a1, $v0
.L80059238:
/* 34638 80059238 8FA40068 */  lw        $a0, 0x68($sp)
/* 3463C 8005923C 8FA6002C */  lw        $a2, 0x2c($sp)
/* 34640 80059240 02833821 */  addu      $a3, $s4, $v1
/* 34644 80059244 0C0165DA */  jal       func_80059768
/* 34648 80059248 AFB20010 */   sw       $s2, 0x10($sp)
/* 3464C 8005924C 0040902D */  daddu     $s2, $v0, $zero
/* 34650 80059250 4616A002 */  mul.s     $f0, $f20, $f22
/* 34654 80059254 00000000 */  nop
/* 34658 80059258 00168C00 */  sll       $s1, $s6, 0x10
/* 3465C 8005925C 8E630028 */  lw        $v1, 0x28($s3)
/* 34660 80059260 8C640000 */  lw        $a0, ($v1)
/* 34664 80059264 4600018D */  trunc.w.s $f6, $f0
/* 34668 80059268 44103000 */  mfc1      $s0, $f6
/* 3466C 8005926C 0C018798 */  jal       func_80061E60
/* 34670 80059270 00118E03 */   sra      $s1, $s1, 0x18
/* 34674 80059274 3C0300FF */  lui       $v1, 0xff
/* 34678 80059278 3463FFFF */  ori       $v1, $v1, 0xffff
/* 3467C 8005927C 0240202D */  daddu     $a0, $s2, $zero
/* 34680 80059280 00431024 */  and       $v0, $v0, $v1
/* 34684 80059284 3C030500 */  lui       $v1, 0x500
/* 34688 80059288 00431025 */  or        $v0, $v0, $v1
/* 3468C 8005928C 3210FFFF */  andi      $s0, $s0, 0xffff
/* 34690 80059290 00108380 */  sll       $s0, $s0, 0xe
/* 34694 80059294 32310003 */  andi      $s1, $s1, 3
/* 34698 80059298 AC820000 */  sw        $v0, ($a0)
/* 3469C 8005929C 8E620028 */  lw        $v0, 0x28($s3)
/* 346A0 800592A0 8FA8002C */  lw        $t0, 0x2c($sp)
/* 346A4 800592A4 8C43000C */  lw        $v1, 0xc($v0)
/* 346A8 800592A8 01151021 */  addu      $v0, $t0, $s5
/* 346AC 800592AC 30420FFF */  andi      $v0, $v0, 0xfff
/* 346B0 800592B0 00021080 */  sll       $v0, $v0, 2
/* 346B4 800592B4 00031F80 */  sll       $v1, $v1, 0x1e
/* 346B8 800592B8 00701825 */  or        $v1, $v1, $s0
/* 346BC 800592BC 00621825 */  or        $v1, $v1, $v0
/* 346C0 800592C0 00711825 */  or        $v1, $v1, $s1
/* 346C4 800592C4 AC830004 */  sw        $v1, 4($a0)
/* 346C8 800592C8 8E620028 */  lw        $v0, 0x28($s3)
/* 346CC 800592CC AC40000C */  sw        $zero, 0xc($v0)
/* 346D0 800592D0 8E620018 */  lw        $v0, 0x18($s3)
/* 346D4 800592D4 26520008 */  addiu     $s2, $s2, 8
/* 346D8 800592D8 2442FF48 */  addiu     $v0, $v0, -0xb8
/* 346DC 800592DC 00541021 */  addu      $v0, $v0, $s4
/* 346E0 800592E0 080164C3 */  j         .L8005930C
/* 346E4 800592E4 AE620018 */   sw       $v0, 0x18($s3)
.L800592E8:
/* 346E8 800592E8 0240802D */  daddu     $s0, $s2, $zero
/* 346EC 800592EC 26520008 */  addiu     $s2, $s2, 8
/* 346F0 800592F0 03C0202D */  daddu     $a0, $fp, $zero
/* 346F4 800592F4 32C20FFF */  andi      $v0, $s6, 0xfff
/* 346F8 800592F8 3C030417 */  lui       $v1, 0x417
/* 346FC 800592FC 00431025 */  or        $v0, $v0, $v1
/* 34700 80059300 0C018798 */  jal       func_80061E60
/* 34704 80059304 AE020000 */   sw       $v0, ($s0)
/* 34708 80059308 AE020004 */  sw        $v0, 4($s0)
.L8005930C:
/* 3470C 8005930C 86620008 */  lh        $v0, 8($s3)
/* 34710 80059310 10400018 */  beqz      $v0, .L80059374
/* 34714 80059314 0240282D */   daddu    $a1, $s2, $zero
/* 34718 80059318 32C4FFFF */  andi      $a0, $s6, 0xffff
/* 3471C 8005931C 97A80026 */  lhu       $t0, 0x26($sp)
/* 34720 80059320 96630008 */  lhu       $v1, 8($s3)
/* 34724 80059324 00081400 */  sll       $v0, $t0, 0x10
/* 34728 80059328 00441025 */  or        $v0, $v0, $a0
/* 3472C 8005932C 3C080C00 */  lui       $t0, 0xc00
/* 34730 80059330 00681825 */  or        $v1, $v1, $t0
/* 34734 80059334 ACA20004 */  sw        $v0, 4($a1)
/* 34738 80059338 ACA30000 */  sw        $v1, ($a1)
/* 3473C 8005933C 8E620028 */  lw        $v0, 0x28($s3)
/* 34740 80059340 1440000C */  bnez      $v0, .L80059374
/* 34744 80059344 26520008 */   addiu    $s2, $s2, 8
/* 34748 80059348 8E620020 */  lw        $v0, 0x20($s3)
/* 3474C 8005934C 14400009 */  bnez      $v0, .L80059374
/* 34750 80059350 0240802D */   daddu    $s0, $s2, $zero
/* 34754 80059354 26520008 */  addiu     $s2, $s2, 8
/* 34758 80059358 03C0202D */  daddu     $a0, $fp, $zero
/* 3475C 8005935C 32C20FFF */  andi      $v0, $s6, 0xfff
/* 34760 80059360 3C080617 */  lui       $t0, 0x617
/* 34764 80059364 00481025 */  or        $v0, $v0, $t0
/* 34768 80059368 0C018798 */  jal       func_80061E60
/* 3476C 8005936C AE020000 */   sw       $v0, ($s0)
/* 34770 80059370 AE020004 */  sw        $v0, 4($s0)
.L80059374:
/* 34774 80059374 8662000A */  lh        $v0, 0xa($s3)
/* 34778 80059378 10400014 */  beqz      $v0, .L800593CC
/* 3477C 8005937C 0240302D */   daddu    $a2, $s2, $zero
/* 34780 80059380 26520008 */  addiu     $s2, $s2, 8
/* 34784 80059384 0240802D */  daddu     $s0, $s2, $zero
/* 34788 80059388 26520008 */  addiu     $s2, $s2, 8
/* 3478C 8005938C 00161400 */  sll       $v0, $s6, 0x10
/* 34790 80059390 3C080C00 */  lui       $t0, 0xc00
/* 34794 80059394 97A50026 */  lhu       $a1, 0x26($sp)
/* 34798 80059398 9663000A */  lhu       $v1, 0xa($s3)
/* 3479C 8005939C 00451025 */  or        $v0, $v0, $a1
/* 347A0 800593A0 00681825 */  or        $v1, $v1, $t0
/* 347A4 800593A4 ACC20004 */  sw        $v0, 4($a2)
/* 347A8 800593A8 ACC30000 */  sw        $v1, ($a2)
/* 347AC 800593AC 97A80026 */  lhu       $t0, 0x26($sp)
/* 347B0 800593B0 02E0202D */  daddu     $a0, $s7, $zero
/* 347B4 800593B4 31020FFF */  andi      $v0, $t0, 0xfff
/* 347B8 800593B8 3C080617 */  lui       $t0, 0x617
/* 347BC 800593BC 00481025 */  or        $v0, $v0, $t0
/* 347C0 800593C0 0C018798 */  jal       func_80061E60
/* 347C4 800593C4 AE020000 */   sw       $v0, ($s0)
/* 347C8 800593C8 AE020004 */  sw        $v0, 4($s0)
.L800593CC:
/* 347CC 800593CC 8E620020 */  lw        $v0, 0x20($s3)
/* 347D0 800593D0 10400020 */  beqz      $v0, .L80059454
/* 347D4 800593D4 3C020B00 */   lui      $v0, 0xb00
/* 347D8 800593D8 34420020 */  ori       $v0, $v0, 0x20
/* 347DC 800593DC 0240882D */  daddu     $s1, $s2, $zero
/* 347E0 800593E0 00168400 */  sll       $s0, $s6, 0x10
/* 347E4 800593E4 AE220000 */  sw        $v0, ($s1)
/* 347E8 800593E8 8E640020 */  lw        $a0, 0x20($s3)
/* 347EC 800593EC 00108603 */  sra       $s0, $s0, 0x18
/* 347F0 800593F0 0C018798 */  jal       func_80061E60
/* 347F4 800593F4 24840008 */   addiu    $a0, $a0, 8
/* 347F8 800593F8 26520008 */  addiu     $s2, $s2, 8
/* 347FC 800593FC AE220004 */  sw        $v0, 4($s1)
/* 34800 80059400 0240882D */  daddu     $s1, $s2, $zero
/* 34804 80059404 8E620020 */  lw        $v0, 0x20($s3)
/* 34808 80059408 3C030E00 */  lui       $v1, 0xe00
/* 3480C 8005940C 9044002F */  lbu       $a0, 0x2f($v0)
/* 34810 80059410 94420002 */  lhu       $v0, 2($v0)
/* 34814 80059414 00042400 */  sll       $a0, $a0, 0x10
/* 34818 80059418 00431025 */  or        $v0, $v0, $v1
/* 3481C 8005941C 00822025 */  or        $a0, $a0, $v0
/* 34820 80059420 AE240000 */  sw        $a0, ($s1)
/* 34824 80059424 8E620020 */  lw        $v0, 0x20($s3)
/* 34828 80059428 8C440028 */  lw        $a0, 0x28($v0)
/* 3482C 8005942C 0C018798 */  jal       func_80061E60
/* 34830 80059430 00108600 */   sll      $s0, $s0, 0x18
/* 34834 80059434 3C0300FF */  lui       $v1, 0xff
/* 34838 80059438 3463FFFF */  ori       $v1, $v1, 0xffff
/* 3483C 8005943C 00431024 */  and       $v0, $v0, $v1
/* 34840 80059440 02028025 */  or        $s0, $s0, $v0
/* 34844 80059444 AE300004 */  sw        $s0, 4($s1)
/* 34848 80059448 8E620020 */  lw        $v0, 0x20($s3)
/* 3484C 8005944C 26520008 */  addiu     $s2, $s2, 8
/* 34850 80059450 AC40002C */  sw        $zero, 0x2c($v0)
.L80059454:
/* 34854 80059454 8E620028 */  lw        $v0, 0x28($s3)
/* 34858 80059458 14400009 */  bnez      $v0, .L80059480
/* 3485C 8005945C 0240802D */   daddu    $s0, $s2, $zero
/* 34860 80059460 26520008 */  addiu     $s2, $s2, 8
/* 34864 80059464 03C0202D */  daddu     $a0, $fp, $zero
/* 34868 80059468 32C20FFF */  andi      $v0, $s6, 0xfff
/* 3486C 8005946C 3C080617 */  lui       $t0, 0x617
/* 34870 80059470 00481025 */  or        $v0, $v0, $t0
/* 34874 80059474 0C018798 */  jal       func_80061E60
/* 34878 80059478 AE020000 */   sw       $v0, ($s0)
/* 3487C 8005947C AE020004 */  sw        $v0, 4($s0)
.L80059480:
/* 34880 80059480 8662000C */  lh        $v0, 0xc($s3)
/* 34884 80059484 1040000A */  beqz      $v0, .L800594B0
/* 34888 80059488 0240282D */   daddu    $a1, $s2, $zero
/* 3488C 8005948C 26520008 */  addiu     $s2, $s2, 8
/* 34890 80059490 00161400 */  sll       $v0, $s6, 0x10
/* 34894 80059494 3C080C00 */  lui       $t0, 0xc00
/* 34898 80059498 97A40028 */  lhu       $a0, 0x28($sp)
/* 3489C 8005949C 9663000C */  lhu       $v1, 0xc($s3)
/* 348A0 800594A0 00441025 */  or        $v0, $v0, $a0
/* 348A4 800594A4 00681825 */  or        $v1, $v1, $t0
/* 348A8 800594A8 ACA20004 */  sw        $v0, 4($a1)
/* 348AC 800594AC ACA30000 */  sw        $v1, ($a1)
.L800594B0:
/* 348B0 800594B0 97A8001E */  lhu       $t0, 0x1e($sp)
/* 348B4 800594B4 25030001 */  addiu     $v1, $t0, 1
/* 348B8 800594B8 A7A3001E */  sh        $v1, 0x1e($sp)
/* 348BC 800594BC 00031C00 */  sll       $v1, $v1, 0x10
/* 348C0 800594C0 8FA80068 */  lw        $t0, 0x68($sp)
/* 348C4 800594C4 8E620004 */  lw        $v0, 4($s3)
/* 348C8 800594C8 8D040004 */  lw        $a0, 4($t0)
/* 348CC 800594CC 00021040 */  sll       $v0, $v0, 1
/* 348D0 800594D0 0082A021 */  addu      $s4, $a0, $v0
/* 348D4 800594D4 91020010 */  lbu       $v0, 0x10($t0)
/* 348D8 800594D8 00031C03 */  sra       $v1, $v1, 0x10
/* 348DC 800594DC 0062182A */  slt       $v1, $v1, $v0
/* 348E0 800594E0 1460FEEA */  bnez      $v1, .L8005908C
/* 348E4 800594E4 00000000 */   nop
.L800594E8:
/* 348E8 800594E8 8FA80068 */  lw        $t0, 0x68($sp)
/* 348EC 800594EC 8D030004 */  lw        $v1, 4($t0)
/* 348F0 800594F0 8D020008 */  lw        $v0, 8($t0)
/* 348F4 800594F4 8D040000 */  lw        $a0, ($t0)
/* 348F8 800594F8 24630170 */  addiu     $v1, $v1, 0x170
/* 348FC 800594FC 00021040 */  sll       $v0, $v0, 1
/* 34900 80059500 00821021 */  addu      $v0, $a0, $v0
/* 34904 80059504 AD030004 */  sw        $v1, 4($t0)
/* 34908 80059508 0062182B */  sltu      $v1, $v1, $v0
/* 3490C 8005950C 50600001 */  beql      $v1, $zero, .L80059514
/* 34910 80059510 AD040004 */   sw       $a0, 4($t0)
.L80059514:
/* 34914 80059514 0240102D */  daddu     $v0, $s2, $zero
/* 34918 80059518 8FBF0054 */  lw        $ra, 0x54($sp)
/* 3491C 8005951C 8FBE0050 */  lw        $fp, 0x50($sp)
/* 34920 80059520 8FB7004C */  lw        $s7, 0x4c($sp)
/* 34924 80059524 8FB60048 */  lw        $s6, 0x48($sp)
/* 34928 80059528 8FB50044 */  lw        $s5, 0x44($sp)
/* 3492C 8005952C 8FB40040 */  lw        $s4, 0x40($sp)
/* 34930 80059530 8FB3003C */  lw        $s3, 0x3c($sp)
/* 34934 80059534 8FB20038 */  lw        $s2, 0x38($sp)
/* 34938 80059538 8FB10034 */  lw        $s1, 0x34($sp)
/* 3493C 8005953C 8FB00030 */  lw        $s0, 0x30($sp)
/* 34940 80059540 D7B60060 */  ldc1      $f22, 0x60($sp)
/* 34944 80059544 D7B40058 */  ldc1      $f20, 0x58($sp)
/* 34948 80059548 03E00008 */  jr        $ra
/* 3494C 8005954C 27BD0068 */   addiu    $sp, $sp, 0x68
