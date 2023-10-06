
import sys
import yaml 

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

# Global entry of all our vendor groups
entry = 9300000
gameobject_guid_entry = 2500000
    
def generate_dungeon_vendor_groups(data, fd):
    for i, group in enumerate(data['dungeon_vendor_groups']):
        entryIDStep = i*10 # allows us to have groups of 9 vendors per area/dungeon/raid
        guidGOStep = i*10 # allows us to have 9 items in the vendor "home" area
        weaponVendorEntry = entry+entryIDStep+1
        clothingVendorEntry = entry+entryIDStep+2
        otherVendorEntry = entry+entryIDStep+3
        # The vendors themselves:
        if group['weapon_vendor']:
            weaponVendorDelete = f"DELETE FROM `creature_template` WHERE `entry`= {weaponVendorEntry};"
            weaponVendor = f"INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES ({weaponVendorEntry}, 0, 0, 0, 0, 0, {group['weapon_vendor']['models'][0]}, {group['weapon_vendor']['models'][1]}, {group['weapon_vendor']['models'][2]}, {group['weapon_vendor']['models'][3]}, '{group['weapon_vendor']['name']}', '{group['weapon_vendor']['title']}', 'Buy', 0, {group['weapon_vendor']['min_level']}, {group['weapon_vendor']['max_level']}, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);"
            weaponVendorSpawnDelete = f"DELETE FROM `creature` WHERE `id1`={weaponVendorEntry};"
            weaponVendorShopClear = f"DELETE FROM `npc_vendor` WHERE (`entry` = {weaponVendorEntry});\n"
            weaponVendorSpawn = f"INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES ({weaponVendorEntry},{group['map']},{group['weapon_vendor']['X']},{group['weapon_vendor']['Y']},{group['weapon_vendor']['Z']},{group['weapon_vendor']['Orientation']});"

        if group['clothing_vendor']:
            clothingVendorDelete = f"DELETE FROM `creature_template` WHERE `entry`= {clothingVendorEntry};"
            clothingVendor = f"INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES ({clothingVendorEntry}, 0, 0, 0, 0, 0, {group['clothing_vendor']['models'][0]}, {group['clothing_vendor']['models'][1]}, {group['clothing_vendor']['models'][2]}, {group['clothing_vendor']['models'][3]}, '{group['clothing_vendor']['name']}', '{group['clothing_vendor']['title']}', 'Buy', 0, {group['clothing_vendor']['min_level']}, {group['clothing_vendor']['max_level']}, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);"
            clothingVendorSpawnDelete = f"DELETE FROM `creature` WHERE `id1`={clothingVendorEntry};"
            clothingVendorShopClear = f"DELETE FROM `npc_vendor` WHERE (`entry` = {clothingVendorEntry});\n"
            clothingVendorSpawn = f"INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES ({clothingVendorEntry},{group['map']},{group['clothing_vendor']['X']},{group['clothing_vendor']['Y']},{group['clothing_vendor']['Z']},{group['clothing_vendor']['Orientation']});"

        if group['other_vendor']:
            otherVendorDelete = f"DELETE FROM `creature_template` WHERE `entry`= {otherVendorEntry};"
            otherVendor = f"INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES ({otherVendorEntry}, 0, 0, 0, 0, 0, {group['other_vendor']['models'][0]}, {group['other_vendor']['models'][1]}, {group['other_vendor']['models'][2]}, {group['other_vendor']['models'][3]}, '{group['other_vendor']['name']}', '{group['other_vendor']['title']}', 'Buy', 0, {group['other_vendor']['min_level']}, {group['other_vendor']['max_level']}, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);"
            otherVendorSpawnDelete = f"DELETE FROM `creature` WHERE `id1`={otherVendorEntry};"
            otherVendorShopClear = f"DELETE FROM `npc_vendor` WHERE (`entry` = {otherVendorEntry});\n"
            otherVendorSpawn = f"INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES ({otherVendorEntry},{group['map']},{group['other_vendor']['X']},{group['other_vendor']['Y']},{group['other_vendor']['Z']},{group['other_vendor']['Orientation']});"

        # The vendor "home"
        if group['vendor_home']:
            if 'tent01' in group['vendor_home'] and group['vendor_home']['tent01']:
                entryId = group['vendor_home']['tent01']['id']
                guidId = gameobject_guid_entry+guidGOStep+1
                x = group['vendor_home']['tent01']['X']
                y = group['vendor_home']['tent01']['Y']
                z = group['vendor_home']['tent01']['Z']
                o = group['vendor_home']['tent01']['Orientation']

                tent01Delete = f"DELETE FROM `gameobject` WHERE (`guid` = {guidId});"
                tent01Insert = f"INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES ({guidId}, {entryId}, {group['map']}, 0, 0, 1, 1, {x}, {y}, {z}, {o}, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);"
            
            if 'tent02' in group['vendor_home'] and group['vendor_home']['tent02']:
                entryId = group['vendor_home']['tent02']['id']
                guidId = gameobject_guid_entry+guidGOStep+2
                x = group['vendor_home']['tent02']['X']
                y = group['vendor_home']['tent02']['Y']
                z = group['vendor_home']['tent02']['Z']
                o = group['vendor_home']['tent02']['Orientation']

                tent02Delete = f"DELETE FROM `gameobject` WHERE (`guid` = {guidId});"
                tent02Insert = f"INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES ({guidId}, {entryId}, {group['map']}, 0, 0, 1, 1, {x}, {y}, {z}, {o}, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);"
            
            if 'tent03' in group['vendor_home'] and group['vendor_home']['tent03']:
                entryId = group['vendor_home']['tent03']['id']
                guidId = gameobject_guid_entry+guidGOStep+3
                x = group['vendor_home']['tent03']['X']
                y = group['vendor_home']['tent03']['Y']
                z = group['vendor_home']['tent03']['Z']
                o = group['vendor_home']['tent03']['Orientation']

                tent03Delete = f"DELETE FROM `gameobject` WHERE (`guid` = {guidId});"
                tent03Insert = f"INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES ({guidId}, {entryId}, {group['map']}, 0, 0, 1, 1, {x}, {y}, {z}, {o}, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);"
            
            if 'boxes01' in group['vendor_home'] and group['vendor_home']['boxes01']:
                entryId = group['vendor_home']['boxes01']['id']
                guidId = gameobject_guid_entry+guidGOStep+4
                x = group['vendor_home']['boxes01']['X']
                y = group['vendor_home']['boxes01']['Y']
                z = group['vendor_home']['boxes01']['Z']
                o = group['vendor_home']['boxes01']['Orientation']

                boxes01Delete = f"DELETE FROM `gameobject` WHERE (`guid` = {guidId});"
                boxes01Insert = f"INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES ({guidId}, {entryId}, {group['map']}, 0, 0, 1, 1, {x}, {y}, {z}, {o}, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);"
            
            if 'boxes02' in group['vendor_home'] and group['vendor_home']['boxes02']:
                entryId = group['vendor_home']['boxes02']['id']
                guidId = gameobject_guid_entry+guidGOStep+5
                x = group['vendor_home']['boxes02']['X']
                y = group['vendor_home']['boxes02']['Y']
                z = group['vendor_home']['boxes02']['Z']
                o = group['vendor_home']['boxes02']['Orientation']

                boxes02Delete = f"DELETE FROM `gameobject` WHERE (`guid` = {guidId});"
                boxes02Insert = f"INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES ({guidId}, {entryId}, {group['map']}, 0, 0, 1, 1, {x}, {y}, {z}, {o}, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);"
            
            if 'boxes03' in group['vendor_home'] and group['vendor_home']['boxes03']:
                entryId = group['vendor_home']['boxes03']['id']
                guidId = gameobject_guid_entry+guidGOStep+6
                x = group['vendor_home']['boxes03']['X']
                y = group['vendor_home']['boxes03']['Y']
                z = group['vendor_home']['boxes03']['Z']
                o = group['vendor_home']['boxes03']['Orientation']

                boxes03Delete = f"DELETE FROM `gameobject` WHERE (`guid` = {guidId});"
                boxes03Insert = f"INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES ({guidId}, {entryId}, {group['map']}, 0, 0, 1, 1, {x}, {y}, {z}, {o}, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);"
            
            if 'misc01' in group['vendor_home'] and group['vendor_home']['misc01']:
                entryId = group['vendor_home']['misc01']['id']
                guidId = gameobject_guid_entry+guidGOStep+7
                x = group['vendor_home']['misc01']['X']
                y = group['vendor_home']['misc01']['Y']
                z = group['vendor_home']['misc01']['Z']
                o = group['vendor_home']['misc01']['Orientation']

                misc01Delete = f"DELETE FROM `gameobject` WHERE (`guid` = {guidId});"
                misc01Insert = f"INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES ({guidId}, {entryId}, {group['map']}, 0, 0, 1, 1, {x}, {y}, {z}, {o}, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);"
            
            if 'misc02' in group['vendor_home'] and group['vendor_home']['misc02']:
                entryId = group['vendor_home']['misc02']['id']
                guidId = gameobject_guid_entry+guidGOStep+8
                x = group['vendor_home']['misc02']['X']
                y = group['vendor_home']['misc02']['Y']
                z = group['vendor_home']['misc02']['Z']
                o = group['vendor_home']['misc02']['Orientation']

                misc02Delete = f"DELETE FROM `gameobject` WHERE (`guid` = {guidId});"
                misc02Insert = f"INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES ({guidId}, {entryId}, {group['map']}, 0, 0, 1, 1, {x}, {y}, {z}, {o}, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);"
            
            if 'misc03' in group['vendor_home'] and group['vendor_home']['misc03']:
                entryId = group['vendor_home']['misc03']['id']
                guidId = gameobject_guid_entry+guidGOStep+9
                x = group['vendor_home']['misc03']['X']
                y = group['vendor_home']['misc03']['Y']
                z = group['vendor_home']['misc03']['Z']
                o = group['vendor_home']['misc03']['Orientation']

                misc03Delete = f"DELETE FROM `gameobject` WHERE (`guid` = {guidId});"
                misc03Insert = f"INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES ({guidId}, {entryId}, {group['map']}, 0, 0, 1, 1, {x}, {y}, {z}, {o}, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);"


        fd.write(f"-- {group['where']}\n")

        if group['weapon_vendor']:
            fd.write(f"-- Weapon Merchant\n{weaponVendorDelete}\n{weaponVendor}\n{weaponVendorSpawnDelete}\n{weaponVendorShopClear}\n{weaponVendorSpawn}\n\n")
        
        if group['clothing_vendor']:
            fd.write(f"-- Clothing Merchant\n{clothingVendorDelete}\n{clothingVendor}\n{clothingVendorSpawnDelete}\n{clothingVendorShopClear}\n{clothingVendorSpawn}\n\n")
        
        if group['other_vendor']:
            fd.write(f"-- Trinket Merchant\n{otherVendorDelete}\n{otherVendor}\n{otherVendorSpawnDelete}\n{otherVendorShopClear}\n{otherVendorSpawn}\n\n")

        if group['vendor_home']:
            fd.write("-- Vendor Home Game Objects\n")
            if 'tent01' in group['vendor_home'] and group['vendor_home']['tent01']:
                fd.write("-- tent 01\n")
                fd.write(f"{tent01Delete}\n{tent01Insert}\n\n")
            if 'tent02' in group['vendor_home'] and group['vendor_home']['tent02']:
                fd.write("-- tent 02\n")
                fd.write(f"{tent02Delete}\n{tent02Insert}\n\n")
            if 'tent03' in group['vendor_home'] and group['vendor_home']['tent03']:
                fd.write("-- tent 03\n")
                fd.write(f"{tent03Delete}\n{tent03Insert}\n\n")
            if 'boxes01' in group['vendor_home'] and group['vendor_home']['boxes01']:
                fd.write("-- boxes 01\n")
                fd.write(f"{boxes01Delete}\n{boxes01Insert}\n\n")
            if 'boxes02' in group['vendor_home'] and group['vendor_home']['boxes02']:
                fd.write("-- boxes 02\n")
                fd.write(f"{boxes02Delete}\n{boxes02Insert}\n\n")
            if 'boxes03' in group['vendor_home'] and group['vendor_home']['boxes03']:
                fd.write("-- boxes 03\n")
                fd.write(f"{boxes03Delete}\n{boxes03Insert}\n\n")
            if 'misc01' in group['vendor_home'] and group['vendor_home']['misc01']:
                fd.write("-- misc 01\n")
                fd.write(f"{misc01Delete}\n{misc01Insert}\n\n")
            if 'misc02' in group['vendor_home'] and group['vendor_home']['misc02']:
                fd.write("-- misc 02\n")
                fd.write(f"{misc02Delete}\n{misc02Insert}\n\n")
            if 'misc03' in group['vendor_home'] and group['vendor_home']['misc03']:
                fd.write("-- misc 03\n")
                fd.write(f"{misc03Delete}\n{misc03Insert}\n\n")

        if len(group['items']) <= 0:
            fd.write("-- NO ITEMS FOR THIS VENDOR GROUP\n\n")
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
                fd.write(f"-- Weapon: {item['id']} / {newPrice}c / {item['npc']}\n")
                fd.write(f"UPDATE `item_template` SET `BuyPrice` = {newPrice} WHERE (`entry` = {item['id']});\n")
                fd.write(f"DELETE FROM `npc_vendor` WHERE (`entry` = {weaponVendorEntry} AND `item` = {item['id']});\n")
                fd.write(f"INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES ({weaponVendorEntry}, 0, {item['id']}, 0, 0, 0, 0);\n\n")

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

                # fd.write(f"DELETE FROM conditions WHERE `SourceTypeOrReferenceId`={SourceTypeOrReferenceId} AND `SourceGroup`={SourceGroup} AND `SourceEntry`={SourceEntry} AND `ConditionTypeOrReference`={ConditionTypeOrReference} AND `ConditionValue1`={ConditionValue1};\n")
                # fd.write(f"INSERT INTO conditions (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ConditionTarget`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ScriptName`) VALUES ({SourceTypeOrReferenceId},{SourceGroup},{SourceEntry},{SourceId},{ConditionTarget},{ElseGroup},{ConditionTypeOrReference},{ConditionValue1},'');\n")

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
            
                # fd.write(f"DELETE FROM conditions WHERE `SourceTypeOrReferenceId`={SourceTypeOrReferenceId} AND `SourceGroup`={SourceGroup} AND `SourceEntry`={SourceEntry} AND `ConditionTypeOrReference`={ConditionTypeOrReference} AND `ConditionValue1`={ConditionValue1} AND `ConditionValue2`={ConditionValue2};\n")
                # fd.write(f"INSERT INTO conditions (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ConditionTarget`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ScriptName`) VALUES ({SourceTypeOrReferenceId},{SourceGroup},{SourceEntry},{SourceId},{ConditionTarget},{ElseGroup},{ConditionTypeOrReference},{ConditionValue1},{ConditionValue2},'');\n\n")

            if item['type'] == 'clothing' and group['clothing_vendor'] != None:
                fd.write(f"-- Clothing: {item['id']} / {newPrice}c / {item['npc']}\n")
                fd.write(f"UPDATE `item_template` SET `BuyPrice` = {newPrice} WHERE (`entry` = {item['id']});\n")
                fd.write(f"DELETE FROM `npc_vendor` WHERE (`entry` = {clothingVendorEntry} AND `item` = {item['id']});\n")
                fd.write(f"INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES ({clothingVendorEntry}, 0, {item['id']}, 0, 0, 0, 0);\n\n")

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

                # fd.write(f"DELETE FROM conditions WHERE `SourceTypeOrReferenceId`={SourceTypeOrReferenceId} AND `SourceGroup`={SourceGroup} AND `SourceEntry`={SourceEntry} AND `ConditionTypeOrReference`={ConditionTypeOrReference} AND `ConditionValue1`={ConditionValue1};\n")
                # fd.write(f"INSERT INTO conditions (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ConditionTarget`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ScriptName`) VALUES ({SourceTypeOrReferenceId},{SourceGroup},{SourceEntry},{SourceId},{ConditionTarget},{ElseGroup},{ConditionTypeOrReference},{ConditionValue1},'');\n")

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
            
                # fd.write(f"DELETE FROM conditions WHERE `SourceTypeOrReferenceId`={SourceTypeOrReferenceId} AND `SourceGroup`={SourceGroup} AND `SourceEntry`={SourceEntry} AND `ConditionTypeOrReference`={ConditionTypeOrReference} AND `ConditionValue1`={ConditionValue1} AND `ConditionValue2`={ConditionValue2};\n")
                # fd.write(f"INSERT INTO conditions (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ConditionTarget`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ScriptName`) VALUES ({SourceTypeOrReferenceId},{SourceGroup},{SourceEntry},{SourceId},{ConditionTarget},{ElseGroup},{ConditionTypeOrReference},{ConditionValue1},{ConditionValue2},'');\n\n")
            
            if item['type'] == 'other' and group['other_vendor'] != None:
                fd.write(f"-- Trinkets/Other: {item['id']} / {newPrice}c / {item['npc']}\n")
                fd.write(f"UPDATE `item_template` SET `BuyPrice` = {newPrice} WHERE (`entry` = {item['id']});\n")
                fd.write(f"DELETE FROM `npc_vendor` WHERE (`entry` = {otherVendorEntry} AND `item` = {item['id']});\n")
                fd.write(f"INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES ({otherVendorEntry}, 0, {item['id']}, 0, 0, 0, 0);\n\n")

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

                # fd.write(f"DELETE FROM conditions WHERE `SourceTypeOrReferenceId`={SourceTypeOrReferenceId} AND `SourceGroup`={SourceGroup} AND `SourceEntry`={SourceEntry} AND `ConditionTypeOrReference`={ConditionTypeOrReference} AND `ConditionValue1`={ConditionValue1};\n")
                # fd.write(f"INSERT INTO conditions (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ConditionTarget`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ScriptName`) VALUES ({SourceTypeOrReferenceId},{SourceGroup},{SourceEntry},{SourceId},{ConditionTarget},{ElseGroup},{ConditionTypeOrReference},{ConditionValue1},'');\n")

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
            
                # fd.write(f"DELETE FROM conditions WHERE `SourceTypeOrReferenceId`={SourceTypeOrReferenceId} AND `SourceGroup`={SourceGroup} AND `SourceEntry`={SourceEntry} AND `ConditionTypeOrReference`={ConditionTypeOrReference} AND `ConditionValue1`={ConditionValue1} AND `ConditionValue2`={ConditionValue2};\n")
                # fd.write(f"INSERT INTO conditions (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ConditionTarget`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ScriptName`) VALUES ({SourceTypeOrReferenceId},{SourceGroup},{SourceEntry},{SourceId},{ConditionTarget},{ElseGroup},{ConditionTypeOrReference},{ConditionValue1},{ConditionValue2},'');\n\n")

def main():
    data = None
    with open('entities.yaml', 'r') as fd:
        data = yaml.load(fd, Loader=yaml.CLoader)

    with open('results/out.sql', 'w') as fd:
        generate_dungeon_vendor_groups(data, fd)

if __name__ == "__main__":
    main()
