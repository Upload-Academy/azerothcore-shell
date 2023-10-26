-- Gnomeregan
-- Weapon Merchant

SET
@Entry := 522001,
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

SET @Entry = 522001;

DELETE FROM `npc_vendor` WHERE (`entry` = @Entry);

SET
@Entry := 522001,
@Map := 0,
@X := -5202.669922,
@Y := 479.067535,
@Z := 386.820068,
@Orientation := 2.10487;

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
@Entry := 522001,
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

SET @Entry = 522001;

DELETE FROM `npc_vendor` WHERE (`entry` = @Entry);

SET
@Entry := 522001,
@Map := 0,
@X := -5209.73877,
@Y := 479.852631,
@Z := 387.138885,
@Orientation := 0.777547;

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


-- Trinket Merchant

SET
@Entry := 522001,
@ModelID1 := 7104,
@ModelID2 := 0,
@ModelID3 := 0,
@ModelID4 := 0,
@Name := "Snazzle",
@Subname := "Trinkets",
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

SET @Entry = 522001;

DELETE FROM `npc_vendor` WHERE (`entry` = @Entry);

SET
@Entry := 522001,
@Map := 0,
@X := -5207.291016,
@Y := 489.281647,
@Z := 387.876465,
@Orientation := 4.975509;

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
DELETE FROM `gameobject` WHERE (`id` = 941000000 AND `position_x` = -5206.961426 AND `position_y` = 474.492371 AND `position_z` = 386.625732);
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (941000000, 0, 0, 0, 1, 1, -5206.961426, 474.492371, 386.625732, 1.4569, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- boxes 01
DELETE FROM `gameobject` WHERE (`id` = 941000002 AND `position_x` = -5203.503906 AND `position_y` = 475.03125 AND `position_z` = 386.682587);
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (941000002, 0, 0, 0, 1, 1, -5203.503906, 475.03125, 386.682587, 1.77106, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- misc 01
DELETE FROM `gameobject` WHERE (`id` = 102990 AND `position_x` = -5206.217773 AND `position_y` = 485.584717 AND `position_z` = 387.519897);
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (102990, 0, 0, 0, 1, 1, -5206.217773, 485.584717, 387.519897, 4.97551, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- Trinkets/Other: 3871 / 43750c / 6233
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 3871);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 3871);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 3871, 0, 0, 0, 0);

-- Trinkets/Other: 3875 / 43750c / 6226
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 3875);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 3875);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 3875, 0, 0, 0, 0);

-- Trinkets/Other: 4298 / 43750c / 6233
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 4298);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 4298);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 4298, 0, 0, 0, 0);

-- Trinkets/Other: 4415 / 43750c / 7800
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 4415);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 4415);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 4415, 0, 0, 0, 0);

-- Trinkets/Other: 7452 / 43750c / 6227
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 7452);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 7452);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 7452, 0, 0, 0, 0);

-- Trinkets/Other: 8384 / 43750c / 6212
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 8384);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 8384);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 8384, 0, 0, 0, 0);

-- Weapon: 9446 / 49000c / 6235
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9446);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 9446);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 9446, 0, 0, 0, 0);

-- Clothing: 9447 / 45500c / 6235
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9447);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 9447);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 9447, 0, 0, 0, 0);

-- Clothing: 9448 / 45500c / 6235
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9448);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 9448);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 9448, 0, 0, 0, 0);

-- Weapon: 9449 / 49000c / 6229
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9449);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 9449);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 9449, 0, 0, 0, 0);

-- Clothing: 9450 / 45500c / 6229
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9450);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 9450);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 9450, 0, 0, 0, 0);

-- Weapon: 9452 / 49000c / 7079
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9452);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 9452);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 9452, 0, 0, 0, 0);

-- Weapon: 9453 / 49000c / 7079
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9453);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 9453);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 9453, 0, 0, 0, 0);

-- Clothing: 9454 / 45500c / 7079
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9454);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 9454);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 9454, 0, 0, 0, 0);

-- Clothing: 9455 / 45500c / 6228
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9455);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 9455);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 9455, 0, 0, 0, 0);

-- Weapon: 9456 / 49000c / 6228
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9456);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 9456);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 9456, 0, 0, 0, 0);

-- Weapon: 9457 / 49000c / 6228
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9457);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 9457);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 9457, 0, 0, 0, 0);

-- Clothing: 9458 / 45500c / 7800
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9458);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 9458);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 9458, 0, 0, 0, 0);

-- Weapon: 9459 / 49000c / 7800
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9459);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 9459);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 9459, 0, 0, 0, 0);

-- Clothing: 9461 / 45500c / 7800
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9461);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 9461);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 9461, 0, 0, 0, 0);

-- Weapon: 9485 / 49000c / 6233
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9485);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 9485);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 9485, 0, 0, 0, 0);

-- Weapon: 9486 / 49000c / 6233
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9486);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 9486);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 9486, 0, 0, 0, 0);

-- Weapon: 9487 / 49000c / 6233
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9487);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 9487);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 9487, 0, 0, 0, 0);

-- Weapon: 9488 / 49000c / 6233
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9488);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 9488);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 9488, 0, 0, 0, 0);

-- Weapon: 9490 / 49000c / 6233
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9490);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 9490);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 9490, 0, 0, 0, 0);

-- Clothing: 9491 / 45500c / 6233
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9491);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 9491);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 9491, 0, 0, 0, 0);

-- Clothing: 9492 / 45500c / 7800
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9492);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 9492);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 9492, 0, 0, 0, 0);

-- Clothing: 9508 / 45500c / 6233
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9508);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 9508);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 9508, 0, 0, 0, 0);

-- Clothing: 9509 / 45500c / 6233
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9509);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 9509);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 9509, 0, 0, 0, 0);

-- Clothing: 9510 / 45500c / 6233
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9510);
DELETE FROM `npc_vendor` WHERE (`entry` = 522001 AND `item` = 9510);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (522001, 0, 9510, 0, 0, 0, 0);

