.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8004E168
/* 29568 8004E168 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 2956C 8004E16C AFB00010 */  sw        $s0, 0x10($sp)
/* 29570 8004E170 0080802D */  daddu     $s0, $a0, $zero
/* 29574 8004E174 AFB10014 */  sw        $s1, 0x14($sp)
/* 29578 8004E178 24110001 */  addiu     $s1, $zero, 1
/* 2957C 8004E17C AFB20018 */  sw        $s2, 0x18($sp)
/* 29580 8004E180 0000902D */  daddu     $s2, $zero, $zero
/* 29584 8004E184 AFB40020 */  sw        $s4, 0x20($sp)
/* 29588 8004E188 3C14800A */  lui       $s4, %hi(D_800988A0)
/* 2958C 8004E18C 269488A0 */  addiu     $s4, $s4, %lo(D_800988A0)
/* 29590 8004E190 AFB3001C */  sw        $s3, 0x1c($sp)
/* 29594 8004E194 24130001 */  addiu     $s3, $zero, 1
/* 29598 8004E198 AFBF0024 */  sw        $ra, 0x24($sp)
/* 2959C 8004E19C 96020052 */  lhu       $v0, 0x52($s0)
/* 295A0 8004E1A0 9603001A */  lhu       $v1, 0x1a($s0)
/* 295A4 8004E1A4 8E040018 */  lw        $a0, 0x18($s0)
/* 295A8 8004E1A8 00431021 */  addu      $v0, $v0, $v1
/* 295AC 8004E1AC 96030016 */  lhu       $v1, 0x16($s0)
/* 295B0 8004E1B0 00042100 */  sll       $a0, $a0, 4
/* 295B4 8004E1B4 00431021 */  addu      $v0, $v0, $v1
/* 295B8 8004E1B8 96030056 */  lhu       $v1, 0x56($s0)
/* 295BC 8004E1BC 3084FFFF */  andi      $a0, $a0, 0xffff
/* 295C0 8004E1C0 AE020050 */  sw        $v0, 0x50($s0)
/* 295C4 8004E1C4 8E020014 */  lw        $v0, 0x14($s0)
/* 295C8 8004E1C8 00641821 */  addu      $v1, $v1, $a0
/* 295CC 8004E1CC 00021103 */  sra       $v0, $v0, 4
/* 295D0 8004E1D0 3042FFFF */  andi      $v0, $v0, 0xffff
/* 295D4 8004E1D4 00621821 */  addu      $v1, $v1, $v0
/* 295D8 8004E1D8 AE030054 */  sw        $v1, 0x54($s0)
.L8004E1DC:
/* 295DC 8004E1DC 92030221 */  lbu       $v1, 0x221($s0)
/* 295E0 8004E1E0 2C620005 */  sltiu     $v0, $v1, 5
/* 295E4 8004E1E4 1040001B */  beqz      $v0, .L8004E254
/* 295E8 8004E1E8 00031080 */   sll      $v0, $v1, 2
/* 295EC 8004E1EC 00541021 */  addu      $v0, $v0, $s4
/* 295F0 8004E1F0 8C420000 */  lw        $v0, ($v0)
/* 295F4 8004E1F4 00400008 */  jr        $v0
/* 295F8 8004E1F8 00000000 */   nop
/* 295FC 8004E1FC 92020220 */  lbu       $v0, 0x220($s0)
/* 29600 8004E200 54400016 */  bnel      $v0, $zero, .L8004E25C
/* 29604 8004E204 0000882D */   daddu    $s1, $zero, $zero
/* 29608 8004E208 0C013A46 */  jal       func_8004E918
/* 2960C 8004E20C 0200202D */   daddu    $a0, $s0, $zero
/* 29610 8004E210 92020221 */  lbu       $v0, 0x221($s0)
/* 29614 8004E214 14530012 */  bne       $v0, $s3, .L8004E260
/* 29618 8004E218 3222FFFF */   andi     $v0, $s1, 0xffff
/* 2961C 8004E21C 08013897 */  j         .L8004E25C
/* 29620 8004E220 0000882D */   daddu    $s1, $zero, $zero
/* 29624 8004E224 0C01396D */  jal       func_8004E5B4
/* 29628 8004E228 0200202D */   daddu    $a0, $s0, $zero
/* 2962C 8004E22C 08013898 */  j         .L8004E260
/* 29630 8004E230 3222FFFF */   andi     $v0, $s1, 0xffff
/* 29634 8004E234 0C0138A2 */  jal       func_8004E288
/* 29638 8004E238 0200202D */   daddu    $a0, $s0, $zero
/* 2963C 8004E23C 08013897 */  j         .L8004E25C
/* 29640 8004E240 0000882D */   daddu    $s1, $zero, $zero
/* 29644 8004E244 0C013A2D */  jal       func_8004E8B4
/* 29648 8004E248 0200202D */   daddu    $a0, $s0, $zero
/* 2964C 8004E24C 08013898 */  j         .L8004E260
/* 29650 8004E250 3222FFFF */   andi     $v0, $s1, 0xffff
.L8004E254:
/* 29654 8004E254 24120001 */  addiu     $s2, $zero, 1
/* 29658 8004E258 0000882D */  daddu     $s1, $zero, $zero
.L8004E25C:
/* 2965C 8004E25C 3222FFFF */  andi      $v0, $s1, 0xffff
.L8004E260:
/* 29660 8004E260 1440FFDE */  bnez      $v0, .L8004E1DC
/* 29664 8004E264 0240102D */   daddu    $v0, $s2, $zero
/* 29668 8004E268 8FBF0024 */  lw        $ra, 0x24($sp)
/* 2966C 8004E26C 8FB40020 */  lw        $s4, 0x20($sp)
/* 29670 8004E270 8FB3001C */  lw        $s3, 0x1c($sp)
/* 29674 8004E274 8FB20018 */  lw        $s2, 0x18($sp)
/* 29678 8004E278 8FB10014 */  lw        $s1, 0x14($sp)
/* 2967C 8004E27C 8FB00010 */  lw        $s0, 0x10($sp)
/* 29680 8004E280 03E00008 */  jr        $ra
/* 29684 8004E284 27BD0028 */   addiu    $sp, $sp, 0x28
