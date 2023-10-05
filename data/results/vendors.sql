-- Wailing Caverns
-- Weapon Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300001;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300001, 0, 0, 0, 0, 0, 3167, 5446, 0, 0, 'Stormwind City Armourer', 'Weapons', 'Buy', 0, 25, 30, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300001;
INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300001,0,-10507.704,1026.67419,60.522846,0.674236);

-- Clothing Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300002;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300002, 0, 0, 0, 0, 0, 3167, 5446, 0, 0, 'Stormwind City Armourer', 'Armour', 'Buy', 0, 25, 30, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300002;
INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300002,0,-10505.896,1024.38439,60.522846,1.110132);

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
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (2500005, 950002, 1, 0, 0, 1, 1, -854.61468, -1985.7631, 91.953087, 3.142195, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- Clothing: 6627 / 27500c / 3654
UPDATE `item_template` SET `BuyPrice` = 27500 WHERE (`entry` = 6627);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 6627);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 6627, 0, 0, 0, 0);

-- Clothing: 6461 / 27500c / 3654
UPDATE `item_template` SET `BuyPrice` = 27500 WHERE (`entry` = 6461);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 6461);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 6461, 0, 0, 0, 0);

-- Weapon: 6630 / 30000c / 5775
UPDATE `item_template` SET `BuyPrice` = 30000 WHERE (`entry` = 6630);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 6630);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 6630, 0, 0, 0, 0);

-- Weapon: 6631 / 30000c / 5775
UPDATE `item_template` SET `BuyPrice` = 30000 WHERE (`entry` = 6631);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 6631);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 6631, 0, 0, 0, 0);

-- Clothing: 6460 / 27500c / 3669
UPDATE `item_template` SET `BuyPrice` = 27500 WHERE (`entry` = 6460);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 6460);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 6460, 0, 0, 0, 0);

-- Weapon: 6469 / 30000c / 3673
UPDATE `item_template` SET `BuyPrice` = 30000 WHERE (`entry` = 6469);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 6469);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 6469, 0, 0, 0, 0);

-- Weapon: 6472 / 30000c / 3670
UPDATE `item_template` SET `BuyPrice` = 30000 WHERE (`entry` = 6472);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 6472);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 6472, 0, 0, 0, 0);

-- Clothing: 5404 / 27500c / 3671
UPDATE `item_template` SET `BuyPrice` = 27500 WHERE (`entry` = 5404);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 5404);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 5404, 0, 0, 0, 0);

-- Clothing: 5970 / 27500c / 3673
UPDATE `item_template` SET `BuyPrice` = 27500 WHERE (`entry` = 5970);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 5970);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 5970, 0, 0, 0, 0);

-- Clothing: 6459 / 27500c / 3673
UPDATE `item_template` SET `BuyPrice` = 27500 WHERE (`entry` = 6459);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 6459);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 6459, 0, 0, 0, 0);

-- Clothing: 6473 / 27500c / 3670
UPDATE `item_template` SET `BuyPrice` = 27500 WHERE (`entry` = 6473);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 6473);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 6473, 0, 0, 0, 0);

-- Clothing: 6629 / 27500c / 5775
UPDATE `item_template` SET `BuyPrice` = 27500 WHERE (`entry` = 6629);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 6629);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 6629, 0, 0, 0, 0);

-- Clothing: 10410 / 27500c / 3669
UPDATE `item_template` SET `BuyPrice` = 27500 WHERE (`entry` = 10410);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 10410);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 10410, 0, 0, 0, 0);

-- Clothing: 10411 / 27500c / 3673
UPDATE `item_template` SET `BuyPrice` = 27500 WHERE (`entry` = 10411);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 10411);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 10411, 0, 0, 0, 0);

-- Weapon: 6448 / 30000c / 3674
UPDATE `item_template` SET `BuyPrice` = 30000 WHERE (`entry` = 6448);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 6448);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 6448, 0, 0, 0, 0);

-- Clothing: 6449 / 27500c / 3674
UPDATE `item_template` SET `BuyPrice` = 27500 WHERE (`entry` = 6449);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 6449);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 6449, 0, 0, 0, 0);

-- Clothing: 6465 / 27500c / 3669
UPDATE `item_template` SET `BuyPrice` = 27500 WHERE (`entry` = 6465);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 6465);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 6465, 0, 0, 0, 0);

-- Clothing: 10412 / 27500c / 3671
UPDATE `item_template` SET `BuyPrice` = 27500 WHERE (`entry` = 10412);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 10412);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 10412, 0, 0, 0, 0);

-- Weapon: 5243 / 30000c / 5912
UPDATE `item_template` SET `BuyPrice` = 30000 WHERE (`entry` = 5243);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 5243);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 5243, 0, 0, 0, 0);

-- Weapon: 6447 / 30000c / 3653
UPDATE `item_template` SET `BuyPrice` = 30000 WHERE (`entry` = 6447);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 6447);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 6447, 0, 0, 0, 0);

-- Clothing: 6632 / 27500c / 5912
UPDATE `item_template` SET `BuyPrice` = 27500 WHERE (`entry` = 6632);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 6632);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 6632, 0, 0, 0, 0);

-- Weapon: 13245 / 30000c / 3653
UPDATE `item_template` SET `BuyPrice` = 30000 WHERE (`entry` = 13245);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 13245);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 13245, 0, 0, 0, 0);

-- Clothing: 10413 / 27500c / 3840
UPDATE `item_template` SET `BuyPrice` = 27500 WHERE (`entry` = 10413);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 10413);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 10413, 0, 0, 0, 0);

-- Deadmines
-- Weapon Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300011;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300011, 0, 0, 0, 0, 0, 3167, 5446, 0, 0, 'Stormwind City Armourer', 'Weapons', 'Buy', 0, 25, 30, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300011;
INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300011,0,-10507.704,1026.67419,60.522846,0.674236);

-- Clothing Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300012;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300012, 0, 0, 0, 0, 0, 3167, 5446, 0, 0, 'Stormwind City Armourer', 'Armour', 'Buy', 0, 25, 30, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300012;
INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300012,0,-10505.896,1024.38439,60.522846,1.110132);

-- Trinket Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300013;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300013, 0, 0, 0, 0, 0, 3167, 5446, 0, 0, 'Stormwind City Armourer', 'Trinkets', 'Buy', 0, 25, 30, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300013;
INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300013,0,-10509.912,1027.70227,60.522869,0.650674);

-- Clothing: 5193 / 27500c / 639
UPDATE `item_template` SET `BuyPrice` = 27500 WHERE (`entry` = 5193);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300012 AND `item` = 5193);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300012, 0, 5193, 0, 0, 0, 0);

-- Weapon: 5191 / 30000c / 639
UPDATE `item_template` SET `BuyPrice` = 30000 WHERE (`entry` = 5191);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 5191);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 5191, 0, 0, 0, 0);

-- Clothing: 5202 / 27500c / 639
UPDATE `item_template` SET `BuyPrice` = 27500 WHERE (`entry` = 5202);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300012 AND `item` = 5202);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300012, 0, 5202, 0, 0, 0, 0);

-- Clothing: 10399 / 27500c / 639
UPDATE `item_template` SET `BuyPrice` = 27500 WHERE (`entry` = 10399);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300012 AND `item` = 10399);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300012, 0, 10399, 0, 0, 0, 0);

-- Weapon: 5201 / 30000c / 647
UPDATE `item_template` SET `BuyPrice` = 30000 WHERE (`entry` = 5201);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 5201);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 5201, 0, 0, 0, 0);

-- Weapon: 7230 / 30000c / 646
UPDATE `item_template` SET `BuyPrice` = 30000 WHERE (`entry` = 7230);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 7230);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 7230, 0, 0, 0, 0);

-- Weapon: 5187 / 30000c / 644
UPDATE `item_template` SET `BuyPrice` = 30000 WHERE (`entry` = 5187);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 5187);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 5187, 0, 0, 0, 0);

-- Weapon: 872 / 30000c / 644
UPDATE `item_template` SET `BuyPrice` = 30000 WHERE (`entry` = 872);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 872);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 872, 0, 0, 0, 0);

-- Weapon: 5194 / 30000c / 643
UPDATE `item_template` SET `BuyPrice` = 30000 WHERE (`entry` = 5194);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 5194);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 5194, 0, 0, 0, 0);

-- Weapon: 5200 / 30000c / 647
UPDATE `item_template` SET `BuyPrice` = 30000 WHERE (`entry` = 5200);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 5200);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 5200, 0, 0, 0, 0);

-- Clothing: 10403 / 27500c / 647
UPDATE `item_template` SET `BuyPrice` = 27500 WHERE (`entry` = 10403);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300012 AND `item` = 10403);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300012, 0, 10403, 0, 0, 0, 0);

-- Weapon: 5198 / 30000c / 645
UPDATE `item_template` SET `BuyPrice` = 30000 WHERE (`entry` = 5198);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 5198);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 5198, 0, 0, 0, 0);

-- Trinkets/Other: 1156 / 26250c / 1763
UPDATE `item_template` SET `BuyPrice` = 26250 WHERE (`entry` = 1156);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300013 AND `item` = 1156);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300013, 0, 1156, 0, 0, 0, 0);

-- Weapon: 5192 / 30000c / 646
UPDATE `item_template` SET `BuyPrice` = 30000 WHERE (`entry` = 5192);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 5192);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 5192, 0, 0, 0, 0);

-- Weapon: 5196 / 30000c / 646
UPDATE `item_template` SET `BuyPrice` = 30000 WHERE (`entry` = 5196);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 5196);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 5196, 0, 0, 0, 0);

-- Clothing: 5195 / 27500c / 643
UPDATE `item_template` SET `BuyPrice` = 27500 WHERE (`entry` = 5195);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300012 AND `item` = 5195);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300012, 0, 5195, 0, 0, 0, 0);

-- Weapon: 5197 / 30000c / 645
UPDATE `item_template` SET `BuyPrice` = 30000 WHERE (`entry` = 5197);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 5197);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 5197, 0, 0, 0, 0);

-- Clothing: 5199 / 27500c / 1763
UPDATE `item_template` SET `BuyPrice` = 27500 WHERE (`entry` = 5199);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300012 AND `item` = 5199);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300012, 0, 5199, 0, 0, 0, 0);

-- Weapon: 1937 / 30000c / 642
UPDATE `item_template` SET `BuyPrice` = 30000 WHERE (`entry` = 1937);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 1937);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 1937, 0, 0, 0, 0);

-- Weapon: 2169 / 30000c / 642
UPDATE `item_template` SET `BuyPrice` = 30000 WHERE (`entry` = 2169);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 2169);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 2169, 0, 0, 0, 0);

-- Weapon: 5443 / 30000c / 3586
UPDATE `item_template` SET `BuyPrice` = 30000 WHERE (`entry` = 5443);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 5443);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 5443, 0, 0, 0, 0);

