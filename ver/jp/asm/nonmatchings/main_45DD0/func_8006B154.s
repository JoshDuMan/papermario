.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8006B154
/* 46554 8006B154 0080C821 */  addu      $t9, $a0, $zero
/* 46558 8006B158 8C980000 */  lw        $t8, ($a0)
/* 4655C 8006B15C 8CAF0004 */  lw        $t7, 4($a1)
/* 46560 8006B160 8F0E0004 */  lw        $t6, 4($t8)
/* 46564 8006B164 01CF082A */  slt       $at, $t6, $t7
/* 46568 8006B168 14200007 */  bnez      $at, .L8006B188
/* 4656C 8006B16C 00000000 */   nop
.L8006B170:
/* 46570 8006B170 0300C821 */  addu      $t9, $t8, $zero
/* 46574 8006B174 8F180000 */  lw        $t8, ($t8)
/* 46578 8006B178 8F0E0004 */  lw        $t6, 4($t8)
/* 4657C 8006B17C 01CF082A */  slt       $at, $t6, $t7
/* 46580 8006B180 1020FFFB */  beqz      $at, .L8006B170
/* 46584 8006B184 00000000 */   nop
.L8006B188:
/* 46588 8006B188 8F380000 */  lw        $t8, ($t9)
/* 4658C 8006B18C ACB80000 */  sw        $t8, ($a1)
/* 46590 8006B190 AF250000 */  sw        $a1, ($t9)
/* 46594 8006B194 03E00008 */  jr        $ra
/* 46598 8006B198 ACA40008 */   sw       $a0, 8($a1)
