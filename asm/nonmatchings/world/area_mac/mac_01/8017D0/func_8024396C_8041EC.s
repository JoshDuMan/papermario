.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024396C_8041EC
/* 8041EC 8024396C 3C058011 */  lui       $a1, %hi(gPlayerData)
/* 8041F0 80243970 24A5F290 */  addiu     $a1, $a1, %lo(gPlayerData)
/* 8041F4 80243974 AC800088 */  sw        $zero, 0x88($a0)
/* 8041F8 80243978 80A30003 */  lb        $v1, 3($a1)
/* 8041FC 8024397C 80A20002 */  lb        $v0, 2($a1)
/* 804200 80243980 1462000B */  bne       $v1, $v0, .L802439B0
/* 804204 80243984 00A0302D */   daddu    $a2, $a1, $zero
/* 804208 80243988 80A30006 */  lb        $v1, 6($a1)
/* 80420C 8024398C 80A20005 */  lb        $v0, 5($a1)
/* 804210 80243990 14620007 */  bne       $v1, $v0, .L802439B0
/* 804214 80243994 00000000 */   nop      
/* 804218 80243998 80C2028E */  lb        $v0, 0x28e($a2)
/* 80421C 8024399C 84C30290 */  lh        $v1, 0x290($a2)
/* 804220 802439A0 00021200 */  sll       $v0, $v0, 8
/* 804224 802439A4 14620004 */  bne       $v1, $v0, .L802439B8
/* 804228 802439A8 24020001 */   addiu    $v0, $zero, 1
/* 80422C 802439AC AC820088 */  sw        $v0, 0x88($a0)
.L802439B0:
/* 804230 802439B0 03E00008 */  jr        $ra
/* 804234 802439B4 24020002 */   addiu    $v0, $zero, 2
.L802439B8:
/* 804238 802439B8 03E00008 */  jr        $ra
/* 80423C 802439BC 24020002 */   addiu    $v0, $zero, 2
