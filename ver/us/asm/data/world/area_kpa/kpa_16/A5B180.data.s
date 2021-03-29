.include "macro.inc"

.section .data

glabel D_80241150_A5B180
.word 0x00000000, 0x00280018, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00190000, 0x00000003, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xF9718887, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000005, 0x00000001, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, GetPlayerActionState, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xF24FF280, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A7E80, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x0000014A, 0x000000E6, 0xFFFFFF6A, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x0000014A, 0x000000AA, 0xFFFFFF6A, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000056, 0x00000000, 0x00000043, 0x00000001, func_8024034C_A5A37C, 0x00000026, 0x00000002, 0xFE363C82, 0x00000001, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0xFFFFFFEC, 0x00000064, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x0000002C, 0x00000002, 0xFE363C82, 0xF24A7A76, 0x00000043, 0x00000005, TranslateModel, 0x00000012, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x00000010, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, ScaleModel, 0x00000010, 0xFE363C82, 0x00000001, 0x00000001, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000057, 0x00000000, 0x00000008, 0x00000001, 0x00000032, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x000000FF, 0x00000032, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000002, func_80240310_A5A340, 0xFE363C80, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x0000002E, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x0000002B, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x0000002C, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x0000002D, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x00000036, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x0000002F, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000003, 0x00000032, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000036, 0x7FFFFE00, 0x00000044, 0x00000001, 0x802405D0, 0x00000043, 0x00000003, EnableGroup, 0x00000082, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x000000FC, 0x00000001, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x0000002E, 0x7FFFFE00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x0000002F, 0x7FFFFE00, 0x00000024, 0x00000002, 0xF8406194, 0x00000001, 0x00000043, 0x00000003, ResetCam, 0x00000000, 0xF24BE280, 0x00000043, 0x00000005, MakeLerp, 0x000000FF, 0x00000000, 0x00000032, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000002, func_80240310_A5A340, 0xFE363C80, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000008, 0x00000001, 0x0000003C, 0x00000043, 0x00000002, DisablePartnerAI, 0x00000000, 0x00000043, 0x00000002, GetCurrentPartnerID, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000001, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFC, 0x00010008, 0x00010001, 0x00000000, 0x0013001B, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFC, 0x0002000D, 0x00020003, 0x00000000, 0x0013001C, 0x00000016, 0x00000001, 0x00000003, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFC, 0x0003000E, 0x00030003, 0x00000000, 0x0013001D, 0x00000016, 0x00000001, 0x00000004, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFC, 0x00040006, 0x00040001, 0x00000000, 0x0013001E, 0x00000016, 0x00000001, 0x00000009, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFC, 0x00050004, 0x00050001, 0x00000000, 0x0013001F, 0x00000016, 0x00000001, 0x00000006, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFC, 0x00060004, 0x00060001, 0x00000000, 0x00130020, 0x00000016, 0x00000001, 0x00000007, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFC, 0x00070004, 0x00070001, 0x00000000, 0x00130021, 0x00000016, 0x00000001, 0x00000008, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFC, 0x00080009, 0x00080001, 0x00000000, 0x00130022, 0x00000023, 0x00000000, 0x00000043, 0x00000001, EnablePartnerAI, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000058, 0x00000000, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000003, SetNpcSpeed, 0x00000000, 0xF24A8680, 0x00000043, 0x00000005, NpcMoveTo, 0x00000000, 0x0000028A, 0xFFFFFF6F, 0x00000000, 0x00000059, 0x00000000, 0x00000058, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000003, SetNpcSpeed, 0x00000002, 0xF24A8880, 0x00000043, 0x00000005, NpcMoveTo, 0x00000002, 0x0000028A, 0xFFFFFF5B, 0x00000000, 0x00000059, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000003, SetNpcSpeed, 0x00000001, 0xF24A8A80, 0x00000043, 0x00000005, NpcMoveTo, 0x00000001, 0x0000028A, 0xFFFFFF88, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, func_80240370_A5A3A0, 0xFE363C80, 0x0000000B, 0x00000002, 0xFE363C80, 0x00000027, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x0000000C, 0x00000002, 0xFE363C81, 0x000000E6, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x0000000D, 0x00000002, 0xFE363C80, 0x000002C6, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000000, 0x00000262, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000001, 0x00000262, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtNpc, 0x00000002, 0x00000262, 0x00000000, 0x00000043, 0x0000000A, ShowEmote, 0x00000000, 0x00000000, 0x00000000, 0x0000000F, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000A, ShowEmote, 0x00000001, 0x00000000, 0x00000000, 0x0000000F, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x0000000A, ShowEmote, 0x00000002, 0x00000000, 0x00000000, 0x0000000F, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000004, InterpNpcYaw, 0x00000000, 0x0000005A, 0x00000000, 0x00000043, 0x00000004, InterpNpcYaw, 0x00000001, 0x0000005A, 0x00000000, 0x00000043, 0x00000004, InterpNpcYaw, 0x00000002, 0x0000005A, 0x00000000, 0x00000043, 0x00000004, InterpNpcYaw, 0x00000003, 0x0000005A, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00580006, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000001, 0x00580006, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000002, 0x00580006, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0x0000022B, 0x000000E6, 0xFFFFFF6A, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x0000022B, 0x000000E6, 0xFFFFFF6A, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0xF24F2A80, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0xF24AA280, 0xF24A5280, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000056, 0x00000000, 0x00000043, 0x00000002, SetPlayerSpeed, 0xF24A8680, 0x00000043, 0x00000004, PlayerMoveTo, 0x000002A8, 0xFFFFFF6F, 0x00000000, 0x00000043, 0x00000003, InterpPlayerYaw, 0x0000010E, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000001, 0x00580006, 0x00000043, 0x00000003, SetNpcSpeed, 0x00000001, 0xF24A8A80, 0x00000003, 0x00000001, 0x0000000A, 0x00000043, 0x00000005, NpcMoveTo, 0x00000001, 0x00000226, 0xFFFFFF5B, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000005, NpcMoveTo, 0x00000001, 0x000001FE, 0xFFFFFF5B, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000003, GetSelfVar, 0x00000000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000004, 0x00000001, 0x0000000A, 0x00000013, 0x00000000, 0x00000043, 0x00000005, NpcMoveTo, 0x00000001, 0x00000217, 0xFFFFFF5B, 0x00000000, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000002, 0x00000057, 0x00000000, 0x00000043, 0x00000004, InterpNpcYaw, 0x00000000, 0x0000010E, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000000, 0x00580006, 0x00580006, 0x00000001, 0x00130017, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000003, SetNpcJumpscale, 0x00000002, 0xF24A7E80, 0x00000043, 0x00000005, GetNpcPos, 0x00000002, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000006, NpcJump0, 0x00000002, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000014, 0x00000057, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000002, 0x00580006, 0x00580006, 0x00000000, 0x00130018, 0x00000043, 0x00000003, SetSelfVar, 0x00000000, 0x00000001, 0x00000003, 0x00000001, 0x0000000F, 0x00000043, 0x00000003, GetSelfVar, 0x00000000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000001, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x0000000F, 0x00000013, 0x00000000, 0x00000043, 0x00000004, InterpNpcYaw, 0x00000001, 0x0000010E, 0x00000000, 0x00000043, 0x00000004, InterpNpcYaw, 0x00000002, 0x0000010E, 0x00000000, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00580001, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000001, 0x00580001, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000002, 0x00580001, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000003, 0x00560002, 0x00560001, 0x00000000, 0x00130019, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000004, InterpNpcYaw, 0x00000002, 0x0000005A, 0x00000000, 0x00000008, 0x00000001, 0x0000000A, 0x00000043, 0x00000004, InterpNpcYaw, 0x00000000, 0x0000005A, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0x00000001, 0x00580008, 0x00580001, 0x00000000, 0x0013001A, 0x00000043, 0x00000003, ResetCam, 0x00000000, 0xF24BE280, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000000, 0x00580006, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000001, 0x00580006, 0x00000043, 0x00000003, SetNpcAnimation, 0x00000002, 0x00580006, 0x00000044, 0x00000001, 0x802417F8, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000056, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xF8406195, 0x00000001, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000005, SetNpcPos, 0x00000000, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0x00000001, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0x00000002, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0x00000003, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000002, StartBossBattle, 0x00000003, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, GetBattleOutcome, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF8406195, 0x00000001, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000037, 0x7FFFFE00, 0x00000043, 0x00000001, DoNpcDefeat, 0x00000016, 0x00000001, 0x00000001, 0x00000016, 0x00000001, 0x00000002, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xF8406194, 0x00000000, 0x00000044, 0x00000001, 0x8024117C, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xF8406195, 0x00000000, 0x00000043, 0x00000003, BindNpcIdle, 0xFFFFFFFF, 0x802418DC, 0x00000043, 0x00000003, BindNpcDefeat, 0xFFFFFFFF, 0x802420B4, 0x00000012, 0x00000000, 0x00000043, 0x00000002, RemoveNpc, 0x00000003, 0x00000043, 0x00000002, RemoveNpc, 0x00000001, 0x00000043, 0x00000002, RemoveNpc, 0x00000002, 0x00000043, 0x00000002, RemoveNpc, 0xFFFFFFFF, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, D_80241150_A5B180, 0x44124000, 0x43660000, 0xC3110000, 0x00C42D05, 0x80242140, 0x00000000, 0x00000000, 0x0000010E, 0x8005008C, 0x000A0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x59980005, 0x3FFF2666, 0x4CCC0005, 0x3FFF3FFF, 0x3FFF0005, 0x33326665, 0x33320005, 0x33327FFF, 0x26660005, 0x26660000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x3FFF0002, 0x33322666, 0x33320002, 0x33323FFF, 0x33320002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x33320000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00030000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00580001, 0x00580004, 0x00580006, 0x00580006, 0x00580001, 0x00580001, 0x00580010, 0x00580010, 0x0058000C, 0x0058000B, 0x0058000D, 0x00580001, 0x00580001, 0x00580001, 0x00580001, 0x00580001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, D_80241150_A5B180, 0x44034000, 0x43660000, 0xC3250000, 0x00C42D05, 0x00000000, 0x00000000, 0x00000000, 0x0000010E, 0x8005008C, 0x000A0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x59980005, 0x3FFF2666, 0x4CCC0005, 0x3FFF3FFF, 0x3FFF0005, 0x33326665, 0x33320005, 0x33327FFF, 0x26660005, 0x26660000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x3FFF0002, 0x33322666, 0x33320002, 0x33323FFF, 0x33320002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x33320000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00030000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00580001, 0x00580004, 0x00580006, 0x00580006, 0x00580001, 0x00580001, 0x00580010, 0x00580010, 0x0058000C, 0x0058000B, 0x0058000D, 0x00580001, 0x00580001, 0x00580001, 0x00580001, 0x00580001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, D_80241150_A5B180, 0x44098000, 0x43660000, 0xC2F00000, 0x00C42D05, 0x00000000, 0x00000000, 0x00000000, 0x0000010E, 0x8005008C, 0x000A0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x59980005, 0x3FFF2666, 0x4CCC0005, 0x3FFF3FFF, 0x3FFF0005, 0x33326665, 0x33320005, 0x33327FFF, 0x26660005, 0x26660000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x3FFF0002, 0x33322666, 0x33320002, 0x33323FFF, 0x33320002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x33320000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00030000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00580001, 0x00580004, 0x00580006, 0x00580006, 0x00580001, 0x00580001, 0x00580010, 0x00580010, 0x0058000C, 0x0058000B, 0x0058000D, 0x00580001, 0x00580001, 0x00580001, 0x00580001, 0x00580001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000003, D_80241150_A5B180, 0x43FC8000, 0x43660000, 0xC2F00000, 0x00C40D05, 0x00000000, 0x00000000, 0x00000000, 0x0000010E, 0x8005008C, 0x00050000, 0x00A30005, 0x00000082, 0x00050000, 0x00920005, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x59980002, 0x3FFF2666, 0x4CCC0002, 0x3FFF3FFF, 0x3FFF0002, 0x33326665, 0x33320002, 0x33327FFF, 0x26660002, 0x26660000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00001999, 0x3FFF0005, 0x33322666, 0x33320005, 0x33323FFF, 0x33320005, 0x33326665, 0x33320005, 0x33327FFF, 0x26660005, 0x33320000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00030000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00560001, 0x00560001, 0x00560001, 0x00560001, 0x00560001, 0x00560001, 0x00560004, 0x00560004, 0x00560002, 0x00560003, 0x00560001, 0x00560001, 0x00560001, 0x00560001, 0x00560001, 0x00560001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000004, 0x802421FC, 0x221D0003, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
