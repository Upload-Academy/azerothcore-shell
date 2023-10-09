-- Razorfen Kraul
-- Weapon Merchant
SET
@Entry := 900015,
@Model1 := 7106,
@Model2 := 0,
@Model3 := 0,
@Model4 := 0,
@Name := "Rixxle",
@Title := "Weapons",
@MinLevel := 25,
@MaxLevel := 30;

DELETE FROM `creature_template` WHERE `entry`= @Entry;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (@Entry, 0, 0, 0, 0, 0, @Model1, @Model2, @Model3, @Model4, @Name, @Title, 'Buy', 0, @MinLevel, @MaxLevel, 0, 120, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);

-- 
-- Clear NPC vendor entries.
-- npc_vendor_clear.sql
-- 

SET @Entry = 900015;

DELETE FROM `npc_vendor` WHERE (`entry` = @Entry);

SET
@Entry := 900015,
@Map := 1,
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
@Entry := 900016,
@Model1 := 7212,
@Model2 := 0,
@Model3 := 0,
@Model4 := 0,
@Name := "Zoggit",
@Title := "Armour",
@MinLevel := 25,
@MaxLevel := 30;

DELETE FROM `creature_template` WHERE `entry`= @Entry;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (@Entry, 0, 0, 0, 0, 0, @Model1, @Model2, @Model3, @Model4, @Name, @Title, 'Buy', 0, @MinLevel, @MaxLevel, 0, 120, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);

-- 
-- Clear NPC vendor entries.
-- npc_vendor_clear.sql
-- 

SET @Entry = 900016;

DELETE FROM `npc_vendor` WHERE (`entry` = @Entry);

SET
@Entry := 900016,
@Map := 1,
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
DELETE FROM `gameobject` WHERE (`id` = 941000001 AND `position_x` = -320.85003 AND `position_y` = 1451.38818 AND `position_z` = 30.831896);
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (941000001, 1, 0, 0, 1, 1, -320.85003, 1451.38818, 30.831896, 6.06263, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- boxes 01
DELETE FROM `gameobject` WHERE (`id` = 941000002 AND `position_x` = -319.94238 AND `position_y` = 1441.51611 AND `position_z` = 30.867828);
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (941000002, 1, 0, 0, 1, 1, -319.94238, 1441.51611, 30.867828, 0.395984, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- Weapon: 776 / 49000c / 4512
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 776);
DELETE FROM `npc_vendor` WHERE (`entry` = 900015 AND `item` = 776);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900015, 0, 776, 0, 0, 0, 0);

-- Clothing: 1488 / 45500c / 4512
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 1488);
DELETE FROM `npc_vendor` WHERE (`entry` = 900016 AND `item` = 1488);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900016, 0, 1488, 0, 0, 0, 0);

-- Weapon: 1727 / 49000c / 4512
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 1727);
DELETE FROM `npc_vendor` WHERE (`entry` = 900015 AND `item` = 1727);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900015, 0, 1727, 0, 0, 0, 0);

-- Weapon: 1975 / 49000c / 4512
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 1975);
DELETE FROM `npc_vendor` WHERE (`entry` = 900015 AND `item` = 1975);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900015, 0, 1975, 0, 0, 0, 0);

-- Weapon: 1976 / 49000c / 4436
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 1976);
DELETE FROM `npc_vendor` WHERE (`entry` = 900015 AND `item` = 1976);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900015, 0, 1976, 0, 0, 0, 0);

-- Clothing: 1978 / 45500c / 4512
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 1978);
DELETE FROM `npc_vendor` WHERE (`entry` = 900016 AND `item` = 1978);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900016, 0, 1978, 0, 0, 0, 0);

-- Clothing: 2039 / 45500c / 4512
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 2039);
DELETE FROM `npc_vendor` WHERE (`entry` = 900016 AND `item` = 2039);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900016, 0, 2039, 0, 0, 0, 0);

-- Clothing: 2264 / 45500c / 4512
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 2264);
DELETE FROM `npc_vendor` WHERE (`entry` = 900016 AND `item` = 2264);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900016, 0, 2264, 0, 0, 0, 0);

-- Weapon: 2549 / 49000c / 4512
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 2549);
DELETE FROM `npc_vendor` WHERE (`entry` = 900015 AND `item` = 2549);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900015, 0, 2549, 0, 0, 0, 0);

-- Weapon: 2816 / 49000c / 4428
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 2816);
DELETE FROM `npc_vendor` WHERE (`entry` = 900015 AND `item` = 2816);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900015, 0, 2816, 0, 0, 0, 0);

-- Clothing: 4438 / 45500c / 4512
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 4438);
DELETE FROM `npc_vendor` WHERE (`entry` = 900016 AND `item` = 4438);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900016, 0, 4438, 0, 0, 0, 0);

-- Weapon: 6679 / 49000c / 4438
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 6679);
DELETE FROM `npc_vendor` WHERE (`entry` = 900015 AND `item` = 6679);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900015, 0, 6679, 0, 0, 0, 0);

-- Weapon: 6681 / 49000c / 4424
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 6681);
DELETE FROM `npc_vendor` WHERE (`entry` = 900015 AND `item` = 6681);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900015, 0, 6681, 0, 0, 0, 0);

-- Clothing: 6682 / 45500c / 4428
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 6682);
DELETE FROM `npc_vendor` WHERE (`entry` = 900016 AND `item` = 6682);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900016, 0, 6682, 0, 0, 0, 0);

-- Clothing: 6685 / 45500c / 4428
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 6685);
DELETE FROM `npc_vendor` WHERE (`entry` = 900016 AND `item` = 6685);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900016, 0, 6685, 0, 0, 0, 0);

-- Clothing: 6686 / 45500c / 4420
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 6686);
DELETE FROM `npc_vendor` WHERE (`entry` = 900016 AND `item` = 6686);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900016, 0, 6686, 0, 0, 0, 0);

-- Weapon: 6687 / 49000c / 4420
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 6687);
DELETE FROM `npc_vendor` WHERE (`entry` = 900015 AND `item` = 6687);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900015, 0, 6687, 0, 0, 0, 0);

-- Clothing: 6688 / 45500c / 4842
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 6688);
DELETE FROM `npc_vendor` WHERE (`entry` = 900016 AND `item` = 6688);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900016, 0, 6688, 0, 0, 0, 0);

-- Weapon: 6689 / 49000c / 4842
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 6689);
DELETE FROM `npc_vendor` WHERE (`entry` = 900015 AND `item` = 6689);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900015, 0, 6689, 0, 0, 0, 0);

-- Clothing: 6690 / 45500c / 4422
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 6690);
DELETE FROM `npc_vendor` WHERE (`entry` = 900016 AND `item` = 6690);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900016, 0, 6690, 0, 0, 0, 0);

-- Weapon: 6691 / 49000c / 4422
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 6691);
DELETE FROM `npc_vendor` WHERE (`entry` = 900015 AND `item` = 6691);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900015, 0, 6691, 0, 0, 0, 0);

-- Weapon: 6692 / 49000c / 4421
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 6692);
DELETE FROM `npc_vendor` WHERE (`entry` = 900015 AND `item` = 6692);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900015, 0, 6692, 0, 0, 0, 0);

-- Clothing: 6693 / 45500c / 4421
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 6693);
DELETE FROM `npc_vendor` WHERE (`entry` = 900016 AND `item` = 6693);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900016, 0, 6693, 0, 0, 0, 0);

-- Clothing: 6694 / 45500c / 4421
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 6694);
DELETE FROM `npc_vendor` WHERE (`entry` = 900016 AND `item` = 6694);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900016, 0, 6694, 0, 0, 0, 0);

-- Clothing: 6695 / 45500c / 4425
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 6695);
DELETE FROM `npc_vendor` WHERE (`entry` = 900016 AND `item` = 6695);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900016, 0, 6695, 0, 0, 0, 0);

-- Weapon: 6696 / 49000c / 4425
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 6696);
DELETE FROM `npc_vendor` WHERE (`entry` = 900015 AND `item` = 6696);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900015, 0, 6696, 0, 0, 0, 0);

-- Clothing: 6697 / 45500c / 4425
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 6697);
DELETE FROM `npc_vendor` WHERE (`entry` = 900016 AND `item` = 6697);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900016, 0, 6697, 0, 0, 0, 0);

-- Clothing: 24063 / 45500c / 4436
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 24063);
DELETE FROM `npc_vendor` WHERE (`entry` = 900016 AND `item` = 24063);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900016, 0, 24063, 0, 0, 0, 0);

-- Clothing: 24064 / 45500c / 4436
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 24064);
DELETE FROM `npc_vendor` WHERE (`entry` = 900016 AND `item` = 24064);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900016, 0, 24064, 0, 0, 0, 0);

-- Weapon: 24069 / 49000c / 4436
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 24069);
DELETE FROM `npc_vendor` WHERE (`entry` = 900015 AND `item` = 24069);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900015, 0, 24069, 0, 0, 0, 0);

