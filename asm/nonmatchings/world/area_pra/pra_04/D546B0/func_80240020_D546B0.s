.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240020_D546B0
/* D546B0 80240020 3C038011 */  lui       $v1, %hi(gPlayerStatus)
/* D546B4 80240024 2463EFC8 */  addiu     $v1, $v1, %lo(gPlayerStatus)
/* D546B8 80240028 C4620080 */  lwc1      $f2, 0x80($v1)
/* D546BC 8024002C 44800000 */  mtc1      $zero, $f0
/* D546C0 80240030 00000000 */  nop       
/* D546C4 80240034 4602003E */  c.le.s    $f0, $f2
/* D546C8 80240038 00000000 */  nop       
/* D546CC 8024003C 4500000A */  bc1f      .L80240068
/* D546D0 80240040 00000000 */   nop      
/* D546D4 80240044 3C014334 */  lui       $at, 0x4334
/* D546D8 80240048 44810000 */  mtc1      $at, $f0
/* D546DC 8024004C 00000000 */  nop       
/* D546E0 80240050 4600103C */  c.lt.s    $f2, $f0
/* D546E4 80240054 00000000 */  nop       
/* D546E8 80240058 45000006 */  bc1f      .L80240074
/* D546EC 8024005C 24020096 */   addiu    $v0, $zero, 0x96
/* D546F0 80240060 AC820084 */  sw        $v0, 0x84($a0)
/* D546F4 80240064 C4620080 */  lwc1      $f2, 0x80($v1)
.L80240068:
/* D546F8 80240068 3C014334 */  lui       $at, 0x4334
/* D546FC 8024006C 44810000 */  mtc1      $at, $f0
/* D54700 80240070 00000000 */  nop       
.L80240074:
/* D54704 80240074 4602003E */  c.le.s    $f0, $f2
/* D54708 80240078 00000000 */  nop       
/* D5470C 8024007C 45000009 */  bc1f      .L802400A4
/* D54710 80240080 00000000 */   nop      
/* D54714 80240084 3C0143B4 */  lui       $at, 0x43b4
/* D54718 80240088 44810000 */  mtc1      $at, $f0
/* D5471C 8024008C 00000000 */  nop       
/* D54720 80240090 4600103C */  c.lt.s    $f2, $f0
/* D54724 80240094 00000000 */  nop       
/* D54728 80240098 45000002 */  bc1f      .L802400A4
/* D5472C 8024009C 2402005F */   addiu    $v0, $zero, 0x5f
/* D54730 802400A0 AC820084 */  sw        $v0, 0x84($a0)
.L802400A4:
/* D54734 802400A4 03E00008 */  jr        $ra
/* D54738 802400A8 24020002 */   addiu    $v0, $zero, 2
