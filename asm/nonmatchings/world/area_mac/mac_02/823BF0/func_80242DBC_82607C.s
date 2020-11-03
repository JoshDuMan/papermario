.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80242DBC_82607C
/* 82607C 80242DBC 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 826080 80242DC0 AFB10014 */  sw        $s1, 0x14($sp)
/* 826084 80242DC4 0080882D */  daddu     $s1, $a0, $zero
/* 826088 80242DC8 AFBF0020 */  sw        $ra, 0x20($sp)
/* 82608C 80242DCC AFB3001C */  sw        $s3, 0x1c($sp)
/* 826090 80242DD0 AFB20018 */  sw        $s2, 0x18($sp)
/* 826094 80242DD4 AFB00010 */  sw        $s0, 0x10($sp)
/* 826098 80242DD8 8E30000C */  lw        $s0, 0xc($s1)
/* 82609C 80242DDC 8E120000 */  lw        $s2, ($s0)
/* 8260A0 80242DE0 26100004 */  addiu     $s0, $s0, 4
/* 8260A4 80242DE4 8E130000 */  lw        $s3, ($s0)
/* 8260A8 80242DE8 26100004 */  addiu     $s0, $s0, 4
/* 8260AC 80242DEC 8E050000 */  lw        $a1, ($s0)
/* 8260B0 80242DF0 0C0B1EAF */  jal       get_variable
/* 8260B4 80242DF4 26100004 */   addiu    $s0, $s0, 4
/* 8260B8 80242DF8 0220202D */  daddu     $a0, $s1, $zero
/* 8260BC 80242DFC 8E050000 */  lw        $a1, ($s0)
/* 8260C0 80242E00 0C0B1EAF */  jal       get_variable
/* 8260C4 80242E04 0040802D */   daddu    $s0, $v0, $zero
/* 8260C8 80242E08 0040302D */  daddu     $a2, $v0, $zero
/* 8260CC 80242E0C 0000282D */  daddu     $a1, $zero, $zero
/* 8260D0 80242E10 3C038025 */  lui       $v1, 0x8025
/* 8260D4 80242E14 24638A98 */  addiu     $v1, $v1, -0x7568
.L80242E18:
/* 8260D8 80242E18 8C620000 */  lw        $v0, ($v1)
/* 8260DC 80242E1C 10500006 */  beq       $v0, $s0, .L80242E38
/* 8260E0 80242E20 0000202D */   daddu    $a0, $zero, $zero
/* 8260E4 80242E24 24A50001 */  addiu     $a1, $a1, 1
/* 8260E8 80242E28 28A2001D */  slti      $v0, $a1, 0x1d
/* 8260EC 80242E2C 1440FFFA */  bnez      $v0, .L80242E18
/* 8260F0 80242E30 24630004 */   addiu    $v1, $v1, 4
/* 8260F4 80242E34 0000202D */  daddu     $a0, $zero, $zero
.L80242E38:
/* 8260F8 80242E38 3C038025 */  lui       $v1, 0x8025
/* 8260FC 80242E3C 24638A98 */  addiu     $v1, $v1, -0x7568
.L80242E40:
/* 826100 80242E40 8C620000 */  lw        $v0, ($v1)
/* 826104 80242E44 10460006 */  beq       $v0, $a2, .L80242E60
/* 826108 80242E48 28A2001D */   slti     $v0, $a1, 0x1d
/* 82610C 80242E4C 24840001 */  addiu     $a0, $a0, 1
/* 826110 80242E50 2882001D */  slti      $v0, $a0, 0x1d
/* 826114 80242E54 1440FFFA */  bnez      $v0, .L80242E40
/* 826118 80242E58 24630004 */   addiu    $v1, $v1, 4
/* 82611C 80242E5C 28A2001D */  slti      $v0, $a1, 0x1d
.L80242E60:
/* 826120 80242E60 10400013 */  beqz      $v0, .L80242EB0
/* 826124 80242E64 0000182D */   daddu    $v1, $zero, $zero
/* 826128 80242E68 2882001D */  slti      $v0, $a0, 0x1d
/* 82612C 80242E6C 10400010 */  beqz      $v0, .L80242EB0
/* 826130 80242E70 00A4102A */   slt      $v0, $a1, $a0
/* 826134 80242E74 10400006 */  beqz      $v0, .L80242E90
/* 826138 80242E78 000510C0 */   sll      $v0, $a1, 3
/* 82613C 80242E7C 00451023 */  subu      $v0, $v0, $a1
/* 826140 80242E80 00021080 */  sll       $v0, $v0, 2
/* 826144 80242E84 00451021 */  addu      $v0, $v0, $a1
/* 826148 80242E88 08090BA9 */  j         .L80242EA4
/* 82614C 80242E8C 00821021 */   addu     $v0, $a0, $v0
.L80242E90:
/* 826150 80242E90 000410C0 */  sll       $v0, $a0, 3
/* 826154 80242E94 00441023 */  subu      $v0, $v0, $a0
/* 826158 80242E98 00021080 */  sll       $v0, $v0, 2
/* 82615C 80242E9C 00441021 */  addu      $v0, $v0, $a0
/* 826160 80242EA0 00A21021 */  addu      $v0, $a1, $v0
.L80242EA4:
/* 826164 80242EA4 3C038025 */  lui       $v1, 0x8025
/* 826168 80242EA8 00621821 */  addu      $v1, $v1, $v0
/* 82616C 80242EAC 80638CF0 */  lb        $v1, -0x7310($v1)
.L80242EB0:
/* 826170 80242EB0 04620001 */  bltzl     $v1, .L80242EB8
/* 826174 80242EB4 0000182D */   daddu    $v1, $zero, $zero
.L80242EB8:
/* 826178 80242EB8 14600015 */  bnez      $v1, .L80242F10
/* 82617C 80242EBC 0220202D */   daddu    $a0, $s1, $zero
/* 826180 80242EC0 3C048025 */  lui       $a0, 0x8025
/* 826184 80242EC4 2484903C */  addiu     $a0, $a0, -0x6fc4
/* 826188 80242EC8 24870060 */  addiu     $a3, $a0, 0x60
.L80242ECC:
/* 82618C 80242ECC 8C850000 */  lw        $a1, ($a0)
/* 826190 80242ED0 14B00004 */  bne       $a1, $s0, .L80242EE4
/* 826194 80242ED4 00000000 */   nop      
/* 826198 80242ED8 8C820004 */  lw        $v0, 4($a0)
/* 82619C 80242EDC 10460006 */  beq       $v0, $a2, .L80242EF8
/* 8261A0 80242EE0 00000000 */   nop      
.L80242EE4:
/* 8261A4 80242EE4 54A60006 */  bnel      $a1, $a2, .L80242F00
/* 8261A8 80242EE8 2484000C */   addiu    $a0, $a0, 0xc
/* 8261AC 80242EEC 8C820004 */  lw        $v0, 4($a0)
/* 8261B0 80242EF0 54500003 */  bnel      $v0, $s0, .L80242F00
/* 8261B4 80242EF4 2484000C */   addiu    $a0, $a0, 0xc
.L80242EF8:
/* 8261B8 80242EF8 8C830008 */  lw        $v1, 8($a0)
/* 8261BC 80242EFC 2484000C */  addiu     $a0, $a0, 0xc
.L80242F00:
/* 8261C0 80242F00 0087102A */  slt       $v0, $a0, $a3
/* 8261C4 80242F04 1440FFF1 */  bnez      $v0, .L80242ECC
/* 8261C8 80242F08 00000000 */   nop      
/* 8261CC 80242F0C 0220202D */  daddu     $a0, $s1, $zero
.L80242F10:
/* 8261D0 80242F10 3C028025 */  lui       $v0, 0x8025
/* 8261D4 80242F14 24428B10 */  addiu     $v0, $v0, -0x74f0
/* 8261D8 80242F18 000318C0 */  sll       $v1, $v1, 3
/* 8261DC 80242F1C 00621821 */  addu      $v1, $v1, $v0
/* 8261E0 80242F20 8C660004 */  lw        $a2, 4($v1)
/* 8261E4 80242F24 8C700000 */  lw        $s0, ($v1)
/* 8261E8 80242F28 0C0B2026 */  jal       set_variable
/* 8261EC 80242F2C 0240282D */   daddu    $a1, $s2, $zero
/* 8261F0 80242F30 0220202D */  daddu     $a0, $s1, $zero
/* 8261F4 80242F34 0260282D */  daddu     $a1, $s3, $zero
/* 8261F8 80242F38 0C0B2026 */  jal       set_variable
/* 8261FC 80242F3C 0200302D */   daddu    $a2, $s0, $zero
/* 826200 80242F40 8FBF0020 */  lw        $ra, 0x20($sp)
/* 826204 80242F44 8FB3001C */  lw        $s3, 0x1c($sp)
/* 826208 80242F48 8FB20018 */  lw        $s2, 0x18($sp)
/* 82620C 80242F4C 8FB10014 */  lw        $s1, 0x14($sp)
/* 826210 80242F50 8FB00010 */  lw        $s0, 0x10($sp)
/* 826214 80242F54 24020002 */  addiu     $v0, $zero, 2
/* 826218 80242F58 03E00008 */  jr        $ra
/* 82621C 80242F5C 27BD0028 */   addiu    $sp, $sp, 0x28
