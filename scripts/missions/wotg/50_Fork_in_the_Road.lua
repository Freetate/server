-----------------------------------
-- Fork in the Road
-- Wings of the Goddess Mission 50
-----------------------------------
-- !addmission 5 49

-----------------------------------
require('scripts/globals/keyitems')
require('scripts/globals/missions')
require('scripts/globals/interaction/mission')
require('scripts/globals/zone')
-----------------------------------

local mission = Mission:new(xi.mission.log_id.WOTG, xi.mission.id.wotg.FORK_IN_THE_ROAD)

mission.reward =
{
    nextMission = { xi.mission.log_id.WOTG, xi.mission.id.wotg.MAIDEN_OF_THE_DUSK },
}

mission.sections =
{
    {
        check = function(player, currentMission, missionStatus, vars)
            return currentMission == mission.missionId
        end,

        [xi.zone.JUGNER_FOREST_S] =
        {
            ['blank_fork'] =
            {
                onTrigger = function(player, npc)
                    if not player:hasKeyItem(xi.ki.JUGNER_DAWNDROP) then
                        return mission:progressEvent(7, 82, 0, 0, 0, 0, 7340037, 0, 0)
                    end
                end,
            },

            onEventFinish =
            {
                [7] = function(player, csid, option, npc)
                    npcUtil.giveKeyItem(player, xi.ki.JUGNER_DAWNDROP)
                end,
            },
        },

        [xi.zone.LA_VAULE_S] =
        {
            ['blank_fork'] =
            {
                onTrigger = function(player, npc)
                    if not player:hasKeyItem(xi.ki.LA_VAULE_DAWNDROP) then
                        return mission:progressEvent(5, 85, 23, 1756, 0, 85, 1, 0, 0)
                    end
                end,
            },

            onEventFinish =
            {
                [5] = function(player, csid, option, npc)
                    npcUtil.giveKeyItem(player, xi.ki.LA_VAULE_DAWNDROP)
                end,
            },
        },

        [xi.zone.SOUTHERN_SAN_DORIA_S] =
        {
            ['blank_fork'] =
            {
                onTrigger = function(player, npc)
                    if not player:hasKeyItem(xi.ki.SAN_DORIA_DAWNDROP) then
                        return mission:progressEvent(176, 80, 23, 1756, 2000)
                    end
                end,
            },

            onEventFinish =
            {
                [176] = function(player, csid, option, npc)
                    npcUtil.giveKeyItem(player, xi.ki.SAN_DORIA_DAWNDROP)
                end,
            },
        },

        [xi.zone.BEAUCEDINE_GLACIER_S] =
        {
            ['blank_fork'] =
            {
                onTrigger = function(player, npc)
                    if not player:hasKeyItem(xi.ki.BEAUCEDINE_DAWNDROP) then
                        return mission:progressEvent(29, 136, 23, 1756, 0, 0, 6357002, 0, 0)
                    end
                end,
            },

            onEventFinish =
            {
                [29] = function(player, csid, option, npc)
                    npcUtil.giveKeyItem(player, xi.ki.BEAUCEDINE_DAWNDROP)
                end,
            },
        },

        [xi.zone.XARCABARD_S] =
        {
            ['blank_fork'] =
            {

            },

            onEventFinish =
            {

            },
        },

        [xi.zone.THRONE_ROOM_S] =
        {
            ['blank_fork'] =
            {

            },

            onEventFinish =
            {

            },
        },

        [xi.zone.WALK_OF_ECHOES] =
        {
            ['blank_fork'] =
            {

            },

            onEventFinish =
            {

            },
        },
    },
}

return mission
