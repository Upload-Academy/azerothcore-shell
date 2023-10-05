-- Wailing Caverns
-- Weapon Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300001;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300001, 0, 0, 0, 0, 0, 7106, 0, 0, 0, 'Rixxle', 'Weapons', 'Buy', 0, 25, 30, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300001;
INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300001,1,-857.33636,-1989.1666,91.671768,4.295179);

-- Clothing Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300002;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300002, 0, 0, 0, 0, 0, 7212, 0, 0, 0, 'Zoggit', 'Armour', 'Buy', 0, 25, 30, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300002;
INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300002,1,-852.08715,-1993.8306,91.291885,3.631512);

-- Vendor Home Game Objects
-- tent 01
DELETE FROM `gameobject` WHERE (`id` = 950004);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (2500001, 950004, 1, 0, 0, 1, 1, -870.023376, -1987.217285, 92.529778, 5.082149, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- tent 02
DELETE FROM `gameobject` WHERE (`id` = 950005);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (2500002, 950005, 1, 0, 0, 1, 1, -855.239807, -1985.682495, 91.937462, 4.182871, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- boxes 01
DELETE FROM `gameobject` WHERE (`id` = 950001);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (2500004, 950001, 1, 0, 0, 1, 1, -850.34869, -1987.8153, 91.768799, 4.010049, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- boxes 02
DELETE FROM `gameobject` WHERE (`id` = 950002);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (2500005, 950002, 1, 0, 0, 1, 1, -322.87237, 1445.92395, 30.831896, 0.215336, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- Clothing: 6627 / 38500c / 3654
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6627);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 6627);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 6627, 0, 0, 0, 0);

-- Clothing: 6461 / 38500c / 3654
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6461);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 6461);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 6461, 0, 0, 0, 0);

-- Weapon: 6630 / 42000c / 5775
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6630);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 6630);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 6630, 0, 0, 0, 0);

-- Weapon: 6631 / 42000c / 5775
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6631);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 6631);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 6631, 0, 0, 0, 0);

-- Clothing: 6460 / 38500c / 3669
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6460);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 6460);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 6460, 0, 0, 0, 0);

-- Weapon: 6469 / 42000c / 3673
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6469);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 6469);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 6469, 0, 0, 0, 0);

-- Weapon: 6472 / 42000c / 3670
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6472);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 6472);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 6472, 0, 0, 0, 0);

-- Clothing: 5404 / 38500c / 3671
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 5404);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 5404);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 5404, 0, 0, 0, 0);

-- Clothing: 5970 / 38500c / 3673
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 5970);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 5970);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 5970, 0, 0, 0, 0);

-- Clothing: 6459 / 38500c / 3673
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6459);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 6459);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 6459, 0, 0, 0, 0);

-- Clothing: 6473 / 38500c / 3670
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6473);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 6473);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 6473, 0, 0, 0, 0);

-- Clothing: 6629 / 38500c / 5775
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6629);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 6629);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 6629, 0, 0, 0, 0);

-- Clothing: 10410 / 38500c / 3669
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 10410);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 10410);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 10410, 0, 0, 0, 0);

-- Clothing: 10411 / 38500c / 3673
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 10411);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 10411);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 10411, 0, 0, 0, 0);

-- Weapon: 6448 / 42000c / 3674
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6448);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 6448);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 6448, 0, 0, 0, 0);

-- Clothing: 6449 / 38500c / 3674
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6449);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 6449);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 6449, 0, 0, 0, 0);

-- Clothing: 6465 / 38500c / 3669
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6465);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 6465);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 6465, 0, 0, 0, 0);

-- Clothing: 10412 / 38500c / 3671
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 10412);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 10412);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 10412, 0, 0, 0, 0);

-- Weapon: 5243 / 42000c / 5912
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5243);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 5243);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 5243, 0, 0, 0, 0);

-- Weapon: 6447 / 42000c / 3653
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6447);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 6447);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 6447, 0, 0, 0, 0);

-- Clothing: 6632 / 38500c / 5912
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6632);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 6632);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 6632, 0, 0, 0, 0);

-- Weapon: 13245 / 42000c / 3653
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 13245);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 13245);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 13245, 0, 0, 0, 0);

-- Clothing: 10413 / 38500c / 3840
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 10413);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 10413);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 10413, 0, 0, 0, 0);

-- Deadmines
-- Weapon Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300011;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300011, 0, 0, 0, 0, 0, 7106, 0, 0, 0, 'Rixxle', 'Weapons', 'Buy', 0, 25, 30, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300011;
INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300011,0,-10507.704,1026.67419,60.522846,0.674236);

-- Clothing Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300012;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300012, 0, 0, 0, 0, 0, 7212, 0, 0, 0, 'Zoggit', 'Armour', 'Buy', 0, 25, 30, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300012;
INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300012,0,-10505.896,1024.38439,60.522846,1.110132);

-- Trinket Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300013;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300013, 0, 0, 0, 0, 0, 7104, 0, 0, 0, 'Snazzle', 'Trinkets', 'Buy', 0, 25, 30, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300013;
INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300013,0,-10509.912,1027.70227,60.522869,0.650674);

-- Clothing: 5193 / 38500c / 639
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 5193);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300012 AND `item` = 5193);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300012, 0, 5193, 0, 0, 0, 0);

-- Weapon: 5191 / 42000c / 639
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5191);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 5191);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 5191, 0, 0, 0, 0);

-- Clothing: 5202 / 38500c / 639
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 5202);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300012 AND `item` = 5202);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300012, 0, 5202, 0, 0, 0, 0);

-- Clothing: 10399 / 38500c / 639
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 10399);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300012 AND `item` = 10399);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300012, 0, 10399, 0, 0, 0, 0);

-- Weapon: 5201 / 42000c / 647
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5201);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 5201);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 5201, 0, 0, 0, 0);

-- Weapon: 7230 / 42000c / 646
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 7230);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 7230);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 7230, 0, 0, 0, 0);

-- Weapon: 5187 / 42000c / 644
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5187);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 5187);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 5187, 0, 0, 0, 0);

-- Weapon: 872 / 42000c / 644
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 872);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 872);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 872, 0, 0, 0, 0);

-- Weapon: 5194 / 42000c / 643
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5194);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 5194);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 5194, 0, 0, 0, 0);

-- Weapon: 5200 / 42000c / 647
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5200);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 5200);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 5200, 0, 0, 0, 0);

-- Clothing: 10403 / 38500c / 647
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 10403);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300012 AND `item` = 10403);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300012, 0, 10403, 0, 0, 0, 0);

-- Weapon: 5198 / 42000c / 645
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5198);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 5198);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 5198, 0, 0, 0, 0);

-- Trinkets/Other: 1156 / 36750c / 1763
UPDATE `item_template` SET `BuyPrice` = 36750 WHERE (`entry` = 1156);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300013 AND `item` = 1156);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300013, 0, 1156, 0, 0, 0, 0);

-- Weapon: 5192 / 42000c / 646
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5192);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 5192);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 5192, 0, 0, 0, 0);

-- Weapon: 5196 / 42000c / 646
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5196);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 5196);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 5196, 0, 0, 0, 0);

-- Clothing: 5195 / 38500c / 643
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 5195);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300012 AND `item` = 5195);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300012, 0, 5195, 0, 0, 0, 0);

-- Weapon: 5197 / 42000c / 645
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5197);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 5197);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 5197, 0, 0, 0, 0);

-- Clothing: 5199 / 38500c / 1763
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 5199);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300012 AND `item` = 5199);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300012, 0, 5199, 0, 0, 0, 0);

-- Weapon: 1937 / 42000c / 642
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 1937);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 1937);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 1937, 0, 0, 0, 0);

-- Weapon: 2169 / 42000c / 642
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 2169);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 2169);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 2169, 0, 0, 0, 0);

-- Weapon: 5443 / 42000c / 3586
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5443);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 5443);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 5443, 0, 0, 0, 0);

-- Shadowfang Keep
-- Weapon Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300021;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300021, 0, 0, 0, 0, 0, 7106, 0, 0, 0, 'Rixxle', 'Weapons', 'Buy', 0, 25, 30, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300021;
INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300021,0,-315.94293,1448.59252,31.213396,0.038621);

-- Clothing Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300022;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300022, 0, 0, 0, 0, 0, 7212, 0, 0, 0, 'Zoggit', 'Armour', 'Buy', 0, 25, 30, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300022;
INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300022,0,-316.53732,1445.32824,31.086363,6.097972);

-- Vendor Home Game Objects
-- tent 01
DELETE FROM `gameobject` WHERE (`id` = 950000);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (2500021, 950000, 0, 0, 0, 1, 1, -320.85003, 1451.38818, 30.831896, 6.06263, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- boxes 01
DELETE FROM `gameobject` WHERE (`id` = 950002);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (2500024, 950002, 0, 0, 0, 1, 1, -319.94238, 1441.51611, 30.867828, 0.395984, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- Clothing: 6314 / 38500c / 3927
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6314);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 6314);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 6314, 0, 0, 0, 0);

-- Clothing: 3748 / 38500c / 3927
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 3748);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 3748);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 3748, 0, 0, 0, 0);

-- Weapon: 23171 / 42000c / 14682
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 23171);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300021 AND `item` = 23171);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300021, 0, 23171, 0, 0, 0, 0);

-- Clothing: 23173 / 38500c / 14682
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 23173);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 23173);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 23173, 0, 0, 0, 0);

-- Clothing: 6226 / 38500c / 3886
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6226);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 6226);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 6226, 0, 0, 0, 0);

-- Weapon: 6633 / 42000c / 3886
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6633);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300021 AND `item` = 6633);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300021, 0, 6633, 0, 0, 0, 0);

-- Weapon: 1292 / 42000c / 3886
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 1292);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300021 AND `item` = 1292);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300021, 0, 1292, 0, 0, 0, 0);

-- Weapon: 6318 / 42000c / 4279
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6318);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300021 AND `item` = 6318);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300021, 0, 6318, 0, 0, 0, 0);

-- Clothing: 6319 / 38500c / 4279
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6319);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 6319);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 6319, 0, 0, 0, 0);

-- Clothing: 3230 / 38500c / 4274
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 3230);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 3230);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 3230, 0, 0, 0, 0);

-- Clothing: 6340 / 38500c / 4274
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6340);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 6340);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 6340, 0, 0, 0, 0);

-- Clothing: 6642 / 38500c / 3872
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6642);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 6642);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 6642, 0, 0, 0, 0);

-- Weapon: 6641 / 42000c / 3872
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6641);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300021 AND `item` = 6641);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300021, 0, 6641, 0, 0, 0, 0);

-- Weapon: 3191 / 42000c / 4278
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 3191);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300021 AND `item` = 3191);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300021, 0, 3191, 0, 0, 0, 0);

-- Weapon: 6320 / 42000c / 4278
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6320);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300021 AND `item` = 6320);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300021, 0, 6320, 0, 0, 0, 0);

-- Weapon: 6323 / 42000c / 3887
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6323);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300021 AND `item` = 6323);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300021, 0, 6323, 0, 0, 0, 0);

-- Clothing: 6321 / 38500c / 3887
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6321);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 6321);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 6321, 0, 0, 0, 0);

-- Clothing: 5943 / 38500c / 4627
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 5943);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 5943);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 5943, 0, 0, 0, 0);

-- Weapon: 6220 / 42000c / 4275
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6220);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300021 AND `item` = 6220);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300021, 0, 6220, 0, 0, 0, 0);

-- Clothing: 6324 / 38500c / 4275
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6324);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 6324);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 6324, 0, 0, 0, 0);

-- Clothing: 6392 / 38500c / 4275
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6392);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 6392);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 6392, 0, 0, 0, 0);

