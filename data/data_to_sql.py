
import os
import sys
import yaml 
import re

DEBUGGING = os.getenv("DEBUGGING") or False

# Map IDs:
MAP_EASTERNKINGDOM = 0
MAP_KALIMDOR = 1
MAP_OUTLAND = 530
MAP_NORTHREND = 571

# Conditions
# SourceTypeOrReferenceId
CONDITION_SOURCE_TYPE_NONE = 0
CONDITION_SOURCE_TYPE_CREATURE_LOOT_TEMPLATE = 1
CONDITION_SOURCE_TYPE_DISENCHANT_LOOT_TEMPLATE = 2
CONDITION_SOURCE_TYPE_FISHING_LOOT_TEMPLATE = 3
CONDITION_SOURCE_TYPE_GAMEOBJECT_LOOT_TEMPLATE = 4
CONDITION_SOURCE_TYPE_ITEM_LOOT_TEMPLATE = 5
CONDITION_SOURCE_TYPE_MAIL_LOOT_TEMPLATE = 6
CONDITION_SOURCE_TYPE_MILLING_LOOT_TEMPLATE = 7
CONDITION_SOURCE_TYPE_PICKPOCKETING_LOOT_TEMPLATE = 8
CONDITION_SOURCE_TYPE_PROSPECTING_LOOT_TEMPLATE = 9
CONDITION_SOURCE_TYPE_REFERENCE_LOOT_TEMPLATE = 10
CONDITION_SOURCE_TYPE_SKINNING_LOOT_TEMPLATE = 11
CONDITION_SOURCE_TYPE_SPELL_LOOT_TEMPLATE = 12
CONDITION_SOURCE_TYPE_SPELL_IMPLICIT_TARGET = 13
CONDITION_SOURCE_TYPE_GOSSIP_MENU = 14
CONDITION_SOURCE_TYPE_GOSSIP_MENU_OPTION = 15
CONDITION_SOURCE_TYPE_CREATURE_TEMPLATE_VEHICLE = 16
CONDITION_SOURCE_TYPE_SPELL = 17
CONDITION_SOURCE_TYPE_SPELL_CLICK_EVENT = 18
CONDITION_SOURCE_TYPE_QUEST_AVAILABLE = 19
CONDITION_SOURCE_TYPE_UNUSED_20 = 20
CONDITION_SOURCE_TYPE_VEHICLE_SPELL = 21
CONDITION_SOURCE_TYPE_SMART_EVENT = 22
CONDITION_SOURCE_TYPE_NPC_VENDOR = 23
CONDITION_SOURCE_TYPE_SPELL_PROC = 24
CONDITION_SOURCE_TYPE_MAX = 27


# ConditionTypeOrReference
CONDITION_NONE = 0
CONDITION_AURA = 1
CONDITION_ITEM = 2
CONDITION_ITEM_EQUIPPED = 3
CONDITION_ZONEID = 4
CONDITION_REPUTATION_RANK = 5 	
CONDITION_TEAM = 6
CONDITION_SKILL = 7
CONDITION_QUESTREWARDED = 8
CONDITION_QUESTTAKEN = 9
CONDITION_DRUNKENSTATE = 10
CONDITION_WORLD_STATE = 11
CONDITION_ACTIVE_EVENT = 12
CONDITION_INSTANCE_INFO = 13
CONDITION_QUEST_NONE = 14
CONDITION_CLASS = 15
CONDITION_RACE = 16
CONDITION_ACHIEVEMENT = 17
CONDITION_TITLE = 18
CONDITION_SPAWNMASK = 19
CONDITION_GENDER = 20
CONDITION_UNIT_STATE = 21
CONDITION_MAPID = 22
CONDITION_AREAID = 23
CONDITION_CREATURE_TYPE = 24
CONDITION_SPELL = 25
CONDITION_PHASEMASK = 26
CONDITION_LEVEL = 27
CONDITION_QUEST_COMPLETE = 28
CONDITION_NEAR_CREATURE = 29
CONDITION_NEAR_GAMEOBJECT = 30
CONDITION_OBJECT_ENTRY_GUID = 31
CONDITION_TYPE_MASK = 32
CONDITION_RELATION_TO = 33
CONDITION_REACTION_TO = 34
CONDITION_DISTANCE_TO = 35
CONDITION_ALIVE = 36
CONDITION_HP_VAL = 37
CONDITION_HP_PCT = 38
CONDITION_REALM_ACHIEVEMENT = 39
CONDITION_IN_WATER = 40
CONDITION_STAND_STATE = 42
CONDITION_DAILY_QUEST_DONE = 43
CONDITION_CHARMED = 44
CONDITION_PET_TYPE = 45
CONDITION_TAXI = 	46
CONDITION_QUESTSTATE = 47
CONDITION_QUEST_OBJECTIVE_PROGRESS = 48
CONDITION_MAX =	49

# rank:
REPUTATION_RANK_HATED = 1
REPUTATION_RANK_HOSTILE = 2
REPUTATION_RANK_UNFRIENDLY = 4
REPUTATION_RANK_NEUTRAL = 8
REPUTATION_RANK_FRIENDLY = 16
REPUTATION_RANK_HONORED = 32
REPUTATION_RANK_REVERED = 64
REPUTATION_RANK_EXALTED = 128

# Map IDs:
MAP_EASTERN_KINGDOMS = 0
MAP_KALIMDOR = 1
MAP_OUTLAND = 530
MAP_NORTHREND = 571

# Global state maintained across the entire runtime
last_entry_id = 0
   
def sql_new_vendor(data):
    with open('templates/npc.sql', 'r') as fd:
        return fd.read().format(
            Entry = data['Entry'],
            Model1 = data['Model_1'],
            Model2 = data['Model_2'],
            Model3 = data['Model_3'],
            Model4 = data['Model_4'],
            Name = data['Name'],
            Title = data['Title'],
            MinLevel = data['MinLevel'],
            MaxLevel = data['MaxLevel'],
            Faction = data['Faction'],
            NPCFlags = data['NPCFlags'],
            Rank = data['Rank'],
            Type = data['Type'],
            RunSpeed = data['RunSpeed'],
        )

def sql_new_vendor_spawn(data):
    with open('templates/npc_spawn.sql', 'r') as fd:
        return fd.read().format(
            Entry = data['Entry'],
            Map = data['Map'],
            X = data['X'],
            Y = data['Y'],
            Z = data['Z'],
            Orientation = data['Orientation']           
        )

def sql_new_npc_vendor_clear(data):
    with open('templates/npc_vendor_clear.sql', 'r') as fd:
        return fd.read().format(
            Entry = data['Entry'],
        )

def sql_new_quest_template_addon(data):
    with open('templates/quest_template_addon.sql', 'r') as fd:
        return fd.read().format(
            Entry = data['Entry'],
            SpecialFlags = data['SpecialFlags'],
        )
    
def sql_new_quest(data):
    with open('templates/quest.sql', 'r') as fd:
        return fd.read().format(
            Entry = data['Entry'],
            NPCEntry = data['NPCEntry'],
            Flags = data['Flags'],
            Level = data['Level'],
            LevelMin = data['LevelMin'], 
            RewardMoney = data['RewardMoney'], 
            Title = data['Title'],
            Description = data['Description'],
            AreaDescription = data['AreaDescription'],
            Details = data['Details'],
            Complete = data['Complete'],
            RequiredItem1 = data['RequiredItem1'],
            RequiredItem1Count = data['RequiredItem1Count'],
            Objective1Text = data['Objective1Text'],
            RequiredItem2 = data['RequiredItem2'],
            RequiredItem2Count = data['RequiredItem2Count'],
            Objective2Text = data['Objective2Text'],
            RequiredItem3 = data['RequiredItem3'],
            RequiredItem3Count = data['RequiredItem3Count'],
            Objective3Text = data['Objective3Text'],
            RequiredItem4 = data['RequiredItem4'],
            RequiredItem4Count = data['RequiredItem4Count'],
            Objective4Text = data['Objective4Text'],
            RequiredItem5 = data['RequiredItem5'],
            RequiredItem5Count = data['RequiredItem5Count'],
            Objective5Text = data['Objective5Text'],
            RequiredItem6 = data['RequiredItem6'],
            RequiredItem6Count = data['RequiredItem6Count'],
            Objective6Text = data['Objective6Text'],
        )

def sql_new_quest_starter(data):
    with open('templates/quest_starter.sql', 'r') as fd:
        return fd.read().format(
            QuestEntry = data['QuestEntry'],
            NPCEntry = data['NPCEntry'],
        )

def sql_new_quest_ender(data):
    with open('templates/quest_ender.sql', 'r') as fd:
        return fd.read().format(
            QuestEntry = data['QuestEntry'],
            NPCEntry = data['NPCEntry'],
        )

def sql_new_quest_request_items(data):
    with open('templates/quest_request_items.sql', 'r') as fd:
        return fd.read().format(
            Entry = data['Entry'],
            EmoteOnComplete = data['EmoteOnComplete'],
            EmoteOnIncomplete = data['EmoteOnIncomplete'],
            CompleteText = data['CompleteText'],
        )

def sql_new_quest_offer_reward(data):
    with open('templates/quest_offer_reward.sql', 'r') as fd:
        return fd.read().format(
            Entry = data['Entry'],
            Emote1 = data['Emote1'],
            Emote2 = data['Emote2'],
            Emote3 = data['Emote3'],
            Emote4 = data['Emote4'],
            EmoteDelay1 = data['EmoteDelay1'],
            EmoteDelay2 = data['EmoteDelay2'],
            EmoteDelay3 = data['EmoteDelay3'],
            EmoteDelay4 = data['EmoteDelay4'],
            RewardText = data['RewardText'],
        )

def sql_new_quest_condition(data):
    with open('templates/quest_condition.sql', 'r') as fd:
        return fd.read().format(
            SourceTypeOrReferenceId = data['SourceTypeOrReferenceId'],
            SourceEntry = data['SourceEntry'],
            ConditionTypeOrReference = data['ConditionTypeOrReference'],
            ConditionTarget = data['ConditionTarget'],
            ConditionValue1 = data['ConditionValue1'],
            ConditionValue2 = data['ConditionValue2'],
        )

def generate_quest_condition(data, index, quest_id):
    if 'condition_parts' in data:
        if len(data['condition_parts']) <= 0:
            if DEBUGGING: print('No condition parts')
            return
        
        if index > len(data['condition_parts'])-1:
            if DEBUGGING: print('Condition index out of range')
            return
        
        condition = data['condition_parts'][index]
        return sql_new_quest_condition({
            'SourceEntry': quest_id,
            'SourceTypeOrReferenceId': condition['SourceTypeOrReferenceId'],
            'ConditionTypeOrReference': condition['ConditionTypeOrReference'],
            'ConditionTarget': condition['ConditionTarget'],
            'ConditionValue1': condition['ConditionValue1'],
            'ConditionValue2': condition['ConditionValue2'],
        })

def generate_alliance_vanguard(data):
    npc_entry_ids = data['entry_ids']['vanguardalliance']['npcs']
    quest_entry_ids = data['entry_ids']['vanguardalliance']['quests']
    
    for i, group in enumerate(data['alliance_vanguard_npcs']):
        safe_name = "".join([c for c in group['where'] if re.match(r'\w', c)])
        out_file = f"../sql/A-AV-{i}-{safe_name}-npcs.sql"
        fd = open(out_file, 'w')

        if DEBUGGING:
            print(f"\generate_alliance_vanguard()")
            print(f"NPC loop...")
            print(f"Where: {group['where']}")
            print(f"safe_name = {out_file}")

        for i, npc in enumerate(group['npcs']):
            entry = npc_entry_ids + i
            fd.write(sql_new_vendor({
                'Entry': entry,
                'Model_1': npc['models'][0],
                'Model_2': npc['models'][1],
                'Model_3': npc['models'][2],
                'Model_4': npc['models'][3],
                'Name': npc['name'],
                'Title': npc['title'],
                'MinLevel': npc['min_level'],
                'MaxLevel': npc['max_level'],
                'Faction' : npc['faction'],
                'NPCFlags' : npc['npcflags'],
                'Rank' : npc['rank'],
                'Type' : npc['type'],
                'RunSpeed' : npc['runspeed'],
            }))
            fd.write(sql_new_vendor_spawn({
                'Entry': entry,
                'Map': npc['map'],
                'X': npc['X'],
                'Y': npc['Y'],
                'Z': npc['Z'],
                'Orientation': npc['Orientation'],
            }))

    for i, group in enumerate(data['alliance_vanguard_quests']):
        safe_name = "".join([c for c in group['where'] if re.match(r'\w', c)])
        out_file = f"../sql/A-AV-{i}-{safe_name}-quests.sql"
        fd = open(out_file, 'w')

        if DEBUGGING:
            print(f"\generate_alliance_vanguard()")
            print(f"Quest loop...")
            print(f"Where: {group['where']}")
            print(f"safe_name = {out_file}")

        for i, quest in enumerate(group['quests']):
            entry = quest_entry_ids + i
            npc_id = npc_entry_ids + quest['whom']
            fd.write(sql_new_quest({
                'Entry': entry,
                'NPCEntry': npc_id,
                'Flags': quest['Flags'],
                'Level': quest['Level'],
                'LevelMin': quest['LevelMin'], 
                'RewardMoney': quest['RewardMoney'], 
                'Title': quest['Title'],
                'Description': quest['Description'],
                'AreaDescription': quest['AreaDescription'],
                'Details': quest['Details'],
                'Complete': quest['Complete'],
                'RequiredItem1': quest['RequiredItem1'],
                'RequiredItem1Count': quest['RequiredItem1Count'],
                'Objective1Text': quest['Objective1Text'],
                'RequiredItem2': quest['RequiredItem2'],
                'RequiredItem2Count': quest['RequiredItem2Count'],
                'Objective2Text': quest['Objective2Text'],
                'RequiredItem3': quest['RequiredItem3'],
                'RequiredItem3Count': quest['RequiredItem3Count'],
                'Objective3Text': quest['Objective3Text'],
                'RequiredItem4': quest['RequiredItem4'],
                'RequiredItem4Count': quest['RequiredItem4Count'],
                'Objective4Text': quest['Objective4Text'],
                'RequiredItem5': quest['RequiredItem5'],
                'RequiredItem5Count': quest['RequiredItem5Count'],
                'Objective5Text': quest['Objective5Text'],
                'RequiredItem6': quest['RequiredItem6'],
                'RequiredItem6Count': quest['RequiredItem6Count'],
                'Objective6Text': quest['Objective6Text'],
            }))
            fd.write(sql_new_quest_starter({
                'QuestEntry': entry,
                'NPCEntry': npc_id,
            }))
            fd.write(sql_new_quest_ender({
                'QuestEntry': entry,
                'NPCEntry': npc_id,
            }))
            fd.write(sql_new_quest_template_addon({
                'Entry': entry,
                'SpecialFlags': quest['SpecialFlags'],
            }))
            fd.write(sql_new_quest_request_items({
                'Entry': entry,
                'EmoteOnComplete': quest['EmoteOnComplete'],
                'EmoteOnIncomplete': quest['EmoteOnIncomplete'],
                'CompleteText': quest['Complete'],
            }))
            fd.write(sql_new_quest_offer_reward({
                'Entry': entry,
                'Emote1': quest['QuestOfferRewardEmote1'],
                'Emote2': quest['QuestOfferRewardEmote2'],
                'Emote3': quest['QuestOfferRewardEmote3'],
                'Emote4': quest['QuestOfferRewardEmote4'],
                'EmoteDelay1': quest['QuestOfferRewardEmoteDelay1'],
                'EmoteDelay2': quest['QuestOfferRewardEmoteDelay2'],
                'EmoteDelay3': quest['QuestOfferRewardEmoteDelay3'],
                'EmoteDelay4': quest['QuestOfferRewardEmoteDelay4'],
                'RewardText': quest['Complete'],
            }))
            # fd.write(generate_quest_condition({
            #     'SourceEntry': entry,
            #     'SourceTypeOrReferenceId': quest['SourceTypeOrReferenceId'],
            #     'ConditionTypeOrReference': quest['ConditionTypeOrReference'],
            #     'ConditionTarget': quest['ConditionTarget'],
            #     'ConditionValue1': quest['ConditionValue1'],
            #     'ConditionValue2': quest['ConditionValue2'],
            # }))

            if 'conditions' not in quest:
                if DEBUGGING: print(f"No conditions found for quest {entry}")
                continue

            if len(quest['conditions']) <= 0:
                continue

            for condition in quest['conditions']:
                if DEBUGGING: print(f"FOund {condition} for quest {entry}")
                fd.write(generate_quest_condition(data, condition, entry))

def generate_dungeon_vendor_groups(data):
    npc_ids = data['entry_ids']['vendorgroups']['npcs']
    gameobject_ids = data['entry_ids']['vendorgroups']['gameobjects']

    for i, group in enumerate(data['dungeon_vendor_groups']):
        safe_name = "".join([c for c in group['where'] if re.match(r'\w', c)])
        out_file = f"../sql/A-VG-{i}-{safe_name}.sql"
        out_fd = open(out_file, 'w')
        
        if DEBUGGING:
            print(f"\ngenerate_dungeon_vendor_groups()")
            print(f"Where: {group['where']}")
            print(f"safe_name = {safe_name}")

        weaponVendorEntry = npc_ids + i
        if DEBUGGING: print(f"weaponVendorEntry = {weaponVendorEntry}")
        clothingVendorEntry = npc_ids + i
        if DEBUGGING: print(f"clothingVendorEntry = {clothingVendorEntry}")
        otherVendorEntry = npc_ids + i
        if DEBUGGING: print(f"otherVendorEntry = {otherVendorEntry}")

        # The vendors themselves:
        if group['weapon_vendor']:
            weaponVendor = sql_new_vendor({
                'Entry': weaponVendorEntry,
                'Model_1': group['weapon_vendor']['models'][0],
                'Model_2': group['weapon_vendor']['models'][1],
                'Model_3': group['weapon_vendor']['models'][2],
                'Model_4': group['weapon_vendor']['models'][3],
                'Name': group['weapon_vendor']['name'],
                'Title': group['weapon_vendor']['title'],
                'MinLevel': group['weapon_vendor']['min_level'],
                'MaxLevel': group['weapon_vendor']['max_level'],
                'Faction' : group['weapon_vendor']['faction'],
                'NPCFlags' : group['weapon_vendor']['npcflags'],
                'Rank' : group['weapon_vendor']['rank'],
                'Type' : group['weapon_vendor']['type'],
                'RunSpeed' : group['weapon_vendor']['runspeed'],
            })
            weaponVendorSpawn = sql_new_vendor_spawn({
                'Entry': weaponVendorEntry,
                'Map': group['weapon_vendor']['map'],
                'X': group['weapon_vendor']['X'],
                'Y': group['weapon_vendor']['Y'],
                'Z': group['weapon_vendor']['Z'],
                'Orientation': group['weapon_vendor']['Orientation'],
            })
            weaponVendorShopClear = sql_new_npc_vendor_clear({
                'Entry': weaponVendorEntry,
            })

        if group['clothing_vendor']:
            clothingVendor = sql_new_vendor({
                'Entry': clothingVendorEntry,
                'Model_1': group['clothing_vendor']['models'][0],
                'Model_2': group['clothing_vendor']['models'][1],
                'Model_3': group['clothing_vendor']['models'][2],
                'Model_4': group['clothing_vendor']['models'][3],
                'Name': group['clothing_vendor']['name'],
                'Title': group['clothing_vendor']['title'],
                'MinLevel': group['clothing_vendor']['min_level'],
                'MaxLevel': group['clothing_vendor']['max_level'], 
                'Faction' : group['clothing_vendor']['faction'],
                'NPCFlags' : group['clothing_vendor']['npcflags'],
                'Rank' : group['clothing_vendor']['rank'],
                'Type' : group['clothing_vendor']['type'],
                'RunSpeed' : group['clothing_vendor']['runspeed'],
            })
            clothingVendorSpawn = sql_new_vendor_spawn({
                'Entry': clothingVendorEntry,
                'Map': group['clothing_vendor']['map'],
                'X': group['clothing_vendor']['X'],
                'Y': group['clothing_vendor']['Y'],
                'Z': group['clothing_vendor']['Z'],
                'Orientation': group['clothing_vendor']['Orientation'],
            })
            clothingVendorShopClear = sql_new_npc_vendor_clear({
                'Entry': clothingVendorEntry,
            })

        if group['other_vendor']:
            otherVendor = sql_new_vendor({
                'Entry': otherVendorEntry,
                'Model_1': group['other_vendor']['models'][0],
                'Model_2': group['other_vendor']['models'][1],
                'Model_3': group['other_vendor']['models'][2],
                'Model_4': group['other_vendor']['models'][3],
                'Name': group['other_vendor']['name'],
                'Title': group['other_vendor']['title'],
                'MinLevel': group['other_vendor']['min_level'],
                'MaxLevel': group['other_vendor']['max_level'],
                'Faction' : group['other_vendor']['faction'],
                'NPCFlags' : group['other_vendor']['npcflags'],
                'Rank' : group['other_vendor']['rank'],
                'Type' : group['other_vendor']['type'],
                'RunSpeed' : group['other_vendor']['runspeed'],
            })
            otherVendorSpawn = sql_new_vendor_spawn({
                'Entry': otherVendorEntry,
                'Map': group['other_vendor']['map'],
                'X': group['other_vendor']['X'],
                'Y': group['other_vendor']['Y'],
                'Z': group['other_vendor']['Z'],
                'Orientation': group['other_vendor']['Orientation'],
            })
            otherVendorShopClear = sql_new_npc_vendor_clear({
                'Entry': otherVendorEntry,
            })

        # The vendor "home"
        if group['vendor_home']:
            if 'tent01' in group['vendor_home'] and group['vendor_home']['tent01']:
                entryId = group['vendor_home']['tent01']['id']
                x = group['vendor_home']['tent01']['X']
                y = group['vendor_home']['tent01']['Y']
                z = group['vendor_home']['tent01']['Z']
                o = group['vendor_home']['tent01']['Orientation']

                tent01Delete = f"DELETE FROM `gameobject` WHERE (`id` = {entryId} AND `position_x` = {x} AND `position_y` = {y} AND `position_z` = {z});"
                tent01Insert = f"INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES ({entryId}, {group['map']}, 0, 0, 1, 1, {x}, {y}, {z}, {o}, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);"
            
            if 'tent02' in group['vendor_home'] and group['vendor_home']['tent02']:
                entryId = group['vendor_home']['tent02']['id']
                x = group['vendor_home']['tent02']['X']
                y = group['vendor_home']['tent02']['Y']
                z = group['vendor_home']['tent02']['Z']
                o = group['vendor_home']['tent02']['Orientation']

                tent02Delete = f"DELETE FROM `gameobject` WHERE (`id` = {entryId} AND `position_x` = {x} AND `position_y` = {y} AND `position_z` = {z});"
                tent02Insert = f"INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES ({entryId}, {group['map']}, 0, 0, 1, 1, {x}, {y}, {z}, {o}, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);"
            
            if 'tent03' in group['vendor_home'] and group['vendor_home']['tent03']:
                entryId = group['vendor_home']['tent03']['id']
                x = group['vendor_home']['tent03']['X']
                y = group['vendor_home']['tent03']['Y']
                z = group['vendor_home']['tent03']['Z']
                o = group['vendor_home']['tent03']['Orientation']

                tent03Delete = f"DELETE FROM `gameobject` WHERE (`id` = {entryId} AND `position_x` = {x} AND `position_y` = {y} AND `position_z` = {z});"
                tent03Insert = f"INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES ({entryId}, {group['map']}, 0, 0, 1, 1, {x}, {y}, {z}, {o}, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);"
            
            if 'boxes01' in group['vendor_home'] and group['vendor_home']['boxes01']:
                entryId = group['vendor_home']['boxes01']['id']
                x = group['vendor_home']['boxes01']['X']
                y = group['vendor_home']['boxes01']['Y']
                z = group['vendor_home']['boxes01']['Z']
                o = group['vendor_home']['boxes01']['Orientation']

                boxes01Delete = f"DELETE FROM `gameobject` WHERE (`id` = {entryId} AND `position_x` = {x} AND `position_y` = {y} AND `position_z` = {z});"
                boxes01Insert = f"INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES ({entryId}, {group['map']}, 0, 0, 1, 1, {x}, {y}, {z}, {o}, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);"
            
            if 'boxes02' in group['vendor_home'] and group['vendor_home']['boxes02']:
                entryId = group['vendor_home']['boxes02']['id']
                x = group['vendor_home']['boxes02']['X']
                y = group['vendor_home']['boxes02']['Y']
                z = group['vendor_home']['boxes02']['Z']
                o = group['vendor_home']['boxes02']['Orientation']

                boxes02Delete = f"DELETE FROM `gameobject` WHERE (`id` = {entryId} AND `position_x` = {x} AND `position_y` = {y} AND `position_z` = {z});"
                boxes02Insert = f"INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES ({entryId}, {group['map']}, 0, 0, 1, 1, {x}, {y}, {z}, {o}, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);"
            
            if 'boxes03' in group['vendor_home'] and group['vendor_home']['boxes03']:
                entryId = group['vendor_home']['boxes03']['id']
                x = group['vendor_home']['boxes03']['X']
                y = group['vendor_home']['boxes03']['Y']
                z = group['vendor_home']['boxes03']['Z']
                o = group['vendor_home']['boxes03']['Orientation']

                boxes03Delete = f"DELETE FROM `gameobject` WHERE (`id` = {entryId} AND `position_x` = {x} AND `position_y` = {y} AND `position_z` = {z});"
                boxes03Insert = f"INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES ({entryId}, {group['map']}, 0, 0, 1, 1, {x}, {y}, {z}, {o}, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);"
            
            if 'misc01' in group['vendor_home'] and group['vendor_home']['misc01']:
                entryId = group['vendor_home']['misc01']['id']
                x = group['vendor_home']['misc01']['X']
                y = group['vendor_home']['misc01']['Y']
                z = group['vendor_home']['misc01']['Z']
                o = group['vendor_home']['misc01']['Orientation']

                misc01Delete = f"DELETE FROM `gameobject` WHERE (`id` = {entryId} AND `position_x` = {x} AND `position_y` = {y} AND `position_z` = {z});"
                misc01Insert = f"INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES ({entryId}, {group['map']}, 0, 0, 1, 1, {x}, {y}, {z}, {o}, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);"
            
            if 'misc02' in group['vendor_home'] and group['vendor_home']['misc02']:
                entryId = group['vendor_home']['misc02']['id']
                x = group['vendor_home']['misc02']['X']
                y = group['vendor_home']['misc02']['Y']
                z = group['vendor_home']['misc02']['Z']
                o = group['vendor_home']['misc02']['Orientation']

                misc02Delete = f"DELETE FROM `gameobject` WHERE (`id` = {entryId} AND `position_x` = {x} AND `position_y` = {y} AND `position_z` = {z});"
                misc02Insert = f"INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES ({entryId}, {group['map']}, 0, 0, 1, 1, {x}, {y}, {z}, {o}, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);"
            
            if 'misc03' in group['vendor_home'] and group['vendor_home']['misc03']:
                entryId = group['vendor_home']['misc03']['id']
                x = group['vendor_home']['misc03']['X']
                y = group['vendor_home']['misc03']['Y']
                z = group['vendor_home']['misc03']['Z']
                o = group['vendor_home']['misc03']['Orientation']

                misc03Delete = f"DELETE FROM `gameobject` WHERE (`id` = {entryId} AND `position_x` = {x} AND `position_y` = {y} AND `position_z` = {z});"
                misc03Insert = f"INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES ({entryId}, {group['map']}, 0, 0, 1, 1, {x}, {y}, {z}, {o}, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);"


        out_fd.write(f"-- {group['where']}\n")

        if group['weapon_vendor']:
            out_fd.write(f"-- Weapon Merchant\n{weaponVendor}\n{weaponVendorShopClear}\n{weaponVendorSpawn}\n\n")
        
        if group['clothing_vendor']:
            out_fd.write(f"-- Clothing Merchant\n{clothingVendor}\n{clothingVendorShopClear}\n{clothingVendorSpawn}\n\n")
        
        if group['other_vendor']:
            out_fd.write(f"-- Trinket Merchant\n{otherVendor}\n{otherVendorShopClear}\n{otherVendorSpawn}\n\n")

        if group['vendor_home']:
            out_fd.write("-- Vendor Home Game Objects\n")
            if 'tent01' in group['vendor_home'] and group['vendor_home']['tent01']:
                out_fd.write("-- tent 01\n")
                out_fd.write(f"{tent01Delete}\n{tent01Insert}\n\n")
            if 'tent02' in group['vendor_home'] and group['vendor_home']['tent02']:
                out_fd.write("-- tent 02\n")
                out_fd.write(f"{tent02Delete}\n{tent02Insert}\n\n")
            if 'tent03' in group['vendor_home'] and group['vendor_home']['tent03']:
                out_fd.write("-- tent 03\n")
                out_fd.write(f"{tent03Delete}\n{tent03Insert}\n\n")
            if 'boxes01' in group['vendor_home'] and group['vendor_home']['boxes01']:
                out_fd.write("-- boxes 01\n")
                out_fd.write(f"{boxes01Delete}\n{boxes01Insert}\n\n")
            if 'boxes02' in group['vendor_home'] and group['vendor_home']['boxes02']:
                out_fd.write("-- boxes 02\n")
                out_fd.write(f"{boxes02Delete}\n{boxes02Insert}\n\n")
            if 'boxes03' in group['vendor_home'] and group['vendor_home']['boxes03']:
                out_fd.write("-- boxes 03\n")
                out_fd.write(f"{boxes03Delete}\n{boxes03Insert}\n\n")
            if 'misc01' in group['vendor_home'] and group['vendor_home']['misc01']:
                out_fd.write("-- misc 01\n")
                out_fd.write(f"{misc01Delete}\n{misc01Insert}\n\n")
            if 'misc02' in group['vendor_home'] and group['vendor_home']['misc02']:
                out_fd.write("-- misc 02\n")
                out_fd.write(f"{misc02Delete}\n{misc02Insert}\n\n")
            if 'misc03' in group['vendor_home'] and group['vendor_home']['misc03']:
                out_fd.write("-- misc 03\n")
                out_fd.write(f"{misc03Delete}\n{misc03Insert}\n\n")

        if len(group['items']) <= 0:
            out_fd.write("-- NO ITEMS FOR THIS VENDOR GROUP\n\n")
            continue

        seenBefore = [] # look for duplicates
        for i, item in enumerate(group['items']):
            if item['id'] in seenBefore:
                print(f"Duplicate found: {item['id']}\n\n")
                sys.exit(-1)

            seenBefore.append(item['id'])
            thisTier = group['tier']
            thisItemType = item['type']
            newPrice = int(data['costs']['base'] * (data['costs'][thisTier][thisItemType]))
            
            if item['type'] == 'weapon' and group['weapon_vendor'] != None:
                out_fd.write(f"-- Weapon: {item['id']} / {newPrice}c / {item['npc']}\n")
                out_fd.write(f"UPDATE `item_template` SET `BuyPrice` = {newPrice} WHERE (`entry` = {item['id']});\n")
                out_fd.write(f"DELETE FROM `npc_vendor` WHERE (`entry` = {weaponVendorEntry} AND `item` = {item['id']});\n")
                out_fd.write(f"INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES ({weaponVendorEntry}, 0, {item['id']}, 0, 0, 0, 0);\n\n")

                # Reputation limitations
                # SourceTypeOrReferenceId = CONDITION_SOURCE_TYPE_NPC_VENDOR
                # SourceGroup = weaponVendorEntry
                # SourceEntry = item['id']
                # SourceId = 0
                # ConditionTarget = 0
                # ElseGroup = 1
                # ConditionTypeOrReference = CONDITION_REPUTATION_RANK
                # ConditionValue1 = REPUTATION_RANK_HONORED
                # ScriptName = ""

                # out_fd.write(f"DELETE FROM conditions WHERE `SourceTypeOrReferenceId`={SourceTypeOrReferenceId} AND `SourceGroup`={SourceGroup} AND `SourceEntry`={SourceEntry} AND `ConditionTypeOrReference`={ConditionTypeOrReference} AND `ConditionValue1`={ConditionValue1};\n")
                # out_fd.write(f"INSERT INTO conditions (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ConditionTarget`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ScriptName`) VALUES ({SourceTypeOrReferenceId},{SourceGroup},{SourceEntry},{SourceId},{ConditionTarget},{ElseGroup},{ConditionTypeOrReference},{ConditionValue1},'');\n")

                # SourceTypeOrReferenceId = CONDITION_SOURCE_TYPE_NPC_VENDOR
                # SourceGroup = weaponVendorEntry
                # SourceEntry = item['id']
                # SourceId = 0
                # ConditionTarget = 0
                # ElseGroup = 1
                # ConditionTypeOrReference = CONDITION_LEVEL
                # ConditionValue1 = data['costs'][item['tier']]['level']
                # ConditionValue2 = 3 # higher or equal
                # ScriptName = ""
            
                # out_fd.write(f"DELETE FROM conditions WHERE `SourceTypeOrReferenceId`={SourceTypeOrReferenceId} AND `SourceGroup`={SourceGroup} AND `SourceEntry`={SourceEntry} AND `ConditionTypeOrReference`={ConditionTypeOrReference} AND `ConditionValue1`={ConditionValue1} AND `ConditionValue2`={ConditionValue2};\n")
                # out_fd.write(f"INSERT INTO conditions (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ConditionTarget`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ScriptName`) VALUES ({SourceTypeOrReferenceId},{SourceGroup},{SourceEntry},{SourceId},{ConditionTarget},{ElseGroup},{ConditionTypeOrReference},{ConditionValue1},{ConditionValue2},'');\n\n")

            if item['type'] == 'clothing' and group['clothing_vendor'] != None:
                out_fd.write(f"-- Clothing: {item['id']} / {newPrice}c / {item['npc']}\n")
                out_fd.write(f"UPDATE `item_template` SET `BuyPrice` = {newPrice} WHERE (`entry` = {item['id']});\n")
                out_fd.write(f"DELETE FROM `npc_vendor` WHERE (`entry` = {clothingVendorEntry} AND `item` = {item['id']});\n")
                out_fd.write(f"INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES ({clothingVendorEntry}, 0, {item['id']}, 0, 0, 0, 0);\n\n")

                # Reputation limitations
                # SourceTypeOrReferenceId = CONDITION_SOURCE_TYPE_NPC_VENDOR
                # SourceGroup = clothingVendorEntry
                # SourceEntry = item['id']
                # SourceId = 0
                # ConditionTarget = 0
                # ElseGroup = 1
                # ConditionTypeOrReference = CONDITION_REPUTATION_RANK
                # ConditionValue1 = REPUTATION_RANK_HONORED
                # ScriptName = ""

                # out_fd.write(f"DELETE FROM conditions WHERE `SourceTypeOrReferenceId`={SourceTypeOrReferenceId} AND `SourceGroup`={SourceGroup} AND `SourceEntry`={SourceEntry} AND `ConditionTypeOrReference`={ConditionTypeOrReference} AND `ConditionValue1`={ConditionValue1};\n")
                # out_fd.write(f"INSERT INTO conditions (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ConditionTarget`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ScriptName`) VALUES ({SourceTypeOrReferenceId},{SourceGroup},{SourceEntry},{SourceId},{ConditionTarget},{ElseGroup},{ConditionTypeOrReference},{ConditionValue1},'');\n")

                # SourceTypeOrReferenceId = CONDITION_SOURCE_TYPE_NPC_VENDOR
                # SourceGroup = clothingVendorEntry
                # SourceEntry = item['id']
                # SourceId = 0
                # ConditionTarget = 0
                # ElseGroup = 1
                # ConditionTypeOrReference = CONDITION_LEVEL
                # ConditionValue1 = data['costs'][item['tier']]['level']
                # ConditionValue2 = 3 # higher or equal
                # ScriptName = ""
            
                # out_fd.write(f"DELETE FROM conditions WHERE `SourceTypeOrReferenceId`={SourceTypeOrReferenceId} AND `SourceGroup`={SourceGroup} AND `SourceEntry`={SourceEntry} AND `ConditionTypeOrReference`={ConditionTypeOrReference} AND `ConditionValue1`={ConditionValue1} AND `ConditionValue2`={ConditionValue2};\n")
                # out_fd.write(f"INSERT INTO conditions (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ConditionTarget`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ScriptName`) VALUES ({SourceTypeOrReferenceId},{SourceGroup},{SourceEntry},{SourceId},{ConditionTarget},{ElseGroup},{ConditionTypeOrReference},{ConditionValue1},{ConditionValue2},'');\n\n")
            
            if item['type'] == 'other' and group['other_vendor'] != None:
                out_fd.write(f"-- Trinkets/Other: {item['id']} / {newPrice}c / {item['npc']}\n")
                out_fd.write(f"UPDATE `item_template` SET `BuyPrice` = {newPrice} WHERE (`entry` = {item['id']});\n")
                out_fd.write(f"DELETE FROM `npc_vendor` WHERE (`entry` = {otherVendorEntry} AND `item` = {item['id']});\n")
                out_fd.write(f"INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES ({otherVendorEntry}, 0, {item['id']}, 0, 0, 0, 0);\n\n")

                # Reputation limitations
                # SourceTypeOrReferenceId = CONDITION_SOURCE_TYPE_NPC_VENDOR
                # SourceGroup = otherVendorEntry
                # SourceEntry = item['id']
                # SourceId = 0
                # ConditionTarget = 0
                # ElseGroup = 1
                # ConditionTypeOrReference = CONDITION_REPUTATION_RANK
                # ConditionValue1 = REPUTATION_RANK_HONORED
                # ScriptName = ""

                # out_fd.write(f"DELETE FROM conditions WHERE `SourceTypeOrReferenceId`={SourceTypeOrReferenceId} AND `SourceGroup`={SourceGroup} AND `SourceEntry`={SourceEntry} AND `ConditionTypeOrReference`={ConditionTypeOrReference} AND `ConditionValue1`={ConditionValue1};\n")
                # out_fd.write(f"INSERT INTO conditions (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ConditionTarget`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ScriptName`) VALUES ({SourceTypeOrReferenceId},{SourceGroup},{SourceEntry},{SourceId},{ConditionTarget},{ElseGroup},{ConditionTypeOrReference},{ConditionValue1},'');\n")

                # SourceTypeOrReferenceId = CONDITION_SOURCE_TYPE_NPC_VENDOR
                # SourceGroup = otherVendorEntry
                # SourceEntry = item['id']
                # SourceId = 0
                # ConditionTarget = 0
                # ElseGroup = 1
                # ConditionTypeOrReference = CONDITION_LEVEL
                # ConditionValue1 = data['costs'][item['tier']]['level']
                # ConditionValue2 = 3 # higher or equal
                # ScriptName = ""
            
                # out_fd.write(f"DELETE FROM conditions WHERE `SourceTypeOrReferenceId`={SourceTypeOrReferenceId} AND `SourceGroup`={SourceGroup} AND `SourceEntry`={SourceEntry} AND `ConditionTypeOrReference`={ConditionTypeOrReference} AND `ConditionValue1`={ConditionValue1} AND `ConditionValue2`={ConditionValue2};\n")
                # out_fd.write(f"INSERT INTO conditions (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ConditionTarget`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ScriptName`) VALUES ({SourceTypeOrReferenceId},{SourceGroup},{SourceEntry},{SourceId},{ConditionTarget},{ElseGroup},{ConditionTypeOrReference},{ConditionValue1},{ConditionValue2},'');\n\n")

def main():
    data = None
    with open('entities.yaml', 'r') as fd:
        data = yaml.load(fd, Loader=yaml.CLoader)

    generate_dungeon_vendor_groups(data)
    generate_alliance_vanguard(data)

if __name__ == "__main__":
    main()
