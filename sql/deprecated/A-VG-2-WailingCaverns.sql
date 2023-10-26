-- Wailing Caverns
-- Weapon Merchant

SET
@Entry := 522002,
@ModelID1 := 7106,
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

SET @Entry = 522002;

DELETE FROM `npc_vendor` WHERE (`entry` = @Entry);

SET
@Entry := 522002,
@Map := 1,
@X := -857.33636,
@Y := -1989.1666,
@Z := 91.671768,
@Orientation := 4.295179;

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
@Entry := 522002,
@ModelID1 := 7212,
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

SET @Entry = 522002;

DELETE FROM `npc_vendor` WHERE (`entry` = @Entry);

SET
@Entry := 522002,
@Map := 1,
@X := -852.08715,
@Y := -1993.8306,
@Z := 91.291885,
@Orientation := 3.631512;

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
DELETE FROM `gameobject` WHERE (`id` = 941000004 AND `position_x` = -870.023376 AND `position_y` = -1987.217285 AND `position_z` = 92.529778);
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (941000004, 1, 0, 0, 1, 1, -870.023376, -1987.217285, 92.529778, 5.082149, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- tent 02
DELETE FROM `gameobject` WHERE (`id` = 941000005 AND `position_x` = -855.239807 AND `position_y` = -1985.682495 AND `position_z` = 91.937462);
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (941000005, 1, 0, 0, 1, 1, -855.239807, -1985.682495, 91.937462, 4.182871, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- boxes 01
DELETE FROM `gameobject` WHERE (`id` = 941000001 AND `position_x` = -850.34869 AND `position_y` = -1987.8153 AND `position_z` = 91.768799);
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (941000001, 1, 0, 0, 1, 1, -850.34869, -1987.8153, 91.768799, 4.010049, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- boxes 02
DELETE FROM `gameobject` WHERE (`id` = 941000002 AND `position_x` = -322.87237 AND `position_y` = 1445.92395 AND `position_z` = 30.831896);
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (941000002, 1, 0, 0, 1, 1, -322.87237, 1445.92395, 30.831896, 0.215336, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- Clothing: 6627 / 38500c / 3654
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6627);
DELETE FROM `npc_vendor` WHERE (`entry` = 522002 AND `item` = 6627);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522002, 0, 6627, 0, 0, 0, 0);

-- Clothing: 6461 / 38500c / 3654
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6461);
DELETE FROM `npc_vendor` WHERE (`entry` = 522002 AND `item` = 6461);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522002, 0, 6461, 0, 0, 0, 0);

-- Weapon: 6630 / 42000c / 5775
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6630);
DELETE FROM `npc_vendor` WHERE (`entry` = 522002 AND `item` = 6630);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522002, 0, 6630, 0, 0, 0, 0);

-- Weapon: 6631 / 42000c / 5775
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6631);
DELETE FROM `npc_vendor` WHERE (`entry` = 522002 AND `item` = 6631);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522002, 0, 6631, 0, 0, 0, 0);

-- Clothing: 6460 / 38500c / 3669
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6460);
DELETE FROM `npc_vendor` WHERE (`entry` = 522002 AND `item` = 6460);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522002, 0, 6460, 0, 0, 0, 0);

-- Weapon: 6469 / 42000c / 3673
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6469);
DELETE FROM `npc_vendor` WHERE (`entry` = 522002 AND `item` = 6469);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522002, 0, 6469, 0, 0, 0, 0);

-- Weapon: 6472 / 42000c / 3670
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6472);
DELETE FROM `npc_vendor` WHERE (`entry` = 522002 AND `item` = 6472);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522002, 0, 6472, 0, 0, 0, 0);

-- Clothing: 5404 / 38500c / 3671
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 5404);
DELETE FROM `npc_vendor` WHERE (`entry` = 522002 AND `item` = 5404);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522002, 0, 5404, 0, 0, 0, 0);

-- Clothing: 5970 / 38500c / 3673
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 5970);
DELETE FROM `npc_vendor` WHERE (`entry` = 522002 AND `item` = 5970);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522002, 0, 5970, 0, 0, 0, 0);

-- Clothing: 6459 / 38500c / 3673
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6459);
DELETE FROM `npc_vendor` WHERE (`entry` = 522002 AND `item` = 6459);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522002, 0, 6459, 0, 0, 0, 0);

-- Clothing: 6473 / 38500c / 3670
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6473);
DELETE FROM `npc_vendor` WHERE (`entry` = 522002 AND `item` = 6473);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522002, 0, 6473, 0, 0, 0, 0);

-- Clothing: 6629 / 38500c / 5775
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6629);
DELETE FROM `npc_vendor` WHERE (`entry` = 522002 AND `item` = 6629);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522002, 0, 6629, 0, 0, 0, 0);

-- Clothing: 10410 / 38500c / 3669
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 10410);
DELETE FROM `npc_vendor` WHERE (`entry` = 522002 AND `item` = 10410);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522002, 0, 10410, 0, 0, 0, 0);

-- Clothing: 10411 / 38500c / 3673
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 10411);
DELETE FROM `npc_vendor` WHERE (`entry` = 522002 AND `item` = 10411);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522002, 0, 10411, 0, 0, 0, 0);

-- Weapon: 6448 / 42000c / 3674
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6448);
DELETE FROM `npc_vendor` WHERE (`entry` = 522002 AND `item` = 6448);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522002, 0, 6448, 0, 0, 0, 0);

-- Clothing: 6449 / 38500c / 3674
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6449);
DELETE FROM `npc_vendor` WHERE (`entry` = 522002 AND `item` = 6449);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522002, 0, 6449, 0, 0, 0, 0);

-- Clothing: 6465 / 38500c / 3669
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6465);
DELETE FROM `npc_vendor` WHERE (`entry` = 522002 AND `item` = 6465);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522002, 0, 6465, 0, 0, 0, 0);

-- Clothing: 10412 / 38500c / 3671
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 10412);
DELETE FROM `npc_vendor` WHERE (`entry` = 522002 AND `item` = 10412);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522002, 0, 10412, 0, 0, 0, 0);

-- Weapon: 5243 / 42000c / 5912
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5243);
DELETE FROM `npc_vendor` WHERE (`entry` = 522002 AND `item` = 5243);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522002, 0, 5243, 0, 0, 0, 0);

-- Weapon: 6447 / 42000c / 3653
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6447);
DELETE FROM `npc_vendor` WHERE (`entry` = 522002 AND `item` = 6447);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522002, 0, 6447, 0, 0, 0, 0);

-- Clothing: 6632 / 38500c / 5912
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6632);
DELETE FROM `npc_vendor` WHERE (`entry` = 522002 AND `item` = 6632);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522002, 0, 6632, 0, 0, 0, 0);

-- Weapon: 13245 / 42000c / 3653
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 13245);
DELETE FROM `npc_vendor` WHERE (`entry` = 522002 AND `item` = 13245);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522002, 0, 13245, 0, 0, 0, 0);

-- Clothing: 10413 / 38500c / 3840
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 10413);
DELETE FROM `npc_vendor` WHERE (`entry` = 522002 AND `item` = 10413);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522002, 0, 10413, 0, 0, 0, 0);

