#include "kmr_03.h"

s32 M(npcGroupList_80241450)[];
Script M(script_MakeEntities);
Script M(script_802422B8);
Script M(script_80242340);

ApiStatus func_802401B0_8C8140(ScriptInstance* script, s32 isInitialCall) {
    Npc* npc = get_npc_unsafe(0);

    script->varTable[1] = func_800E0088(npc->pos.x, npc->pos.z) / npc->moveSpeed * 0.8f;
    return ApiStatus_DONE2;
}

#include "world/common/UnkPositionFunc.inc.c"

// 8C8680
Script M(script_ExitWalk_802406F0) = {
    SI_GROUP(27),
    SI_CALL(0x802D216C, 60, 0),
    SI_EXEC(0x80285CF4),
    SI_CALL(0x802CA400, "kmr_04", 0),
    SI_WAIT_FRAMES(100),
    SI_RETURN(),
    SI_END(),
};

Script M(script_ExitWalk_8024074C) = {
    SI_GROUP(27),
    SI_CALL(0x802D216C, 60, 1),
    SI_EXEC(0x80285CF4),
    SI_CALL(0x802CA400, "kmr_05", 0),
    SI_WAIT_FRAMES(100),
    SI_RETURN(),
    SI_END(),
};

Script M(script_802407A8) = {
    SI_BIND(M(script_ExitWalk_802406F0), 524288, 3, NULL),
    SI_BIND(M(script_ExitWalk_8024074C), 524288, 5, NULL),
    SI_RETURN(),
    SI_END(),
};

// *INDENT-OFF*
Script M(Main) = {
    SI_SET(SI_SAVE_VAR(425), 30),
    SI_CALL(0x802D9700, -1),
    SI_CALL(0x802CA828, 0, 3, 25, 16, 4096),
    SI_CALL(0x802CAD98, 0, 0, 0, 0),
    SI_CALL(0x802CA6C0, 0, 1),
    SI_CALL(0x802CB680, 0, 0),
    SI_SET(SI_AREA_FLAG(8), 0),
    SI_CALL(0x80044298, 0, M(npcGroupList_80241450)),
    SI_CALL(0x80045640),
    SI_EXEC_WAIT(M(script_MakeEntities)),
    SI_EXEC_WAIT(M(script_802422B8)),
    SI_EXEC(M(script_802406C0)),
    SI_CALL(0x802CA460, SI_VAR(0)),
    SI_IF_NE(SI_VAR(0), 2),
        SI_SET(SI_VAR(0), M(script_802407A8)),
        SI_EXEC(0x80285960),
        SI_ELSE(),
        SI_EXEC(M(script_802407A8)),
        SI_EXEC(M(script_80242340)),
    SI_END_IF(),
    SI_WAIT_FRAMES(1),
    SI_RETURN(),
    SI_END(),
};
// *INDENT-ON*

s32 padding[] = {0, 0};

// 8C88E0
s32 M(npcSettings_80240950)[] = {
    0x00000000, 0x00160018, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00630010,
};

// *INDENT-OFF*
Script M(script_8024097C) = {
    SI_LABEL(1),
    SI_IF_EQ(SI_AREA_FLAG(8), 1),
        SI_LABEL(100),
        SI_CALL(0x802D4A5C, 294, 123, 170),
        SI_CALL(0x80044CF0, 0, 0),
        SI_CALL(0x802D0E28, 1),
        SI_CALL(0x802CE01C, 0, SI_FIXED(4.0f)),
        SI_CALL(0x802CE0F4, 0, 0x9D0003),
        SI_CALL(func_802401B0_8C8140),
        SI_CALL(0x802D4830, 0, SI_VAR(2)),
        SI_LOOP(SI_VAR(1)),
            SI_CALL(0x802CF0F4, 0, SI_VAR(7), SI_VAR(8), SI_VAR(9)),
            SI_CALL(0x802D4B14, SI_VAR(7), SI_VAR(9), SI_FIXED(4.0f), SI_VAR(2)),
            SI_CALL(0x802CDCB0, 0, SI_VAR(7), SI_VAR(8), SI_VAR(9)),
            SI_WAIT_FRAMES(1),
        SI_END_LOOP(),
        SI_CALL(0x802D1B04, 0, 3),
        SI_CALL(0x802D1024, SI_FIXED(3.0f)),
        SI_CALL(0x802D1134, 243, 243, 0),
        SI_CALL(0x80045320, 0, 0, 1),
        SI_CALL(0x80044CF0, 0, 1),
        SI_CALL(0x802D0E28, 0),
        SI_GOTO(100),
    SI_END_IF(),
    SI_WAIT_FRAMES(1),
    SI_GOTO(1),
    SI_RETURN(),
    SI_END(),
};
// *INDENT-ON*

// *INDENT-OFF*
Script M(script_NpcAI_80240B50) = {
    SI_LABEL(1),
    SI_SWITCH(SI_SAVE_VAR(0)),
        SI_CASE_EQ(0xFFFFFF86),
            SI_LABEL(89),
            SI_CALL(UnkPositionFunc, 0xFFFFFF8A, 86, 0xFFFFFFBA, 0xFFFFFFF1),
            SI_WAIT_FRAMES(1),
            SI_IF_EQ(SI_VAR(0), 0),
                SI_GOTO(89),
            SI_END_IF(),
            SI_CALL(0x802D0E28, 1),
            SI_CALL(0x80044DA4, 0, 0),
            SI_CALL(0x802D01AC, 0, 610, 0),
            SI_CALL(0x802D78A0, 0, 0, 45, 15, 1, 0, 0, 0, 0),
            SI_WAIT_FRAMES(15),
            SI_CALL(0x802CECC8, -1, 5),
            SI_WAIT_FRAMES(10),
            SI_CALL(0x802D02B0, 0, 0x9D0008, 0x9D0001, 0, 0xB00A6),
            SI_CALL(0x802CB860, 0, 0xFFFFFF24, 20, 0xFFFFFFB8),
            SI_CALL(0x802CBE2C, 0, 0xFFFFFFEC, 0, 68),
            SI_CALL(0x802CBB48, 0, SI_FIXED(15.0f), SI_FIXED(-8.5f)),
            SI_CALL(0x802CBBE4, 0, 275),
            SI_CALL(0x802CBEF0, 0, SI_FIXED(1.5f)),
            SI_CALL(0x802CB79C, 0, 0, 1),
            SI_THREAD(),
                SI_WAIT_FRAMES(20),
                SI_CALL(0x802D1024, SI_FIXED(2.0f)),
                SI_CALL(0x802D1134, 0xFFFFFFDA, 68, 0),
            SI_END_THREAD(),
            SI_CALL(0x802CF0F4, 0, SI_VAR(7), SI_VAR(8), SI_VAR(9)),
            SI_CALL(0x802CE01C, 0, SI_FIXED(4.0f)),
            SI_CALL(0x802CE0F4, 0, 0x9D0003),
            SI_CALL(0x802CE22C, 0, 0, 70, 0),
            SI_CALL(0x802CE0F4, 0, 0x9D0001),
            SI_CALL(0x802CEB04, 0, 276, 20),
            SI_WAIT_FRAMES(30),
            SI_CALL(0x802D02B0, 0, 0x9D0008, 0x9D0001, 0, 0xB00A7),
            SI_WAIT_FRAMES(5),
            SI_CALL(0x802D1084, 0x80007),
            SI_WAIT_FRAMES(30),
            SI_CALL(0x802D02B0, 0, 0x9D0008, 0x9D0001, 0, 0xB00A8),
            SI_CALL(func_80240000_8C7F90, 0, 5),
            SI_SET(SI_SAVE_VAR(0), 0xFFFFFF87),
            SI_CALL(0x802CB860, 0, 0xFFFFFF24, 20, 0xFFFFFFB8),
            SI_CALL(0x802D1DFC, SI_VAR(0), SI_VAR(1), SI_VAR(2)),
            SI_CALL(0x802CBE2C, 0, SI_VAR(0), SI_VAR(1), SI_VAR(2)),
            SI_CALL(0x802CBEF0, 0, SI_FIXED(3.0f)),
            SI_CALL(0x802CB79C, 0, 0, 1),
            SI_CALL(0x802CC354, 0, SI_FIXED(1.0f)),
            SI_CALL(0x802CB79C, 0, 0, 0),
            SI_CALL(0x802CF52C),
            SI_CALL(0x802D0E28, 0),
            SI_WAIT_FRAMES(1),
    SI_END_SWITCH(),
    SI_RETURN(),
    SI_END(),
};
// *INDENT-ON*

// *INDENT-OFF*
Script M(script_Hit_80240F64) = {
    SI_CALL(0x802CE0F4, -1, 0x9D0007),
    SI_WAIT_FRAMES(10),
    SI_CALL(0x802CE0F4, -1, 0x9D0001),
    SI_ADD(SI_MAP_VAR(0), 1),
    SI_IF_LT(SI_MAP_VAR(0), 3),
        SI_CALL(0x80044600, SI_VAR(0)),
        SI_SWITCH(SI_VAR(0)),
            SI_CASE_EQ(2),
                SI_CALL(0x80045320, 0, 0, 1),
                SI_IF_EQ(SI_AREA_FLAG(6), 1),
                    SI_ELSE(),
                    SI_SET(SI_AREA_FLAG(6), 1),
                    SI_SET(SI_AREA_FLAG(7), 0),
                SI_END_IF(),
            SI_CASE_EQ(4),
                SI_CALL(0x80045320, 0, 0, 1),
                SI_IF_EQ(SI_AREA_FLAG(7), 1),
                    SI_ELSE(),
                    SI_SET(SI_AREA_FLAG(6), 0),
                    SI_SET(SI_AREA_FLAG(7), 1),
                SI_END_IF(),
        SI_END_SWITCH(),
        SI_WAIT_FRAMES(10),
        SI_CALL(0x802CE0F4, -1, 0x9D0003),
        SI_ELSE(),
        SI_WAIT_FRAMES(10),
        SI_CALL(0x802CF0F4, 0, SI_VAR(0), SI_VAR(1), SI_VAR(2)),
        SI_CALL(0x802CDCB0, 0xFFFFFFFC, SI_VAR(0), SI_VAR(1), SI_VAR(2)),
        SI_CALL(0x802CF060, 0xFFFFFFFC, 512, 1),
        SI_CALL(0x802CDCB0, 0, 0, 0xFFFFFC18, 0),
        SI_CALL(0x802CF060, 0, 256, 0),
        SI_CALL(0x802CF52C),
        SI_CALL(0x80044DA4, -1, M(script_8024097C)),
        SI_CALL(0x80044A78, -1, M(script_NpcAI_80240B50)),
    SI_END_IF(),
    SI_RETURN(),
    SI_END(),
};
// *INDENT-ON*

// *INDENT-OFF*
Script M(script_Init_802411A8) = {
    SI_CALL(0x80044BAC, -1, M(script_NpcAI_80240B50)),
    SI_CALL(0x80044EB8, -1, M(script_8024097C)),
    SI_CALL(0x80045140, -1, M(script_Hit_80240F64)),
    SI_SWITCH(SI_SAVE_VAR(0)),
        SI_CASE_GE(0xFFFFFF87),
            SI_CALL(0x802CF060, -1, 512, 0),
            SI_CALL(0x802CF060, -1, 8, 1),
            SI_CALL(0x802CDCB0, -1, 0, 0xFFFFFC18, 0),
    SI_END_SWITCH(),
    SI_RETURN(),
    SI_END(),
};
// *INDENT-ON*

s32 M(npcGroup_80241260)[] = {
    0x00000000, M(npcSettings_80240950), 0xC2480000, 0x00000000, 0x42A00000, 0x00400105, M(script_Init_802411A8), 0x00000000,
    0x00000000, 0x0000002D, 0x80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x009D0001, 0x009D0002, 0x009D0003, 0x009D0003, 0x009D0001, 0x009D0001, 0x009D0000, 0x009D0000,
    0x009D0003, 0x009D0003, 0x009D0003, 0x009D0003, 0x009D0003, 0x009D0003, 0x009D0003, 0x009D0003,
    0x00000000, 0x00000000, 0x00000000, 0x001A0063,
};

s32 M(npcGroupList_80241450)[] = {
    0x00000001, M(npcGroup_80241260), 0x00020000, 0x00000000, 0x00000000, 0x00000000,
};

s32 padding2[] = {0, 0};

// 8C9400
Script M(script_80241470) = {
    SI_CALL(0x802C9DCC, 0, 9, 0x7FFFFE00),
    SI_SET(SI_SAVE_VAR(0), 0xFFFFFF8B),
    SI_RETURN(),
    SI_END(),
};

Script M(script_802414A8) = {
    SI_SET(SI_SAVE_FLAG(54), 1),
    SI_RETURN(),
    SI_END(),
};

Script M(script_802414C8) = {
    SI_LABEL(0),
    SI_CALL(0x802D1DFC, SI_VAR(0), SI_VAR(1), SI_VAR(2)),
    SI_CALL(0x802CAF2C, 0, SI_VAR(0), SI_VAR(1), SI_VAR(2)),
    SI_WAIT_FRAMES(1),
    SI_GOTO(0),
    SI_RETURN(),
    SI_END(),
};

// *INDENT-OFF*
Script M(script_MakeEntities) = {
    SI_IF_LT(SI_SAVE_VAR(0), 0xFFFFFF8B),
        SI_CALL(0x80111D38, 0x802EA10C, 45, 0, 70, 15, 0x80000000),
        SI_CALL(0x80111FB0, M(script_80241470)),
        SI_ELSE(),
        SI_CALL(0x802C9DCC, 0, 9, 0x7FFFFE00),
    SI_END_IF(),
    SI_IF_EQ(SI_SAVE_FLAG(54), 0),
        SI_CALL(0x80111D38, 0x802EA19C, 230, 0, 310, 15, 0x80000000),
        SI_CALL(0x80111FB0, M(script_802414A8)),
    SI_END_IF(),
    SI_CALL(0x80111D38, 0x802EA588, 230, 60, 310, 15, 151, 0x80000000),
    SI_CALL(0x8011206C, SI_SAVE_FLAG(52)),
    SI_CALL(0x80111D38, 0x802EA0C4, 230, 50, 0xFFFFFF60, 15, 0x80000000),
    SI_CALL(0x80111D38, 0x802EA0C4, 165, 0, 380, 20, 0x80000000),
    SI_CALL(0x80111D38, 0x802EA564, 0xFFFFFF56, 0, 370, 43, 343, 0x80000000),
    SI_CALL(0x8011206C, SI_SAVE_FLAG(50)),
    SI_CALL(0x80111D38, 0x802EAA54, 345, 75, 0xFFFFFF06, 0, 100, 0x80000000),
    SI_CALL(0x802D6CC0, 343, 345, 205, 0xFFFFFF06, 17, SI_SAVE_FLAG(56)),
    SI_CALL(0x802D6CC0, 343, 345, 230, 0xFFFFFF06, 17, SI_SAVE_FLAG(57)),
    SI_CALL(0x802D6CC0, 343, 345, 255, 0xFFFFFF06, 17, SI_SAVE_FLAG(58)),
    SI_CALL(0x802D6CC0, 343, 345, 280, 0xFFFFFF06, 17, SI_SAVE_FLAG(59)),
    SI_CALL(0x802D6CC0, 128, 229, 250, 0xFFFFFF64, 17, SI_SAVE_FLAG(49)),
    SI_CALL(0x80111D38, 0x802EAB04, 300, 0, 150, 0, 18, 0x80000000),
    SI_CALL(0x80112114, SI_SAVE_FLAG(88)),
    SI_CALL(0x80111D38, 0x802EA7E0, 130, 60, 0, 0, 0x80000000),
    SI_RETURN(),
    SI_END(),
};
// *INDENT-ON*

