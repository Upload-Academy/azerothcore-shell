-- Shadowfang Keep
-- Weapon Merchant

SET
@Entry := 522004,
@ModelID1 := 7106, -- four different models for some variation
@ModelID2 := 0,
@ModelID3 := 0,
@ModelID4 := 0,
@Name := "Rixxle",
@Subname := "Weapons",
@MinLevel := 25,
@MaxLevel := 30,
@Faction := 120,
@NPCFlags := 129,
@Rank := 0,
@Type := 7,
@RunSpeed := 1.14286;

DELETE FROM `creature_template` WHERE `entry` IN (@Entry);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (@Entry, 0, 0, 0, 0, 0, @ModelID1, @ModelID2, @ModelID3, @ModelID4, @Name, @Subname, NULL, @MinLevel, @MaxLevel, 0, 2, @Faction, @NPCFlags, 1, @RunSpeed, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1250, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);
-- 
-- Clear NPC vendor entries.
-- npc_vendor_clear.sql
-- 

SET @Entry = 522004;

DELETE FROM `npc_vendor` WHERE (`entry` = @Entry);

SET
@Entry := 522004,
@Map := 0,
@X := -315.94293,
@Y := 1448.59252,
@Z := 31.213396,
@Orientation := 0.038621;

DELETE FROM `creature` WHERE `id1`=@Entry;
INSERT INTO `creature` (
    `id1`,
    `map`,
    `position_x`,
    `position_y`,
    `position_z`,
    `orientation`
)
VALUES (
    @Entry,
    @Map,
    @X,
    @Y,
    @Z,
    @Orientation
);


-- Clothing Merchant

SET
@Entry := 522004,
@ModelID1 := 7212, -- four different models for some variation
@ModelID2 := 0,
@ModelID3 := 0,
@ModelID4 := 0,
@Name := "Zoggit",
@Subname := "Armour",
@MinLevel := 25,
@MaxLevel := 30,
@Faction := 120,
@NPCFlags := 129,
@Rank := 0,
@Type := 7,
@RunSpeed := 1.14286;

DELETE FROM `creature_template` WHERE `entry` IN (@Entry);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (@Entry, 0, 0, 0, 0, 0, @ModelID1, @ModelID2, @ModelID3, @ModelID4, @Name, @Subname, NULL, @MinLevel, @MaxLevel, 0, 2, @Faction, @NPCFlags, 1, @RunSpeed, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1250, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);
-- 
-- Clear NPC vendor entries.
-- npc_vendor_clear.sql
-- 

SET @Entry = 522004;

DELETE FROM `npc_vendor` WHERE (`entry` = @Entry);

SET
@Entry := 522004,
@Map := 0,
@X := -316.53732,
@Y := 1445.32824,
@Z := 31.086363,
@Orientation := 6.097972;

DELETE FROM `creature` WHERE `id1`=@Entry;
INSERT INTO `creature` (
    `id1`,
    `map`,
    `position_x`,
    `position_y`,
    `position_z`,
    `orientation`
)
VALUES (
    @Entry,
    @Map,
    @X,
    @Y,
    @Z,
    @Orientation
);


-- Vendor Home Game Objects
-- tent 01
DELETE FROM `gameobject` WHERE (`id` = 941000000 AND `position_x` = -320.85003 AND `position_y` = 1451.38818 AND `position_z` = 30.831896);
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (941000000, 0, 0, 0, 1, 1, -320.85003, 1451.38818, 30.831896, 6.06263, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- boxes 01
DELETE FROM `gameobject` WHERE (`id` = 941000002 AND `position_x` = -319.94238 AND `position_y` = 1441.51611 AND `position_z` = 30.867828);
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (941000002, 0, 0, 0, 1, 1, -319.94238, 1441.51611, 30.867828, 0.395984, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- Clothing: 6314 / 38500c / 3927
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6314);
DELETE FROM `npc_vendor` WHERE (`entry` = 522004 AND `item` = 6314);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522004, 0, 6314, 0, 0, 0, 0);

-- Clothing: 3748 / 38500c / 3927
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 3748);
DELETE FROM `npc_vendor` WHERE (`entry` = 522004 AND `item` = 3748);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522004, 0, 3748, 0, 0, 0, 0);

-- Weapon: 23171 / 42000c / 14682
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 23171);
DELETE FROM `npc_vendor` WHERE (`entry` = 522004 AND `item` = 23171);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522004, 0, 23171, 0, 0, 0, 0);

-- Clothing: 23173 / 38500c / 14682
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 23173);
DELETE FROM `npc_vendor` WHERE (`entry` = 522004 AND `item` = 23173);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522004, 0, 23173, 0, 0, 0, 0);

-- Clothing: 6226 / 38500c / 3886
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6226);
DELETE FROM `npc_vendor` WHERE (`entry` = 522004 AND `item` = 6226);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522004, 0, 6226, 0, 0, 0, 0);

-- Weapon: 6633 / 42000c / 3886
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6633);
DELETE FROM `npc_vendor` WHERE (`entry` = 522004 AND `item` = 6633);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522004, 0, 6633, 0, 0, 0, 0);

-- Weapon: 1292 / 42000c / 3886
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 1292);
DELETE FROM `npc_vendor` WHERE (`entry` = 522004 AND `item` = 1292);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522004, 0, 1292, 0, 0, 0, 0);

-- Weapon: 6318 / 42000c / 4279
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6318);
DELETE FROM `npc_vendor` WHERE (`entry` = 522004 AND `item` = 6318);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522004, 0, 6318, 0, 0, 0, 0);

-- Clothing: 6319 / 38500c / 4279
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6319);
DELETE FROM `npc_vendor` WHERE (`entry` = 522004 AND `item` = 6319);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522004, 0, 6319, 0, 0, 0, 0);

-- Clothing: 3230 / 38500c / 4274
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 3230);
DELETE FROM `npc_vendor` WHERE (`entry` = 522004 AND `item` = 3230);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522004, 0, 3230, 0, 0, 0, 0);

-- Clothing: 6340 / 38500c / 4274
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6340);
DELETE FROM `npc_vendor` WHERE (`entry` = 522004 AND `item` = 6340);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522004, 0, 6340, 0, 0, 0, 0);

-- Clothing: 6642 / 38500c / 3872
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6642);
DELETE FROM `npc_vendor` WHERE (`entry` = 522004 AND `item` = 6642);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522004, 0, 6642, 0, 0, 0, 0);

-- Weapon: 6641 / 42000c / 3872
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6641);
DELETE FROM `npc_vendor` WHERE (`entry` = 522004 AND `item` = 6641);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522004, 0, 6641, 0, 0, 0, 0);

-- Weapon: 3191 / 42000c / 4278
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 3191);
DELETE FROM `npc_vendor` WHERE (`entry` = 522004 AND `item` = 3191);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522004, 0, 3191, 0, 0, 0, 0);

-- Weapon: 6320 / 42000c / 4278
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6320);
DELETE FROM `npc_vendor` WHERE (`entry` = 522004 AND `item` = 6320);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522004, 0, 6320, 0, 0, 0, 0);

-- Weapon: 6323 / 42000c / 3887
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6323);
DELETE FROM `npc_vendor` WHERE (`entry` = 522004 AND `item` = 6323);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522004, 0, 6323, 0, 0, 0, 0);

-- Clothing: 6321 / 38500c / 3887
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6321);
DELETE FROM `npc_vendor` WHERE (`entry` = 522004 AND `item` = 6321);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522004, 0, 6321, 0, 0, 0, 0);

-- Clothing: 5943 / 38500c / 4627
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 5943);
DELETE FROM `npc_vendor` WHERE (`entry` = 522004 AND `item` = 5943);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522004, 0, 5943, 0, 0, 0, 0);

-- Weapon: 6220 / 42000c / 4275
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6220);
DELETE FROM `npc_vendor` WHERE (`entry` = 522004 AND `item` = 6220);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522004, 0, 6220, 0, 0, 0, 0);

-- Clothing: 6324 / 38500c / 4275
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6324);
DELETE FROM `npc_vendor` WHERE (`entry` = 522004 AND `item` = 6324);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522004, 0, 6324, 0, 0, 0, 0);

-- Clothing: 6392 / 38500c / 4275
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6392);
DELETE FROM `npc_vendor` WHERE (`entry` = 522004 AND `item` = 6392);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522004, 0, 6392, 0, 0, 0, 0);

