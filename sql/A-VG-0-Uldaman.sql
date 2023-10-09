-- Uldaman
-- Weapon Merchant

SET
@Entry := 900000,
@ModelID1 := 7106, -- four different models for some variation
@ModelID2 := 0,
@ModelID3 := 0,
@ModelID4 := 0,
@Name := "Rixxle",
@Subname := "Weapons",
@MinLevel := 35,
@MaxLevel := 45,
@Faction := 75,
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

SET @Entry = 900000;

DELETE FROM `npc_vendor` WHERE (`entry` = @Entry);

SET
@Entry := 900000,
@Map := 0,
@X := -6437.630371,
@Y := -3262.943604,
@Z := 241.669159,
@Orientation := 5.478165;

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
@Entry := 900001,
@ModelID1 := 7212, -- four different models for some variation
@ModelID2 := 0,
@ModelID3 := 0,
@ModelID4 := 0,
@Name := "Zoggit",
@Subname := "Armour",
@MinLevel := 35,
@MaxLevel := 45,
@Faction := 75,
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

SET @Entry = 900001;

DELETE FROM `npc_vendor` WHERE (`entry` = @Entry);

SET
@Entry := 900001,
@Map := 0,
@X := -6432.616211,
@Y := -3260.275391,
@Z := 241.727966,
@Orientation := 4.645665;

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
@Entry := 900002,
@ModelID1 := 7104, -- four different models for some variation
@ModelID2 := 0,
@ModelID3 := 0,
@ModelID4 := 0,
@Name := "Snazzle",
@Subname := "Trinkets",
@MinLevel := 35,
@MaxLevel := 45,
@Faction := 75,
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

SET @Entry = 900002;

DELETE FROM `npc_vendor` WHERE (`entry` = @Entry);

SET
@Entry := 900002,
@Map := 0,
@X := -6430.789551,
@Y := -3262.597412,
@Z := 241.699326,
@Orientation := 3.809223;

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
DELETE FROM `gameobject` WHERE (`id` = 941000000 AND `position_x` = -6440.316406 AND `position_y` = -3259.992432 AND `position_z` = 241.683899);
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (941000000, 0, 0, 0, 1, 1, -6440.316406, -3259.992432, 241.683899, 5.505644, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- boxes 01
DELETE FROM `gameobject` WHERE (`id` = 941000002 AND `position_x` = -6433.5625 AND `position_y` = -3258.819336 AND `position_z` = 241.763412);
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (941000002, 0, 0, 0, 1, 1, -6433.5625, -3258.819336, 241.763412, 4.150846, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- Trinkets/Other: 3871 / 43750c / 4852
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 3871);
DELETE FROM `npc_vendor` WHERE (`entry` = 900002 AND `item` = 3871);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900002, 0, 3871, 0, 0, 0, 0);

-- Trinkets/Other: 4298 / 43750c / 4852
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 4298);
DELETE FROM `npc_vendor` WHERE (`entry` = 900002 AND `item` = 4298);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900002, 0, 4298, 0, 0, 0, 0);

-- Trinkets/Other: 4354 / 43750c / 4860
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 4354);
DELETE FROM `npc_vendor` WHERE (`entry` = 900002 AND `item` = 4354);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900002, 0, 4354, 0, 0, 0, 0);

-- Trinkets/Other: 4415 / 43750c / 7022
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 4415);
DELETE FROM `npc_vendor` WHERE (`entry` = 900002 AND `item` = 4415);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900002, 0, 4415, 0, 0, 0, 0);

-- Trinkets/Other: 7452 / 43750c / 4852
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 7452);
DELETE FROM `npc_vendor` WHERE (`entry` = 900002 AND `item` = 7452);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900002, 0, 7452, 0, 0, 0, 0);

-- Trinkets/Other: 7976 / 43750c / 4860
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 7976);
DELETE FROM `npc_vendor` WHERE (`entry` = 900002 AND `item` = 7976);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900002, 0, 7976, 0, 0, 0, 0);

-- Trinkets/Other: 7991 / 43750c / 4853
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 7991);
DELETE FROM `npc_vendor` WHERE (`entry` = 900002 AND `item` = 7991);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900002, 0, 7991, 0, 0, 0, 0);

-- Trinkets/Other: 8028 / 43750c / 7030
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 8028);
DELETE FROM `npc_vendor` WHERE (`entry` = 900002 AND `item` = 8028);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900002, 0, 8028, 0, 0, 0, 0);

-- Trinkets/Other: 8384 / 43750c / 4861
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 8384);
DELETE FROM `npc_vendor` WHERE (`entry` = 900002 AND `item` = 8384);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900002, 0, 8384, 0, 0, 0, 0);

-- Clothing: 9381 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9381);
DELETE FROM `npc_vendor` WHERE (`entry` = 900001 AND `item` = 9381);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900001, 0, 9381, 0, 0, 0, 0);

-- Clothing: 9383 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9383);
DELETE FROM `npc_vendor` WHERE (`entry` = 900001 AND `item` = 9383);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900001, 0, 9383, 0, 0, 0, 0);

-- Clothing: 9384 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9384);
DELETE FROM `npc_vendor` WHERE (`entry` = 900001 AND `item` = 9384);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900001, 0, 9384, 0, 0, 0, 0);

-- Clothing: 9386 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9386);
DELETE FROM `npc_vendor` WHERE (`entry` = 900001 AND `item` = 9386);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900001, 0, 9386, 0, 0, 0, 0);

-- Weapon: 9387 / 49000c / 6910
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9387);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 9387);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 9387, 0, 0, 0, 0);

-- Weapon: 9388 / 49000c / 6910
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9388);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 9388);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 9388, 0, 0, 0, 0);

-- Weapon: 9389 / 49000c / 6910
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9389);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 9389);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 9389, 0, 0, 0, 0);

-- Weapon: 9390 / 49000c / 6910
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9390);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 9390);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 9390, 0, 0, 0, 0);

-- Clothing: 9391 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9391);
DELETE FROM `npc_vendor` WHERE (`entry` = 900001 AND `item` = 9391);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900001, 0, 9391, 0, 0, 0, 0);

-- Clothing: 9392 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9392);
DELETE FROM `npc_vendor` WHERE (`entry` = 900001 AND `item` = 9392);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900001, 0, 9392, 0, 0, 0, 0);

-- Weapon: 9393 / 49000c / 4860
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9393);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 9393);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 9393, 0, 0, 0, 0);

-- Weapon: 9394 / 49000c / 6907
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9394);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 9394);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 9394, 0, 0, 0, 0);

-- Weapon: 9396 / 49000c / 4860
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9396);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 9396);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 9396, 0, 0, 0, 0);

-- Weapon: 9397 / 49000c / 4860
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9397);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 9397);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 9397, 0, 0, 0, 0);

-- Weapon: 9398 / 49000c / 6907
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9398);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 9398);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 9398, 0, 0, 0, 0);

-- Clothing: 9400 / 45500c / 6906
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9400);
DELETE FROM `npc_vendor` WHERE (`entry` = 900001 AND `item` = 9400);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900001, 0, 9400, 0, 0, 0, 0);

-- Clothing: 9401 / 45500c / 6906
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9401);
DELETE FROM `npc_vendor` WHERE (`entry` = 900001 AND `item` = 9401);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900001, 0, 9401, 0, 0, 0, 0);

-- Weapon: 9403 / 49000c / 6908
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9403);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 9403);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 9403, 0, 0, 0, 0);

-- Weapon: 9404 / 49000c / 6908
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9404);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 9404);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 9404, 0, 0, 0, 0);

-- Weapon: 9406 / 49000c / 4860
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9406);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 9406);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 9406, 0, 0, 0, 0);

-- Weapon: 9407 / 49000c / 7228
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9407);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 9407);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 9407, 0, 0, 0, 0);

-- Clothing: 9408 / 45500c / 7228
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9408);
DELETE FROM `npc_vendor` WHERE (`entry` = 900001 AND `item` = 9408);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900001, 0, 9408, 0, 0, 0, 0);

-- Weapon: 9409 / 49000c / 7228
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9409);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 9409);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 9409, 0, 0, 0, 0);

-- Weapon: 9410 / 49000c / 7206
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9410);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 9410);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 9410, 0, 0, 0, 0);

-- Weapon: 9411 / 49000c / 7206
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9411);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 9411);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 9411, 0, 0, 0, 0);

-- Clothing: 9412 / 45500c / 7291
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9412);
DELETE FROM `npc_vendor` WHERE (`entry` = 900001 AND `item` = 9412);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900001, 0, 9412, 0, 0, 0, 0);

-- Clothing: 9413 / 45500c / 2748
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9413);
DELETE FROM `npc_vendor` WHERE (`entry` = 900001 AND `item` = 9413);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900001, 0, 9413, 0, 0, 0, 0);

-- Weapon: 9414 / 49000c / 4854
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9414);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 9414);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 9414, 0, 0, 0, 0);

-- Weapon: 9415 / 49000c / 4854
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9415);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 9415);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 9415, 0, 0, 0, 0);

-- Clothing: 9416 / 45500c / 4854
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9416);
DELETE FROM `npc_vendor` WHERE (`entry` = 900001 AND `item` = 9416);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900001, 0, 9416, 0, 0, 0, 0);

-- Clothing: 9418 / 45500c / 2748
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9418);
DELETE FROM `npc_vendor` WHERE (`entry` = 900001 AND `item` = 9418);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900001, 0, 9418, 0, 0, 0, 0);

-- Clothing: 9419 / 45500c / 7291
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9419);
DELETE FROM `npc_vendor` WHERE (`entry` = 900001 AND `item` = 9419);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900001, 0, 9419, 0, 0, 0, 0);

-- Weapon: 9420 / 49000c / 4860
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9420);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 9420);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 9420, 0, 0, 0, 0);

-- Clothing: 9422 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9422);
DELETE FROM `npc_vendor` WHERE (`entry` = 900001 AND `item` = 9422);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900001, 0, 9422, 0, 0, 0, 0);

-- Clothing: 9423 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9423);
DELETE FROM `npc_vendor` WHERE (`entry` = 900001 AND `item` = 9423);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900001, 0, 9423, 0, 0, 0, 0);

-- Clothing: 9424 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9424);
DELETE FROM `npc_vendor` WHERE (`entry` = 900001 AND `item` = 9424);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900001, 0, 9424, 0, 0, 0, 0);

-- Clothing: 9425 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9425);
DELETE FROM `npc_vendor` WHERE (`entry` = 900001 AND `item` = 9425);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900001, 0, 9425, 0, 0, 0, 0);

-- Clothing: 9426 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9426);
DELETE FROM `npc_vendor` WHERE (`entry` = 900001 AND `item` = 9426);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900001, 0, 9426, 0, 0, 0, 0);

-- Clothing: 9427 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9427);
DELETE FROM `npc_vendor` WHERE (`entry` = 900001 AND `item` = 9427);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900001, 0, 9427, 0, 0, 0, 0);

-- Weapon: 9428 / 49000c / 4860
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9428);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 9428);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 9428, 0, 0, 0, 0);

-- Weapon: 9429 / 49000c / 4860
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9429);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 9429);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 9429, 0, 0, 0, 0);

-- Weapon: 9430 / 49000c / 4860
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9430);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 9430);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 9430, 0, 0, 0, 0);

-- Weapon: 9431 / 49000c / 4860
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9431);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 9431);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 9431, 0, 0, 0, 0);

-- Weapon: 9432 / 49000c / 4860
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9432);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 9432);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 9432, 0, 0, 0, 0);

-- Clothing: 9465 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9465);
DELETE FROM `npc_vendor` WHERE (`entry` = 900001 AND `item` = 9465);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900001, 0, 9465, 0, 0, 0, 0);

-- Trinkets/Other: 10605 / 43750c / 4860
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 10605);
DELETE FROM `npc_vendor` WHERE (`entry` = 900002 AND `item` = 10605);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900002, 0, 10605, 0, 0, 0, 0);

-- Trinkets/Other: 10608 / 43750c / 4860
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 10608);
DELETE FROM `npc_vendor` WHERE (`entry` = 900002 AND `item` = 10608);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900002, 0, 10608, 0, 0, 0, 0);

-- Weapon: 11118 / 49000c / 2748
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 11118);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 11118);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 11118, 0, 0, 0, 0);

-- Weapon: 11310 / 49000c / 7291
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 11310);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 11310);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 11310, 0, 0, 0, 0);

-- Weapon: 11311 / 49000c / 7291
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 11311);
DELETE FROM `npc_vendor` WHERE (`entry` = 900000 AND `item` = 11311);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900000, 0, 11311, 0, 0, 0, 0);

