.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel pause_tutorial_input
/* 1375E0 802442A0 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 1375E4 802442A4 AFB20018 */  sw        $s2, 0x18($sp)
/* 1375E8 802442A8 0080902D */  daddu     $s2, $a0, $zero
/* 1375EC 802442AC AFB3001C */  sw        $s3, 0x1c($sp)
/* 1375F0 802442B0 00A0982D */  daddu     $s3, $a1, $zero
/* 1375F4 802442B4 AFBF0020 */  sw        $ra, 0x20($sp)
/* 1375F8 802442B8 AFB10014 */  sw        $s1, 0x14($sp)
/* 1375FC 802442BC AFB00010 */  sw        $s0, 0x10($sp)
/* 137600 802442C0 8E510000 */  lw        $s1, ($s2)
/* 137604 802442C4 8E700000 */  lw        $s0, ($s3)
/* 137608 802442C8 3C038025 */  lui       $v1, %hi(D_8024F01C)
/* 13760C 802442CC 8C63F01C */  lw        $v1, %lo(D_8024F01C)($v1)
/* 137610 802442D0 2C620005 */  sltiu     $v0, $v1, 5
/* 137614 802442D4 1040004A */  beqz      $v0, .L80244400
/* 137618 802442D8 0220202D */   daddu    $a0, $s1, $zero
/* 13761C 802442DC 00031080 */  sll       $v0, $v1, 2
/* 137620 802442E0 3C018027 */  lui       $at, %hi(D_8026FF60)
/* 137624 802442E4 00220821 */  addu      $at, $at, $v0
/* 137628 802442E8 8C22FF60 */  lw        $v0, %lo(D_8026FF60)($at)
/* 13762C 802442EC 00400008 */  jr        $v0
/* 137630 802442F0 00000000 */   nop
/* 137634 802442F4 3C028025 */  lui       $v0, %hi(D_8024F018)
/* 137638 802442F8 8C42F018 */  lw        $v0, %lo(D_8024F018)($v0)
/* 13763C 802442FC 00021080 */  sll       $v0, $v0, 2
/* 137640 80244300 3C018025 */  lui       $at, %hi(D_8024F020)
/* 137644 80244304 00220821 */  addu      $at, $at, $v0
/* 137648 80244308 8C22F020 */  lw        $v0, %lo(D_8024F020)($at)
/* 13764C 8024430C 02228024 */  and       $s0, $s1, $v0
/* 137650 80244310 12000004 */  beqz      $s0, .L80244324
/* 137654 80244314 0200882D */   daddu    $s1, $s0, $zero
/* 137658 80244318 24020001 */  addiu     $v0, $zero, 1
/* 13765C 8024431C 3C018025 */  lui       $at, %hi(D_8024F01C)
/* 137660 80244320 AC22F01C */  sw        $v0, %lo(D_8024F01C)($at)
.L80244324:
/* 137664 80244324 10800005 */  beqz      $a0, .L8024433C
/* 137668 80244328 00000000 */   nop
/* 13766C 8024432C 16000003 */  bnez      $s0, .L8024433C
/* 137670 80244330 00000000 */   nop
/* 137674 80244334 0C05272D */  jal       sfx_play_sound
/* 137678 80244338 2404021D */   addiu    $a0, $zero, 0x21d
.L8024433C:
/* 13767C 8024433C 3C028025 */  lui       $v0, %hi(D_8024F018)
/* 137680 80244340 8C42F018 */  lw        $v0, %lo(D_8024F018)($v0)
/* 137684 80244344 5440002F */  bnel      $v0, $zero, .L80244404
/* 137688 80244348 AE510000 */   sw       $s1, ($s2)
/* 13768C 8024434C 080910FF */  j         .L802443FC
/* 137690 80244350 0000882D */   daddu    $s1, $zero, $zero
/* 137694 80244354 0000882D */  daddu     $s1, $zero, $zero
/* 137698 80244358 24020002 */  addiu     $v0, $zero, 2
/* 13769C 8024435C 3C018027 */  lui       $at, %hi(D_802700E0)
/* 1376A0 80244360 AC2000E0 */  sw        $zero, %lo(D_802700E0)($at)
/* 1376A4 80244364 3C018025 */  lui       $at, %hi(D_8024F01C)
/* 1376A8 80244368 AC22F01C */  sw        $v0, %lo(D_8024F01C)($at)
/* 1376AC 8024436C 08091100 */  j         .L80244400
/* 1376B0 80244370 0220802D */   daddu    $s0, $s1, $zero
/* 1376B4 80244374 3C038027 */  lui       $v1, %hi(D_802700E0)
/* 1376B8 80244378 246300E0 */  addiu     $v1, $v1, %lo(D_802700E0)
/* 1376BC 8024437C 8C620000 */  lw        $v0, ($v1)
/* 1376C0 80244380 2442FFFF */  addiu     $v0, $v0, -1
/* 1376C4 80244384 1C40001C */  bgtz      $v0, .L802443F8
/* 1376C8 80244388 AC620000 */   sw       $v0, ($v1)
/* 1376CC 8024438C 24020003 */  addiu     $v0, $zero, 3
/* 1376D0 80244390 3C018025 */  lui       $at, %hi(D_8024F01C)
/* 1376D4 80244394 AC22F01C */  sw        $v0, %lo(D_8024F01C)($at)
/* 1376D8 80244398 080910FF */  j         .L802443FC
/* 1376DC 8024439C 0000882D */   daddu    $s1, $zero, $zero
/* 1376E0 802443A0 0000882D */  daddu     $s1, $zero, $zero
/* 1376E4 802443A4 0220802D */  daddu     $s0, $s1, $zero
/* 1376E8 802443A8 24020010 */  addiu     $v0, $zero, 0x10
/* 1376EC 802443AC 3C048025 */  lui       $a0, %hi(D_8024F018)
/* 1376F0 802443B0 2484F018 */  addiu     $a0, $a0, %lo(D_8024F018)
/* 1376F4 802443B4 3C018027 */  lui       $at, %hi(D_802700E0)
/* 1376F8 802443B8 AC2200E0 */  sw        $v0, %lo(D_802700E0)($at)
/* 1376FC 802443BC 8C820000 */  lw        $v0, ($a0)
/* 137700 802443C0 24030004 */  addiu     $v1, $zero, 4
/* 137704 802443C4 3C018025 */  lui       $at, %hi(D_8024F01C)
/* 137708 802443C8 AC23F01C */  sw        $v1, %lo(D_8024F01C)($at)
/* 13770C 802443CC 24420001 */  addiu     $v0, $v0, 1
/* 137710 802443D0 08091100 */  j         .L80244400
/* 137714 802443D4 AC820000 */   sw       $v0, ($a0)
/* 137718 802443D8 3C038027 */  lui       $v1, %hi(D_802700E0)
/* 13771C 802443DC 246300E0 */  addiu     $v1, $v1, %lo(D_802700E0)
/* 137720 802443E0 8C620000 */  lw        $v0, ($v1)
/* 137724 802443E4 2442FFFF */  addiu     $v0, $v0, -1
/* 137728 802443E8 1C400003 */  bgtz      $v0, .L802443F8
/* 13772C 802443EC AC620000 */   sw       $v0, ($v1)
/* 137730 802443F0 3C018025 */  lui       $at, %hi(D_8024F01C)
/* 137734 802443F4 AC20F01C */  sw        $zero, %lo(D_8024F01C)($at)
.L802443F8:
/* 137738 802443F8 0000882D */  daddu     $s1, $zero, $zero
.L802443FC:
/* 13773C 802443FC 0220802D */  daddu     $s0, $s1, $zero
.L80244400:
/* 137740 80244400 AE510000 */  sw        $s1, ($s2)
.L80244404:
/* 137744 80244404 AE700000 */  sw        $s0, ($s3)
/* 137748 80244408 8FBF0020 */  lw        $ra, 0x20($sp)
/* 13774C 8024440C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 137750 80244410 8FB20018 */  lw        $s2, 0x18($sp)
/* 137754 80244414 8FB10014 */  lw        $s1, 0x14($sp)
/* 137758 80244418 8FB00010 */  lw        $s0, 0x10($sp)
/* 13775C 8024441C 03E00008 */  jr        $ra
/* 137760 80244420 27BD0028 */   addiu    $sp, $sp, 0x28
