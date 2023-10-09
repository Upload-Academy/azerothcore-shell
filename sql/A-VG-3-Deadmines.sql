-- Deadmines
-- Weapon Merchant
SET
@Entry := 900009,
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

SET @Entry = 900009;

DELETE FROM `npc_vendor` WHERE (`entry` = @Entry);

SET
@Entry := 900009,
@Map := 0,
@X := -10507.704,
@Y := 1026.67419,
@Z := 60.522846,
@Orientation := 0.674236;

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
@Entry := 900010,
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

SET @Entry = 900010;

DELETE FROM `npc_vendor` WHERE (`entry` = @Entry);

SET
@Entry := 900010,
@Map := 0,
@X := -10505.896,
@Y := 1024.38439,
@Z := 60.522846,
@Orientation := 1.110132;

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
@Entry := 900011,
@Model1 := 7104,
@Model2 := 0,
@Model3 := 0,
@Model4 := 0,
@Name := "Snazzle",
@Title := "Trinkets",
@MinLevel := 25,
@MaxLevel := 30;

DELETE FROM `creature_template` WHERE `entry`= @Entry;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (@Entry, 0, 0, 0, 0, 0, @Model1, @Model2, @Model3, @Model4, @Name, @Title, 'Buy', 0, @MinLevel, @MaxLevel, 0, 120, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);

-- 
-- Clear NPC vendor entries.
-- npc_vendor_clear.sql
-- 

SET @Entry = 900011;

DELETE FROM `npc_vendor` WHERE (`entry` = @Entry);

SET
@Entry := 900011,
@Map := 0,
@X := -10509.912,
@Y := 1027.70227,
@Z := 60.522869,
@Orientation := 0.650674;

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


-- Clothing: 5193 / 38500c / 639
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 5193);
DELETE FROM `npc_vendor` WHERE (`entry` = 900010 AND `item` = 5193);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900010, 0, 5193, 0, 0, 0, 0);

-- Weapon: 5191 / 42000c / 639
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5191);
DELETE FROM `npc_vendor` WHERE (`entry` = 900009 AND `item` = 5191);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900009, 0, 5191, 0, 0, 0, 0);

-- Clothing: 5202 / 38500c / 639
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 5202);
DELETE FROM `npc_vendor` WHERE (`entry` = 900010 AND `item` = 5202);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900010, 0, 5202, 0, 0, 0, 0);

-- Clothing: 10399 / 38500c / 639
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 10399);
DELETE FROM `npc_vendor` WHERE (`entry` = 900010 AND `item` = 10399);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900010, 0, 10399, 0, 0, 0, 0);

-- Weapon: 5201 / 42000c / 647
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5201);
DELETE FROM `npc_vendor` WHERE (`entry` = 900009 AND `item` = 5201);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900009, 0, 5201, 0, 0, 0, 0);

-- Weapon: 7230 / 42000c / 646
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 7230);
DELETE FROM `npc_vendor` WHERE (`entry` = 900009 AND `item` = 7230);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900009, 0, 7230, 0, 0, 0, 0);

-- Weapon: 5187 / 42000c / 644
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5187);
DELETE FROM `npc_vendor` WHERE (`entry` = 900009 AND `item` = 5187);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900009, 0, 5187, 0, 0, 0, 0);

-- Weapon: 872 / 42000c / 644
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 872);
DELETE FROM `npc_vendor` WHERE (`entry` = 900009 AND `item` = 872);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900009, 0, 872, 0, 0, 0, 0);

-- Weapon: 5194 / 42000c / 643
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5194);
DELETE FROM `npc_vendor` WHERE (`entry` = 900009 AND `item` = 5194);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900009, 0, 5194, 0, 0, 0, 0);

-- Weapon: 5200 / 42000c / 647
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5200);
DELETE FROM `npc_vendor` WHERE (`entry` = 900009 AND `item` = 5200);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900009, 0, 5200, 0, 0, 0, 0);

-- Clothing: 10403 / 38500c / 647
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 10403);
DELETE FROM `npc_vendor` WHERE (`entry` = 900010 AND `item` = 10403);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900010, 0, 10403, 0, 0, 0, 0);

-- Weapon: 5198 / 42000c / 645
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5198);
DELETE FROM `npc_vendor` WHERE (`entry` = 900009 AND `item` = 5198);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900009, 0, 5198, 0, 0, 0, 0);

-- Trinkets/Other: 1156 / 36750c / 1763
UPDATE `item_template` SET `BuyPrice` = 36750 WHERE (`entry` = 1156);
DELETE FROM `npc_vendor` WHERE (`entry` = 900011 AND `item` = 1156);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900011, 0, 1156, 0, 0, 0, 0);

-- Weapon: 5192 / 42000c / 646
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5192);
DELETE FROM `npc_vendor` WHERE (`entry` = 900009 AND `item` = 5192);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900009, 0, 5192, 0, 0, 0, 0);

-- Weapon: 5196 / 42000c / 646
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5196);
DELETE FROM `npc_vendor` WHERE (`entry` = 900009 AND `item` = 5196);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900009, 0, 5196, 0, 0, 0, 0);

-- Clothing: 5195 / 38500c / 643
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 5195);
DELETE FROM `npc_vendor` WHERE (`entry` = 900010 AND `item` = 5195);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900010, 0, 5195, 0, 0, 0, 0);

-- Weapon: 5197 / 42000c / 645
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5197);
DELETE FROM `npc_vendor` WHERE (`entry` = 900009 AND `item` = 5197);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900009, 0, 5197, 0, 0, 0, 0);

-- Clothing: 5199 / 38500c / 1763
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 5199);
DELETE FROM `npc_vendor` WHERE (`entry` = 900010 AND `item` = 5199);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900010, 0, 5199, 0, 0, 0, 0);

-- Weapon: 1937 / 42000c / 642
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 1937);
DELETE FROM `npc_vendor` WHERE (`entry` = 900009 AND `item` = 1937);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900009, 0, 1937, 0, 0, 0, 0);

-- Weapon: 2169 / 42000c / 642
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 2169);
DELETE FROM `npc_vendor` WHERE (`entry` = 900009 AND `item` = 2169);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900009, 0, 2169, 0, 0, 0, 0);

-- Weapon: 5443 / 42000c / 3586
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5443);
DELETE FROM `npc_vendor` WHERE (`entry` = 900009 AND `item` = 5443);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (900009, 0, 5443, 0, 0, 0, 0);

