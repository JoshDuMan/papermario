#include "jan_22.h"

INCLUDE_ASM(s32, "world/area_jan/jan_22/B84180", func_80240000_B84180);

INCLUDE_ASM(s32, "world/area_jan/jan_22/B84180", func_80240158_B842D8);

INCLUDE_ASM(s32, "world/area_jan/jan_22/B84180", func_80240400_B84580);

INCLUDE_ASM(s32, "world/area_jan/jan_22/B84180", func_802404C0_B84640);

INCLUDE_ASM(s32, "world/area_jan/jan_22/B84180", func_8024067C_B847FC);

INCLUDE_ASM(s32, "world/area_jan/jan_22/B84180", func_80240730_B848B0);

INCLUDE_ASM(s32, "world/area_jan/jan_22/B84180", func_802407A4_B84924);

INCLUDE_ASM(s32, "world/area_jan/jan_22/B84180", func_8024081C_B8499C);

INCLUDE_ASM(s32, "world/area_jan/jan_22/B84180", func_8024094C_B84ACC);

INCLUDE_ASM(s32, "world/area_jan/jan_22/B84180", func_80240A6C_B84BEC);

INCLUDE_ASM(s32, "world/area_jan/jan_22/B84180", func_80240AD4_B84C54);

INCLUDE_ASM(s32, "world/area_jan/jan_22/B84180", func_80240B94_B84D14);

INCLUDE_ASM(s32, "world/area_jan/jan_22/B84180", func_80240E90_B85010);

#include "world/common/GetItemName.inc.c"

INCLUDE_ASM(s32, "world/area_jan/jan_22/B84180", func_80240FA8_B85128);

INCLUDE_ASM(s32, "world/area_jan/jan_22/B84180", func_80240FC4_B85144);

static ApiStatus PostChapter5StatUpdate(ScriptInstance* script, s32 isInitialCall) {
    PlayerData* playerData = PLAYER_DATA;

    set_max_SP(5);
    playerData->curHP = playerData->curMaxHP;
    playerData->curFP = playerData->curMaxFP;
    sync_status_menu();
    return ApiStatus_DONE2;
}
