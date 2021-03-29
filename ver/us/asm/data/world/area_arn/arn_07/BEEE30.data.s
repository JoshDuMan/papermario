.include "macro.inc"

.section .data

glabel D_80242040_BEEE30
.word 0x0000001F, 0x00000000, 0x00000043, 0x00000003, FadeOutMusic, 0x00000000, 0x000003E8, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0x00000091, 0x00000041, 0x00000000, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A7CE7, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x00000091, 0x0000001E, 0x00000000, 0x00000043, 0x00000003, GetCamDistance, 0x00000000, 0xFE363C81, 0x00000028, 0x00000002, 0xFE363C81, 0x00000064, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xFE363C81, 0x0000000B, 0x00000002, 0x00002710, 0x00002710, 0x00000043, 0x00000004, GetCamPitch, 0x00000000, 0xFE363C82, 0xFE363C83, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xFE363C82, 0x00002710, 0x00000013, 0x00000000, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x0000000B, func_8024004C_BECE3C, 0x00000002, 0x00000032, 0x00000064, 0x0000001F, 0xFFFFFFFA, 0x00000091, 0x00000041, 0x00000000, 0x0000001E, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000001, func_802401AC_BECF9C, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, PlaySound, 0x80000067, 0x00000043, 0x00000001, func_80240000_BECDF0, 0x00000043, 0x00000002, StopSound, 0x80000067, 0x00000043, 0x00000006, PlaySoundAt, 0x000000B2, 0x00000000, 0x00000091, 0x00000041, 0x00000000, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000000C, 0x00000043, 0x00000002, SetPlayerAnimation, 0x0001002A, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000032, 0x00000008, 0x00000001, 0x00000073, 0x00000043, 0x00000006, PlaySoundAt, 0x00000137, 0x00000000, 0x00000091, 0x00000041, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000002, func_802405BC_BED3AC, 0x00000001, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000050, 0x00000043, 0x00000002, SetPlayerAnimation, 0x00010002, 0x00000057, 0x00000000, 0x00000027, 0x00000002, 0xFE363C81, 0x00000064, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xFE363C81, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x00000091, 0x00000000, 0x00000000, 0x00000043, 0x00000002, func_802405BC_BED3AC, 0x00000002, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C82, 0xFE363C83, 0xFE363C84, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFE363C82, 0xFE363C83, 0xFE363C84, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A7E80, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFE363C82, 0xFE363C83, 0xFE363C84, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000012, 0x00000000, 0x00000043, 0x00000006, func_802405FC_BED3EC, 0x00000002, 0x00000091, 0x0000001E, 0x00000000, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000001, func_80240708_BED4F8, 0x00000057, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000013, 0x00000000, 0x00000043, 0x00000002, func_802405BC_BED3AC, 0x00000003, 0x00000043, 0x00000003, PlaySoundAtPlayer, 0x00000138, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xF5DE0180, 0xFFFFFFF1, 0x00000043, 0x00000004, GotoMapSpecial, 0x80247914, 0x00000002, 0x0000000E, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0x00000091, 0x00000041, 0x00000000, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A7CE7, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x00000091, 0x0000001E, 0x00000000, 0x00000043, 0x00000003, GetCamDistance, 0x00000000, 0xFE363C81, 0x00000028, 0x00000002, 0xFE363C81, 0x00000064, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xFE363C81, 0x0000000B, 0x00000002, 0x00002710, 0x00002710, 0x00000043, 0x00000004, GetCamPitch, 0x00000000, 0xFE363C82, 0xFE363C83, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xFE363C82, 0x00002710, 0x00000013, 0x00000000, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x0000000B, func_8024004C_BECE3C, 0x00000002, 0x00000032, 0x00000064, 0x0000001F, 0xFFFFFFFA, 0x00000091, 0x00000041, 0x00000000, 0x0000001E, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000001, func_802401AC_BECF9C, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, PlaySound, 0x80000067, 0x00000043, 0x00000001, func_80240000_BECDF0, 0x00000043, 0x00000002, StopSound, 0x80000067, 0x00000043, 0x00000006, PlaySoundAt, 0x000000B2, 0x00000000, 0x00000091, 0x00000041, 0x00000000, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000000C, 0x00000043, 0x00000002, SetPlayerAnimation, 0x0001002A, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000032, 0x00000008, 0x00000001, 0x00000073, 0x00000043, 0x00000006, PlaySoundAt, 0x00000137, 0x00000000, 0x00000091, 0x00000041, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000002, func_802405BC_BED3AC, 0x00000001, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000050, 0x00000043, 0x00000002, SetPlayerAnimation, 0x00010002, 0x00000057, 0x00000000, 0x00000027, 0x00000002, 0xFE363C81, 0x00000064, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xFE363C81, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x00000091, 0x00000000, 0x00000000, 0x00000043, 0x00000002, func_802405BC_BED3AC, 0x00000002, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C82, 0xFE363C83, 0xFE363C84, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFE363C82, 0xFE363C83, 0xFE363C84, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A7E80, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFE363C82, 0xFE363C83, 0xFE363C84, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000012, 0x00000000, 0x00000043, 0x00000006, func_802405FC_BED3EC, 0x00000002, 0x00000091, 0x0000001E, 0x00000000, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000001, func_80240708_BED4F8, 0x00000057, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000013, 0x00000000, 0x00000043, 0x00000002, func_802405BC_BED3AC, 0x00000003, 0x00000043, 0x00000003, PlaySoundAtPlayer, 0x00000138, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xF5DE0180, 0xFFFFFFF1, 0x00000043, 0x00000004, GotoMapSpecial, 0x80247914, 0x00000002, 0x0000000E, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x0000000A, 0x00000024, 0x00000002, 0xFE363C82, 0x0000001D, 0x00000024, 0x00000002, 0xFE363C83, 0x00000001, 0x00000044, 0x00000001, ExitSingleDoor, 0x00000008, 0x00000001, 0x00000011, 0x00000043, 0x00000003, GotoMap, 0x8024791C, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000001, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80247924, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000002, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x8024792C, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000002, DisablePartnerAI, 0x00000000, 0x00000043, 0x00000004, SetPlayerPos, 0xFFFFFFE4, 0x00000000, 0xFFFFFEB3, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFC, 0xFFFFFFE4, 0x00000000, 0xFFFFFEB3, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000004, SetCamType, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24ADE80, 0xF24A6A80, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0x0000044C, 0x00000043, 0x00000004, SetCamPosA, 0x00000000, 0x000001F4, 0x00000000, 0x00000043, 0x00000004, SetCamPosB, 0x00000000, 0x00000000, 0xFFFFFE0C, 0x00000043, 0x00000004, SetCamPosC, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x00000005, 0x00000000, 0xFFFFFF6D, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000006, RotateModel, 0x0000001D, 0x00000050, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000000, 0x000020C8, 0x00000000, 0x00000043, 0x00000003, SetNpcJumpscale, 0x00000000, 0xF24A8480, 0x00000043, 0x00000006, NpcJump0, 0x00000000, 0x00000000, 0x00000014, 0xFFFFFF88, 0x00000008, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000000, 0x000020C8, 0x00000000, 0x00000043, 0x00000006, NpcJump0, 0x00000000, 0x00000000, 0x0000000A, 0xFFFFFFC4, 0x0000000C, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000000, 0x000020C8, 0x00000000, 0x00000043, 0x00000006, NpcJump0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x0000000C, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000004, SetNpcVar, 0x00000000, 0x00000000, 0x00000000, 0x00000056, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000000, 0x000020C8, 0x00000000, 0x00000043, 0x00000006, NpcJump0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x0000000A, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000004, GetNpcVar, 0x00000000, 0x00000000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000001, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000004, SetNpcVar, 0x00000000, 0x00000000, 0x00000002, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000050, 0x00000000, 0x0000000A, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateModel, 0x0000001D, 0xFE363C80, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtCollider, 0x0000000A, 0x000001C2, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000004, NpcFaceNpc, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000000, 0x006C000A, 0x006C0001, 0x00000005, 0x000E00C7, 0x00000043, 0x00000004, SetNpcVar, 0x00000000, 0x00000000, 0x00000001, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000004, GetNpcVar, 0x00000000, 0x00000000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000002, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000000, 0x000020C8, 0x00000000, 0x00000043, 0x00000006, NpcJump0, 0x00000000, 0x0000004B, 0x00000000, 0x0000000A, 0x0000000C, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000000, 0x000020C8, 0x00000000, 0x00000043, 0x00000006, NpcJump0, 0x00000000, 0x00000096, 0x00000000, 0x00000014, 0x0000000C, 0x00000008, 0x00000001, 0x00000001, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000004, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24A8280, 0xF24A5680, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0x000002BC, 0x00000043, 0x00000004, SetCamPosA, 0x00000000, 0x000001F4, 0x00000000, 0x00000043, 0x00000004, SetCamPosB, 0x00000000, 0x00000000, 0xFFFFFE0C, 0x00000043, 0x00000004, SetCamPosC, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x00000041, 0x00000000, 0xFFFFFF77, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000001, 0x006A0022, 0x00000057, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000000, 0x000020C8, 0x00000000, 0x00000043, 0x00000006, NpcJump0, 0x00000000, 0x0000012A, 0x00000038, 0x0000001F, 0x00000012, 0x00000043, 0x00000005, SetNpcPos, 0x00000000, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000043, 0x00000003, EnableNpcShadow, 0x00000000, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000001, 0x006A0023, 0x00000008, 0x00000001, 0x00000014, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000001, 0x006A0006, 0x00000057, 0x00000000, 0x00000008, 0x00000001, 0x00000014, 0x00000056, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtCollider, 0x0000000A, 0x000001C1, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x00000050, 0x0000000A, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateModel, 0x0000001D, 0xFE363C80, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0x000000EC, 0x00000000, 0xFFFFFFD2, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A8A80, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24A9A80, 0xF24A5680, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0x000001C2, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x000000FA, 0x00000000, 0xFFFFFFD2, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000057, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x0000000A, 0x7FFFFE00, 0x00000043, 0x00000004, SetPlayerPos, 0x00000000, 0x00000014, 0xFFFFFF3D, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFC, 0x00000000, 0x00000014, 0xFFFFFF3D, 0x00000043, 0x00000001, EnablePartnerAI, 0x00000043, 0x00000004, PlayerMoveTo, 0x00000000, 0x00000000, 0x0000002D, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x0000000A, 0x7FFFFE00, 0x00000056, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000050, 0x00000000, 0x0000000A, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateModel, 0x0000001D, 0xFE363C80, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtCollider, 0x0000000A, 0x000001C2, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000004, PlayerMoveTo, 0x000000C8, 0x00000000, 0x00000023, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000001, 0x006A0010, 0x006A0006, 0x00000000, 0x000E00C8, 0x00000043, 0x00000004, SetNpcVar, 0x00000001, 0x00000000, 0x00000001, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000047, 0x00000005, 0x80242978, 0x00080000, 0x00000005, 0x00000001, 0x00000000, 0x00000047, 0x00000005, 0x802429D4, 0x00080000, 0x00000001, 0x00000001, 0x00000000, 0x0000000C, 0x00000002, 0xF5DE0180, 0xFFFFFFE8, 0x0000004E, 0x00000006, 0x802439B0, 0x00000100, 0x00004000, D_80242040_BEEE30, 0x00000000, 0x00000001, 0x00000012, 0x00000000, 0x00000047, 0x00000005, 0x802428D4, 0x00000100, 0x0000000A, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xF5DE0180, 0xFFFFFFEF, 0x00000046, 0x00000001, 0x80242A30, 0x00000044, 0x00000001, 0x802433C8, 0x00000012, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0x0000001D, 0x00000024, 0x00000002, 0xFE363C83, 0x00000001, 0x00000046, 0x00000001, EnterSingleDoor, 0x00000044, 0x00000001, 0x802433C8, 0x00000013, 0x00000000, 0x00000016, 0x00000001, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x802433C8, 0x00000044, 0x00000001, EnterWalk, 0x00000008, 0x00000001, 0x00000001, 0x00000016, 0x00000001, 0x00000002, 0x00000024, 0x00000002, 0xFE363C80, 0x802433C8, 0x00000044, 0x00000001, EnterWalk, 0x00000008, 0x00000001, 0x00000001, 0x00000016, 0x00000001, 0x00000003, 0x00000044, 0x00000001, 0x802433C8, 0x00000008, 0x00000001, 0x00000001, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x00000022, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamLeadPlayer, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000024, 0x00000002, 0xF8406339, 0x00000001, 0x00000014, 0x00000001, 0xF5DE0180, 0x00000018, 0x00000001, 0xFFFFFFE6, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x802478B8, 0x00000018, 0x00000001, 0xFFFFFFF2, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x8024787C, 0x00000016, 0x00000001, 0xFFFFFFF2, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x802478E8, 0x0000001C, 0x00000000, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x802478B8, 0x00000023, 0x00000000, 0x00000046, 0x00000001, 0x80243B54, 0x0000000A, 0x00000002, 0xF5DE0180, 0xFFFFFFF0, 0x00000044, 0x00000001, 0x80242498, 0x00000013, 0x00000000, 0x00000044, 0x00000001, 0x8024346C, 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000003, 0x00000008, 0x00000001, 0x00000041, 0x00000013, 0x00000000, 0x00000044, 0x00000001, 0x80243790, 0x00000044, 0x00000001, 0x80241F10, 0x00000043, 0x00000002, UseDoorSounds, 0x00000000, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A7BB4, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000
