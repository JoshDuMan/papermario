.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80266E40
/* 195720 80266E40 8C8401F4 */  lw        $a0, 0x1f4($a0)
/* 195724 80266E44 10800016 */  beqz      $a0, .L80266EA0
/* 195728 80266E48 3C060010 */   lui      $a2, 0x10
/* 19572C 80266E4C 34C60001 */  ori       $a2, $a2, 1
/* 195730 80266E50 2408000E */  addiu     $t0, $zero, 0xe
/* 195734 80266E54 2407000F */  addiu     $a3, $zero, 0xf
.L80266E58:
/* 195738 80266E58 8C8500C0 */  lw        $a1, 0xc0($a0)
/* 19573C 80266E5C 8C830000 */  lw        $v1, ($a0)
/* 195740 80266E60 00661024 */  and       $v0, $v1, $a2
/* 195744 80266E64 1440000B */  bnez      $v0, .L80266E94
/* 195748 80266E68 00000000 */   nop
/* 19574C 80266E6C 8C820094 */  lw        $v0, 0x94($a0)
/* 195750 80266E70 10400008 */  beqz      $v0, .L80266E94
/* 195754 80266E74 30620002 */   andi     $v0, $v1, 2
/* 195758 80266E78 14400006 */  bnez      $v0, .L80266E94
/* 19575C 80266E7C 00000000 */   nop
/* 195760 80266E80 80A206C0 */  lb        $v0, 0x6c0($a1)
/* 195764 80266E84 10480003 */  beq       $v0, $t0, .L80266E94
/* 195768 80266E88 00000000 */   nop
/* 19576C 80266E8C 54470001 */  bnel      $v0, $a3, .L80266E94
/* 195770 80266E90 A0A006C0 */   sb       $zero, 0x6c0($a1)
.L80266E94:
/* 195774 80266E94 8C84000C */  lw        $a0, 0xc($a0)
/* 195778 80266E98 1480FFEF */  bnez      $a0, .L80266E58
/* 19577C 80266E9C 00000000 */   nop
.L80266EA0:
/* 195780 80266EA0 03E00008 */  jr        $ra
/* 195784 80266EA4 00000000 */   nop
