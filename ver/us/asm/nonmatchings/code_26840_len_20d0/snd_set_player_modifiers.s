.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel snd_set_player_modifiers
/* 277D4 8004C3D4 9082009A */  lbu       $v0, 0x9a($a0)
/* 277D8 8004C3D8 30420004 */  andi      $v0, $v0, 4
/* 277DC 8004C3DC 10400003 */  beqz      $v0, .L8004C3EC
/* 277E0 8004C3E0 24020001 */   addiu    $v0, $zero, 1
/* 277E4 8004C3E4 080130FE */  j         .L8004C3F8
/* 277E8 8004C3E8 A48000A6 */   sh       $zero, 0xa6($a0)
.L8004C3EC:
/* 277EC 8004C3EC 94A30004 */  lhu       $v1, 4($a1)
/* 277F0 8004C3F0 A0820055 */  sb        $v0, 0x55($a0)
/* 277F4 8004C3F4 A48300A6 */  sh        $v1, 0xa6($a0)
.L8004C3F8:
/* 277F8 8004C3F8 9082009A */  lbu       $v0, 0x9a($a0)
/* 277FC 8004C3FC 30420008 */  andi      $v0, $v0, 8
/* 27800 8004C400 10400003 */  beqz      $v0, .L8004C410
/* 27804 8004C404 24020001 */   addiu    $v0, $zero, 1
/* 27808 8004C408 08013107 */  j         .L8004C41C
/* 2780C 8004C40C A08000A8 */   sb       $zero, 0xa8($a0)
.L8004C410:
/* 27810 8004C410 90A30008 */  lbu       $v1, 8($a1)
/* 27814 8004C414 A0820056 */  sb        $v0, 0x56($a0)
/* 27818 8004C418 A08300A8 */  sb        $v1, 0xa8($a0)
.L8004C41C:
/* 2781C 8004C41C 9082009A */  lbu       $v0, 0x9a($a0)
/* 27820 8004C420 30420010 */  andi      $v0, $v0, 0x10
/* 27824 8004C424 10400003 */  beqz      $v0, .L8004C434
/* 27828 8004C428 24020001 */   addiu    $v0, $zero, 1
/* 2782C 8004C42C 03E00008 */  jr        $ra
/* 27830 8004C430 A48000A4 */   sh       $zero, 0xa4($a0)
.L8004C434:
/* 27834 8004C434 94A30006 */  lhu       $v1, 6($a1)
/* 27838 8004C438 A0820054 */  sb        $v0, 0x54($a0)
/* 2783C 8004C43C 03E00008 */  jr        $ra
/* 27840 8004C440 A48300A4 */   sh       $v1, 0xa4($a0)
