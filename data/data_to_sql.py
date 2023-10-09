
import os
import sys
import yaml 

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

# Global state maintained across the entire runtime
last_entry_id = 0
   
def new_vendor(data):
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
        )

def new_vendor_spawn(data):
    with open('templates/npc_spawn.sql', 'r') as fd:
        return fd.read().format(
            Entry = data['Entry'],
            Map = data['Map'],
            X = data['X'],
            Y = data['Y'],
            Z = data['Z'],
            Orientation = data['Orientation']           
        )

def new_npc_vendor_clear(data):
    with open('templates/npc_vendor_clear.sql', 'r') as fd:
        return fd.read().format(
            Entry = data['Entry'],
        )

def next_entry_id():
    global last_entry_id
    last_entry_id += 1
    return last_entry_id - 1

def generate_dungeon_vendor_groups(data):
    for i, group in enumerate(data['dungeon_vendor_groups']):
        out_file = f"../sql/VG-{i}-{group['where']}.sql"
        out_fd = open(out_file, 'w')
        
        if DEBUGGING: print(f"\nWhere: {group['where']}")

        weaponVendorEntry = next_entry_id()
        if DEBUGGING: print(f"weaponVendorEntry = {weaponVendorEntry}")
        clothingVendorEntry = next_entry_id()
        if DEBUGGING: print(f"clothingVendorEntry = {clothingVendorEntry}")
        otherVendorEntry = next_entry_id()
        if DEBUGGING: print(f"otherVendorEntry = {otherVendorEntry}")

        # The vendors themselves:
        if group['weapon_vendor']:
            weaponVendor = new_vendor({
                'Entry': weaponVendorEntry,
                'Model_1': group['weapon_vendor']['models'][0],
                'Model_2': group['weapon_vendor']['models'][1],
                'Model_3': group['weapon_vendor']['models'][2],
                'Model_4': group['weapon_vendor']['models'][3],
                'Name': group['weapon_vendor']['name'],
                'Title': group['weapon_vendor']['title'],
                'MinLevel': group['weapon_vendor']['min_level'],
                'MaxLevel': group['weapon_vendor']['max_level'], 
            })
            weaponVendorSpawn = new_vendor_spawn({
                'Entry': weaponVendorEntry,
                'Map': group['weapon_vendor']['map'],
                'X': group['weapon_vendor']['X'],
                'Y': group['weapon_vendor']['Y'],
                'Z': group['weapon_vendor']['Z'],
                'Orientation': group['weapon_vendor']['Orientation'],
            })
            weaponVendorShopClear = new_npc_vendor_clear({
                'Entry': weaponVendorEntry,
            })

        if group['clothing_vendor']:
            clothingVendor = new_vendor({
                'Entry': clothingVendorEntry,
                'Model_1': group['clothing_vendor']['models'][0],
                'Model_2': group['clothing_vendor']['models'][1],
                'Model_3': group['clothing_vendor']['models'][2],
                'Model_4': group['clothing_vendor']['models'][3],
                'Name': group['clothing_vendor']['name'],
                'Title': group['clothing_vendor']['title'],
                'MinLevel': group['clothing_vendor']['min_level'],
                'MaxLevel': group['clothing_vendor']['max_level'], 
            })
            clothingVendorSpawn = new_vendor_spawn({
                'Entry': clothingVendorEntry,
                'Map': group['clothing_vendor']['map'],
                'X': group['clothing_vendor']['X'],
                'Y': group['clothing_vendor']['Y'],
                'Z': group['clothing_vendor']['Z'],
                'Orientation': group['clothing_vendor']['Orientation'],
            })
            clothingVendorShopClear = new_npc_vendor_clear({
                'Entry': clothingVendorEntry,
            })

        if group['other_vendor']:
            otherVendor = new_vendor({
                'Entry': otherVendorEntry,
                'Model_1': group['other_vendor']['models'][0],
                'Model_2': group['other_vendor']['models'][1],
                'Model_3': group['other_vendor']['models'][2],
                'Model_4': group['other_vendor']['models'][3],
                'Name': group['other_vendor']['name'],
                'Title': group['other_vendor']['title'],
                'MinLevel': group['other_vendor']['min_level'],
                'MaxLevel': group['other_vendor']['max_level'], 
            })
            otherVendorSpawn = new_vendor_spawn({
                'Entry': otherVendorEntry,
                'Map': group['other_vendor']['map'],
                'X': group['other_vendor']['X'],
                'Y': group['other_vendor']['Y'],
                'Z': group['other_vendor']['Z'],
                'Orientation': group['other_vendor']['Orientation'],
            })
            otherVendorShopClear = new_npc_vendor_clear({
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

def generate_alliance_vangaurd(data):
    pass

def main():
    data = None
    with open('entities.yaml', 'r') as fd:
        data = yaml.load(fd, Loader=yaml.CLoader)

    global last_entry_id
    last_entry_id = data['entry_id_start']

    if DEBUGGING:
        print(f"last_entry_id = {last_entry_id}")

    generate_dungeon_vendor_groups(data)
    generate_alliance_vangaurd(data)

if __name__ == "__main__":
    main()
