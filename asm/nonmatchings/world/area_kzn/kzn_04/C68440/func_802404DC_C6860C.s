.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802404DC_C6860C
/* C6860C 802404DC 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* C68610 802404E0 AFB5002C */  sw        $s5, 0x2c($sp)
/* C68614 802404E4 0080A82D */  daddu     $s5, $a0, $zero
/* C68618 802404E8 AFBE0038 */  sw        $fp, 0x38($sp)
/* C6861C 802404EC 3C1E8011 */  lui       $fp, %hi(gPlayerData)
/* C68620 802404F0 27DEF290 */  addiu     $fp, $fp, %lo(gPlayerData)
/* C68624 802404F4 AFBF003C */  sw        $ra, 0x3c($sp)
/* C68628 802404F8 AFB70034 */  sw        $s7, 0x34($sp)
/* C6862C 802404FC AFB60030 */  sw        $s6, 0x30($sp)
/* C68630 80240500 AFB40028 */  sw        $s4, 0x28($sp)
/* C68634 80240504 AFB30024 */  sw        $s3, 0x24($sp)
/* C68638 80240508 AFB20020 */  sw        $s2, 0x20($sp)
/* C6863C 8024050C AFB1001C */  sw        $s1, 0x1c($sp)
/* C68640 80240510 10A0004F */  beqz      $a1, .L80240650
/* C68644 80240514 AFB00018 */   sw       $s0, 0x18($sp)
/* C68648 80240518 0C00AB39 */  jal       heap_malloc
/* C6864C 8024051C 24040330 */   addiu    $a0, $zero, 0x330
/* C68650 80240520 0040982D */  daddu     $s3, $v0, $zero
/* C68654 80240524 0000B02D */  daddu     $s6, $zero, $zero
/* C68658 80240528 02C0902D */  daddu     $s2, $s6, $zero
/* C6865C 8024052C 3C148024 */  lui       $s4, 0x8024
/* C68660 80240530 26941C48 */  addiu     $s4, $s4, 0x1c48
/* C68664 80240534 0260882D */  daddu     $s1, $s3, $zero
/* C68668 80240538 8EA200B4 */  lw        $v0, 0xb4($s5)
/* C6866C 8024053C 3C038024 */  lui       $v1, 0x8024
/* C68670 80240540 24631C40 */  addiu     $v1, $v1, 0x1c40
/* C68674 80240544 AEB30078 */  sw        $s3, 0x78($s5)
/* C68678 80240548 00021027 */  nor       $v0, $zero, $v0
/* C6867C 8024054C 0002BFC2 */  srl       $s7, $v0, 0x1f
/* C68680 80240550 00171080 */  sll       $v0, $s7, 2
/* C68684 80240554 00431021 */  addu      $v0, $v0, $v1
/* C68688 80240558 AFA20010 */  sw        $v0, 0x10($sp)
.L8024055C:
/* C6868C 8024055C 86900000 */  lh        $s0, ($s4)
/* C68690 80240560 001010C0 */  sll       $v0, $s0, 3
/* C68694 80240564 03C21021 */  addu      $v0, $fp, $v0
/* C68698 80240568 90420014 */  lbu       $v0, 0x14($v0)
/* C6869C 8024056C 5040002E */  beql      $v0, $zero, .L80240628
/* C686A0 80240570 26520001 */   addiu    $s2, $s2, 1
/* C686A4 80240574 00101100 */  sll       $v0, $s0, 4
/* C686A8 80240578 3C068009 */  lui       $a2, 0x8009
/* C686AC 8024057C 24C6EF20 */  addiu     $a2, $a2, -0x10e0
/* C686B0 80240580 00461021 */  addu      $v0, $v0, $a2
/* C686B4 80240584 0200202D */  daddu     $a0, $s0, $zero
/* C686B8 80240588 AE300108 */  sw        $s0, 0x108($s1)
/* C686BC 8024058C 8C420000 */  lw        $v0, ($v0)
/* C686C0 80240590 02E0282D */  daddu     $a1, $s7, $zero
/* C686C4 80240594 0C0900F9 */  jal       func_802403E4_C68514
/* C686C8 80240598 AE220084 */   sw       $v0, 0x84($s1)
/* C686CC 8024059C 0040202D */  daddu     $a0, $v0, $zero
/* C686D0 802405A0 04800011 */  bltz      $a0, .L802405E8
/* C686D4 802405A4 00101080 */   sll      $v0, $s0, 2
/* C686D8 802405A8 3C06800F */  lui       $a2, 0x800f
/* C686DC 802405AC 24C67F00 */  addiu     $a2, $a2, 0x7f00
/* C686E0 802405B0 00461021 */  addu      $v0, $v0, $a2
/* C686E4 802405B4 8C430000 */  lw        $v1, ($v0)
/* C686E8 802405B8 24020001 */  addiu     $v0, $zero, 1
/* C686EC 802405BC AE22018C */  sw        $v0, 0x18c($s1)
/* C686F0 802405C0 00041080 */  sll       $v0, $a0, 2
/* C686F4 802405C4 3C068024 */  lui       $a2, 0x8024
/* C686F8 802405C8 24C61C58 */  addiu     $a2, $a2, 0x1c58
/* C686FC 802405CC AE230000 */  sw        $v1, ($s1)
/* C68700 802405D0 001218C0 */  sll       $v1, $s2, 3
/* C68704 802405D4 00431021 */  addu      $v0, $v0, $v1
/* C68708 802405D8 00461021 */  addu      $v0, $v0, $a2
/* C6870C 802405DC 8C420000 */  lw        $v0, ($v0)
/* C68710 802405E0 08090183 */  j         .L8024060C
/* C68714 802405E4 AE220294 */   sw       $v0, 0x294($s1)
.L802405E8:
/* C68718 802405E8 3C06800F */  lui       $a2, 0x800f
/* C6871C 802405EC 24C67F40 */  addiu     $a2, $a2, 0x7f40
/* C68720 802405F0 00461021 */  addu      $v0, $v0, $a2
/* C68724 802405F4 8C420000 */  lw        $v0, ($v0)
/* C68728 802405F8 AE20018C */  sw        $zero, 0x18c($s1)
/* C6872C 802405FC AE220000 */  sw        $v0, ($s1)
/* C68730 80240600 8FA60010 */  lw        $a2, 0x10($sp)
/* C68734 80240604 8CC20000 */  lw        $v0, ($a2)
/* C68738 80240608 AE220294 */  sw        $v0, 0x294($s1)
.L8024060C:
/* C6873C 8024060C 001010C0 */  sll       $v0, $s0, 3
/* C68740 80240610 03C21021 */  addu      $v0, $fp, $v0
/* C68744 80240614 80420015 */  lb        $v0, 0x15($v0)
/* C68748 80240618 26D60001 */  addiu     $s6, $s6, 1
/* C6874C 8024061C AE220210 */  sw        $v0, 0x210($s1)
/* C68750 80240620 26310004 */  addiu     $s1, $s1, 4
/* C68754 80240624 26520001 */  addiu     $s2, $s2, 1
.L80240628:
/* C68758 80240628 2A420008 */  slti      $v0, $s2, 8
/* C6875C 8024062C 1440FFCB */  bnez      $v0, .L8024055C
/* C68760 80240630 26940002 */   addiu    $s4, $s4, 2
/* C68764 80240634 0260202D */  daddu     $a0, $s3, $zero
/* C68768 80240638 24020004 */  addiu     $v0, $zero, 4
/* C6876C 8024063C AC820318 */  sw        $v0, 0x318($a0)
/* C68770 80240640 AC960324 */  sw        $s6, 0x324($a0)
/* C68774 80240644 0C03D390 */  jal       func_800F4E40
/* C68778 80240648 AC800328 */   sw       $zero, 0x328($a0)
/* C6877C 8024064C AEA00070 */  sw        $zero, 0x70($s5)
.L80240650:
/* C68780 80240650 8EA20070 */  lw        $v0, 0x70($s5)
/* C68784 80240654 8EB30078 */  lw        $s3, 0x78($s5)
/* C68788 80240658 14400008 */  bnez      $v0, .L8024067C
/* C6878C 8024065C 24420001 */   addiu    $v0, $v0, 1
/* C68790 80240660 8662032C */  lh        $v0, 0x32c($s3)
/* C68794 80240664 10400009 */  beqz      $v0, .L8024068C
/* C68798 80240668 AEA20074 */   sw       $v0, 0x74($s5)
/* C6879C 8024066C 0C03C4EC */  jal       func_800F13B0
/* C687A0 80240670 00000000 */   nop      
/* C687A4 80240674 8EA20070 */  lw        $v0, 0x70($s5)
/* C687A8 80240678 24420001 */  addiu     $v0, $v0, 1
.L8024067C:
/* C687AC 8024067C AEA20070 */  sw        $v0, 0x70($s5)
/* C687B0 80240680 2842000F */  slti      $v0, $v0, 0xf
/* C687B4 80240684 10400003 */  beqz      $v0, .L80240694
/* C687B8 80240688 00000000 */   nop      
.L8024068C:
/* C687BC 8024068C 080901BF */  j         .L802406FC
/* C687C0 80240690 0000102D */   daddu    $v0, $zero, $zero
.L80240694:
/* C687C4 80240694 0C03C54E */  jal       func_800F1538
/* C687C8 80240698 00000000 */   nop      
/* C687CC 8024069C 8EA30074 */  lw        $v1, 0x74($s5)
/* C687D0 802406A0 240200FF */  addiu     $v0, $zero, 0xff
/* C687D4 802406A4 10620010 */  beq       $v1, $v0, .L802406E8
/* C687D8 802406A8 2462FFFF */   addiu    $v0, $v1, -1
/* C687DC 802406AC 00021080 */  sll       $v0, $v0, 2
/* C687E0 802406B0 02621021 */  addu      $v0, $s3, $v0
/* C687E4 802406B4 8C420108 */  lw        $v0, 0x108($v0)
/* C687E8 802406B8 00021100 */  sll       $v0, $v0, 4
/* C687EC 802406BC 3C038009 */  lui       $v1, 0x8009
/* C687F0 802406C0 00621821 */  addu      $v1, $v1, $v0
/* C687F4 802406C4 8C63EF20 */  lw        $v1, -0x10e0($v1)
/* C687F8 802406C8 8EA20074 */  lw        $v0, 0x74($s5)
/* C687FC 802406CC 2442FFFF */  addiu     $v0, $v0, -1
/* C68800 802406D0 00021080 */  sll       $v0, $v0, 2
/* C68804 802406D4 02621021 */  addu      $v0, $s3, $v0
/* C68808 802406D8 AEA30084 */  sw        $v1, 0x84($s5)
/* C6880C 802406DC 8C420108 */  lw        $v0, 0x108($v0)
/* C68810 802406E0 080901BC */  j         .L802406F0
/* C68814 802406E4 AEA20088 */   sw       $v0, 0x88($s5)
.L802406E8:
/* C68818 802406E8 2402FFFF */  addiu     $v0, $zero, -1
/* C6881C 802406EC AEA20084 */  sw        $v0, 0x84($s5)
.L802406F0:
/* C68820 802406F0 0C00AB4B */  jal       heap_free
/* C68824 802406F4 8EA40078 */   lw       $a0, 0x78($s5)
/* C68828 802406F8 24020002 */  addiu     $v0, $zero, 2
.L802406FC:
/* C6882C 802406FC 8FBF003C */  lw        $ra, 0x3c($sp)
/* C68830 80240700 8FBE0038 */  lw        $fp, 0x38($sp)
/* C68834 80240704 8FB70034 */  lw        $s7, 0x34($sp)
/* C68838 80240708 8FB60030 */  lw        $s6, 0x30($sp)
/* C6883C 8024070C 8FB5002C */  lw        $s5, 0x2c($sp)
/* C68840 80240710 8FB40028 */  lw        $s4, 0x28($sp)
/* C68844 80240714 8FB30024 */  lw        $s3, 0x24($sp)
/* C68848 80240718 8FB20020 */  lw        $s2, 0x20($sp)
/* C6884C 8024071C 8FB1001C */  lw        $s1, 0x1c($sp)
/* C68850 80240720 8FB00018 */  lw        $s0, 0x18($sp)
/* C68854 80240724 03E00008 */  jr        $ra
/* C68858 80240728 27BD0040 */   addiu    $sp, $sp, 0x40
