-- Uldaman
-- Weapon Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300001;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300001, 0, 0, 0, 0, 0, 7106, 0, 0, 0, 'Rixxle', 'Weapons', 'Buy', 0, 35, 45, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300001;
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001);

INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300001,0,-6437.630371,-3262.943604,241.669159,5.478165);

-- Clothing Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300002;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300002, 0, 0, 0, 0, 0, 7212, 0, 0, 0, 'Zoggit', 'Armour', 'Buy', 0, 35, 45, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300002;
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002);

INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300002,0,-6432.616211,-3260.275391,241.727966,4.645665);

-- Trinket Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300003;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300003, 0, 0, 0, 0, 0, 7104, 0, 0, 0, 'Snazzle', 'Trinkets', 'Buy', 0, 35, 45, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300003;
DELETE FROM `npc_vendor` WHERE (`entry` = 9300003);

INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300003,0,-6430.789551,-3262.597412,241.699326,3.809223);

-- Vendor Home Game Objects
-- tent 01
DELETE FROM `gameobject` WHERE (`guid` = 2500001);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (2500001, 950000, 0, 0, 0, 1, 1, -6440.316406, -3259.992432, 241.683899, 5.505644, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- boxes 01
DELETE FROM `gameobject` WHERE (`guid` = 2500004);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (2500004, 950002, 0, 0, 0, 1, 1, -6433.5625, -3258.819336, 241.763412, 4.150846, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- Trinkets/Other: 3871 / 43750c / 4852
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 3871);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300003 AND `item` = 3871);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300003, 0, 3871, 0, 0, 0, 0);

-- Trinkets/Other: 4298 / 43750c / 4852
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 4298);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300003 AND `item` = 4298);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300003, 0, 4298, 0, 0, 0, 0);

-- Trinkets/Other: 4354 / 43750c / 4860
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 4354);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300003 AND `item` = 4354);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300003, 0, 4354, 0, 0, 0, 0);

-- Trinkets/Other: 4415 / 43750c / 7022
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 4415);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300003 AND `item` = 4415);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300003, 0, 4415, 0, 0, 0, 0);

-- Trinkets/Other: 7452 / 43750c / 4852
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 7452);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300003 AND `item` = 7452);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300003, 0, 7452, 0, 0, 0, 0);

-- Trinkets/Other: 7976 / 43750c / 4860
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 7976);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300003 AND `item` = 7976);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300003, 0, 7976, 0, 0, 0, 0);

-- Trinkets/Other: 7991 / 43750c / 4853
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 7991);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300003 AND `item` = 7991);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300003, 0, 7991, 0, 0, 0, 0);

-- Trinkets/Other: 8028 / 43750c / 7030
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 8028);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300003 AND `item` = 8028);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300003, 0, 8028, 0, 0, 0, 0);

-- Trinkets/Other: 8384 / 43750c / 4861
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 8384);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300003 AND `item` = 8384);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300003, 0, 8384, 0, 0, 0, 0);

-- Clothing: 9381 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9381);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 9381);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 9381, 0, 0, 0, 0);

-- Clothing: 9383 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9383);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 9383);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 9383, 0, 0, 0, 0);

-- Clothing: 9384 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9384);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 9384);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 9384, 0, 0, 0, 0);

-- Clothing: 9386 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9386);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 9386);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 9386, 0, 0, 0, 0);

-- Weapon: 9387 / 49000c / 6910
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9387);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 9387);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 9387, 0, 0, 0, 0);

-- Weapon: 9388 / 49000c / 6910
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9388);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 9388);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 9388, 0, 0, 0, 0);

-- Weapon: 9389 / 49000c / 6910
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9389);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 9389);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 9389, 0, 0, 0, 0);

-- Weapon: 9390 / 49000c / 6910
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9390);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 9390);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 9390, 0, 0, 0, 0);

-- Clothing: 9391 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9391);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 9391);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 9391, 0, 0, 0, 0);

-- Clothing: 9392 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9392);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 9392);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 9392, 0, 0, 0, 0);

-- Weapon: 9393 / 49000c / 4860
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9393);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 9393);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 9393, 0, 0, 0, 0);

-- Weapon: 9394 / 49000c / 6907
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9394);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 9394);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 9394, 0, 0, 0, 0);

-- Weapon: 9396 / 49000c / 4860
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9396);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 9396);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 9396, 0, 0, 0, 0);

-- Weapon: 9397 / 49000c / 4860
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9397);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 9397);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 9397, 0, 0, 0, 0);

-- Weapon: 9398 / 49000c / 6907
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9398);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 9398);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 9398, 0, 0, 0, 0);

-- Clothing: 9400 / 45500c / 6906
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9400);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 9400);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 9400, 0, 0, 0, 0);

-- Clothing: 9401 / 45500c / 6906
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9401);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 9401);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 9401, 0, 0, 0, 0);

-- Weapon: 9403 / 49000c / 6908
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9403);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 9403);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 9403, 0, 0, 0, 0);

-- Weapon: 9404 / 49000c / 6908
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9404);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 9404);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 9404, 0, 0, 0, 0);

-- Weapon: 9406 / 49000c / 4860
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9406);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 9406);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 9406, 0, 0, 0, 0);

-- Weapon: 9407 / 49000c / 7228
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9407);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 9407);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 9407, 0, 0, 0, 0);

-- Clothing: 9408 / 45500c / 7228
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9408);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 9408);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 9408, 0, 0, 0, 0);

-- Weapon: 9409 / 49000c / 7228
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9409);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 9409);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 9409, 0, 0, 0, 0);

-- Weapon: 9410 / 49000c / 7206
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9410);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 9410);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 9410, 0, 0, 0, 0);

-- Weapon: 9411 / 49000c / 7206
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9411);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 9411);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 9411, 0, 0, 0, 0);

-- Clothing: 9412 / 45500c / 7291
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9412);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 9412);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 9412, 0, 0, 0, 0);

-- Clothing: 9413 / 45500c / 2748
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9413);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 9413);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 9413, 0, 0, 0, 0);

-- Weapon: 9414 / 49000c / 4854
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9414);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 9414);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 9414, 0, 0, 0, 0);

-- Weapon: 9415 / 49000c / 4854
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9415);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 9415);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 9415, 0, 0, 0, 0);

-- Clothing: 9416 / 45500c / 4854
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9416);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 9416);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 9416, 0, 0, 0, 0);

-- Clothing: 9418 / 45500c / 2748
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9418);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 9418);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 9418, 0, 0, 0, 0);

-- Clothing: 9419 / 45500c / 7291
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9419);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 9419);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 9419, 0, 0, 0, 0);

-- Weapon: 9420 / 49000c / 4860
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9420);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 9420);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 9420, 0, 0, 0, 0);

-- Clothing: 9422 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9422);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 9422);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 9422, 0, 0, 0, 0);

-- Clothing: 9423 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9423);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 9423);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 9423, 0, 0, 0, 0);

-- Clothing: 9424 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9424);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 9424);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 9424, 0, 0, 0, 0);

-- Clothing: 9425 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9425);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 9425);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 9425, 0, 0, 0, 0);

-- Clothing: 9426 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9426);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 9426);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 9426, 0, 0, 0, 0);

-- Clothing: 9427 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9427);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 9427);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 9427, 0, 0, 0, 0);

-- Weapon: 9428 / 49000c / 4860
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9428);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 9428);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 9428, 0, 0, 0, 0);

-- Weapon: 9429 / 49000c / 4860
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9429);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 9429);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 9429, 0, 0, 0, 0);

-- Weapon: 9430 / 49000c / 4860
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9430);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 9430);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 9430, 0, 0, 0, 0);

-- Weapon: 9431 / 49000c / 4860
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9431);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 9431);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 9431, 0, 0, 0, 0);

-- Weapon: 9432 / 49000c / 4860
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9432);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 9432);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 9432, 0, 0, 0, 0);

-- Clothing: 9465 / 45500c / 4860
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9465);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300002 AND `item` = 9465);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300002, 0, 9465, 0, 0, 0, 0);

-- Trinkets/Other: 10605 / 43750c / 4860
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 10605);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300003 AND `item` = 10605);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300003, 0, 10605, 0, 0, 0, 0);

-- Trinkets/Other: 10608 / 43750c / 4860
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 10608);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300003 AND `item` = 10608);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300003, 0, 10608, 0, 0, 0, 0);

-- Weapon: 11118 / 49000c / 2748
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 11118);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 11118);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 11118, 0, 0, 0, 0);

-- Weapon: 11310 / 49000c / 7291
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 11310);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 11310);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 11310, 0, 0, 0, 0);

-- Weapon: 11311 / 49000c / 7291
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 11311);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300001 AND `item` = 11311);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300001, 0, 11311, 0, 0, 0, 0);

-- Gnomeregan
-- Weapon Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300011;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300011, 0, 0, 0, 0, 0, 7106, 0, 0, 0, 'Rixxle', 'Weapons', 'Buy', 0, 25, 30, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300011;
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011);

INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300011,0,-5202.669922,479.067535,386.820068,2.10487);

-- Clothing Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300012;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300012, 0, 0, 0, 0, 0, 7212, 0, 0, 0, 'Zoggit', 'Armour', 'Buy', 0, 25, 30, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300012;
DELETE FROM `npc_vendor` WHERE (`entry` = 9300012);

INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300012,0,-5209.73877,479.852631,387.138885,0.777547);

-- Trinket Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300013;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300013, 0, 0, 0, 0, 0, 7104, 0, 0, 0, 'Snazzle', 'Trinkets', 'Buy', 0, 25, 30, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300013;
DELETE FROM `npc_vendor` WHERE (`entry` = 9300013);

INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300013,0,-5207.291016,489.281647,387.876465,4.975509);

-- Vendor Home Game Objects
-- tent 01
DELETE FROM `gameobject` WHERE (`guid` = 2500011);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (2500011, 950000, 0, 0, 0, 1, 1, -5206.961426, 474.492371, 386.625732, 1.4569, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- boxes 01
DELETE FROM `gameobject` WHERE (`guid` = 2500014);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (2500014, 950002, 0, 0, 0, 1, 1, -5203.503906, 475.03125, 386.682587, 1.77106, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- misc 01
DELETE FROM `gameobject` WHERE (`guid` = 2500017);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (2500017, 102990, 0, 0, 0, 1, 1, -5206.217773, 485.584717, 387.519897, 4.97551, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- Trinkets/Other: 3871 / 43750c / 6233
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 3871);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300013 AND `item` = 3871);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300013, 0, 3871, 0, 0, 0, 0);

-- Trinkets/Other: 3875 / 43750c / 6226
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 3875);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300013 AND `item` = 3875);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300013, 0, 3875, 0, 0, 0, 0);

-- Trinkets/Other: 4298 / 43750c / 6233
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 4298);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300013 AND `item` = 4298);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300013, 0, 4298, 0, 0, 0, 0);

-- Trinkets/Other: 4415 / 43750c / 7800
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 4415);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300013 AND `item` = 4415);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300013, 0, 4415, 0, 0, 0, 0);

-- Trinkets/Other: 7452 / 43750c / 6227
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 7452);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300013 AND `item` = 7452);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300013, 0, 7452, 0, 0, 0, 0);

-- Trinkets/Other: 8384 / 43750c / 6212
UPDATE `item_template` SET `BuyPrice` = 43750 WHERE (`entry` = 8384);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300013 AND `item` = 8384);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300013, 0, 8384, 0, 0, 0, 0);

-- Weapon: 9446 / 49000c / 6235
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9446);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 9446);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 9446, 0, 0, 0, 0);

-- Clothing: 9447 / 45500c / 6235
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9447);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300012 AND `item` = 9447);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300012, 0, 9447, 0, 0, 0, 0);

-- Clothing: 9448 / 45500c / 6235
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9448);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300012 AND `item` = 9448);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300012, 0, 9448, 0, 0, 0, 0);

-- Weapon: 9449 / 49000c / 6229
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9449);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 9449);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 9449, 0, 0, 0, 0);

-- Clothing: 9450 / 45500c / 6229
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9450);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300012 AND `item` = 9450);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300012, 0, 9450, 0, 0, 0, 0);

-- Weapon: 9452 / 49000c / 7079
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9452);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 9452);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 9452, 0, 0, 0, 0);

-- Weapon: 9453 / 49000c / 7079
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9453);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 9453);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 9453, 0, 0, 0, 0);

-- Clothing: 9454 / 45500c / 7079
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9454);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300012 AND `item` = 9454);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300012, 0, 9454, 0, 0, 0, 0);

-- Clothing: 9455 / 45500c / 6228
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9455);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300012 AND `item` = 9455);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300012, 0, 9455, 0, 0, 0, 0);

-- Weapon: 9456 / 49000c / 6228
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9456);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 9456);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 9456, 0, 0, 0, 0);

-- Weapon: 9457 / 49000c / 6228
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9457);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 9457);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 9457, 0, 0, 0, 0);

-- Clothing: 9458 / 45500c / 7800
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9458);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300012 AND `item` = 9458);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300012, 0, 9458, 0, 0, 0, 0);

-- Weapon: 9459 / 49000c / 7800
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9459);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 9459);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 9459, 0, 0, 0, 0);

-- Clothing: 9461 / 45500c / 7800
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9461);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300012 AND `item` = 9461);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300012, 0, 9461, 0, 0, 0, 0);

-- Weapon: 9485 / 49000c / 6233
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9485);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 9485);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 9485, 0, 0, 0, 0);

-- Weapon: 9486 / 49000c / 6233
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9486);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 9486);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 9486, 0, 0, 0, 0);

-- Weapon: 9487 / 49000c / 6233
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9487);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 9487);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 9487, 0, 0, 0, 0);

-- Weapon: 9488 / 49000c / 6233
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9488);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 9488);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 9488, 0, 0, 0, 0);

-- Weapon: 9490 / 49000c / 6233
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 9490);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300011 AND `item` = 9490);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300011, 0, 9490, 0, 0, 0, 0);

-- Clothing: 9491 / 45500c / 6233
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9491);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300012 AND `item` = 9491);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300012, 0, 9491, 0, 0, 0, 0);

-- Clothing: 9492 / 45500c / 7800
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9492);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300012 AND `item` = 9492);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300012, 0, 9492, 0, 0, 0, 0);

-- Clothing: 9508 / 45500c / 6233
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9508);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300012 AND `item` = 9508);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300012, 0, 9508, 0, 0, 0, 0);

-- Clothing: 9509 / 45500c / 6233
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9509);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300012 AND `item` = 9509);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300012, 0, 9509, 0, 0, 0, 0);

-- Clothing: 9510 / 45500c / 6233
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 9510);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300012 AND `item` = 9510);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300012, 0, 9510, 0, 0, 0, 0);

-- Wailing Caverns
-- Weapon Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300021;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300021, 0, 0, 0, 0, 0, 7106, 0, 0, 0, 'Rixxle', 'Weapons', 'Buy', 0, 25, 30, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300021;
DELETE FROM `npc_vendor` WHERE (`entry` = 9300021);

INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300021,1,-857.33636,-1989.1666,91.671768,4.295179);

-- Clothing Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300022;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300022, 0, 0, 0, 0, 0, 7212, 0, 0, 0, 'Zoggit', 'Armour', 'Buy', 0, 25, 30, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300022;
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022);

INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300022,1,-852.08715,-1993.8306,91.291885,3.631512);

-- Vendor Home Game Objects
-- tent 01
DELETE FROM `gameobject` WHERE (`guid` = 2500021);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (2500021, 950004, 1, 0, 0, 1, 1, -870.023376, -1987.217285, 92.529778, 5.082149, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- tent 02
DELETE FROM `gameobject` WHERE (`guid` = 2500022);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (2500022, 950005, 1, 0, 0, 1, 1, -855.239807, -1985.682495, 91.937462, 4.182871, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- boxes 01
DELETE FROM `gameobject` WHERE (`guid` = 2500024);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (2500024, 950001, 1, 0, 0, 1, 1, -850.34869, -1987.8153, 91.768799, 4.010049, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- boxes 02
DELETE FROM `gameobject` WHERE (`guid` = 2500025);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (2500025, 950002, 1, 0, 0, 1, 1, -322.87237, 1445.92395, 30.831896, 0.215336, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- Clothing: 6627 / 38500c / 3654
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6627);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 6627);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 6627, 0, 0, 0, 0);

-- Clothing: 6461 / 38500c / 3654
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6461);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 6461);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 6461, 0, 0, 0, 0);

-- Weapon: 6630 / 42000c / 5775
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6630);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300021 AND `item` = 6630);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300021, 0, 6630, 0, 0, 0, 0);

-- Weapon: 6631 / 42000c / 5775
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6631);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300021 AND `item` = 6631);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300021, 0, 6631, 0, 0, 0, 0);

-- Clothing: 6460 / 38500c / 3669
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6460);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 6460);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 6460, 0, 0, 0, 0);

-- Weapon: 6469 / 42000c / 3673
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6469);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300021 AND `item` = 6469);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300021, 0, 6469, 0, 0, 0, 0);

-- Weapon: 6472 / 42000c / 3670
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6472);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300021 AND `item` = 6472);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300021, 0, 6472, 0, 0, 0, 0);

-- Clothing: 5404 / 38500c / 3671
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 5404);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 5404);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 5404, 0, 0, 0, 0);

-- Clothing: 5970 / 38500c / 3673
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 5970);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 5970);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 5970, 0, 0, 0, 0);

-- Clothing: 6459 / 38500c / 3673
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6459);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 6459);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 6459, 0, 0, 0, 0);

-- Clothing: 6473 / 38500c / 3670
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6473);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 6473);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 6473, 0, 0, 0, 0);

-- Clothing: 6629 / 38500c / 5775
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6629);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 6629);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 6629, 0, 0, 0, 0);

-- Clothing: 10410 / 38500c / 3669
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 10410);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 10410);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 10410, 0, 0, 0, 0);

-- Clothing: 10411 / 38500c / 3673
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 10411);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 10411);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 10411, 0, 0, 0, 0);

-- Weapon: 6448 / 42000c / 3674
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6448);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300021 AND `item` = 6448);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300021, 0, 6448, 0, 0, 0, 0);

-- Clothing: 6449 / 38500c / 3674
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6449);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 6449);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 6449, 0, 0, 0, 0);

-- Clothing: 6465 / 38500c / 3669
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6465);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 6465);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 6465, 0, 0, 0, 0);

-- Clothing: 10412 / 38500c / 3671
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 10412);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 10412);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 10412, 0, 0, 0, 0);

-- Weapon: 5243 / 42000c / 5912
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5243);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300021 AND `item` = 5243);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300021, 0, 5243, 0, 0, 0, 0);

-- Weapon: 6447 / 42000c / 3653
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6447);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300021 AND `item` = 6447);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300021, 0, 6447, 0, 0, 0, 0);

-- Clothing: 6632 / 38500c / 5912
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6632);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 6632);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 6632, 0, 0, 0, 0);

-- Weapon: 13245 / 42000c / 3653
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 13245);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300021 AND `item` = 13245);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300021, 0, 13245, 0, 0, 0, 0);

-- Clothing: 10413 / 38500c / 3840
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 10413);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300022 AND `item` = 10413);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300022, 0, 10413, 0, 0, 0, 0);

-- Deadmines
-- Weapon Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300031;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300031, 0, 0, 0, 0, 0, 7106, 0, 0, 0, 'Rixxle', 'Weapons', 'Buy', 0, 25, 30, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300031;
DELETE FROM `npc_vendor` WHERE (`entry` = 9300031);

INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300031,0,-10507.704,1026.67419,60.522846,0.674236);

-- Clothing Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300032;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300032, 0, 0, 0, 0, 0, 7212, 0, 0, 0, 'Zoggit', 'Armour', 'Buy', 0, 25, 30, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300032;
DELETE FROM `npc_vendor` WHERE (`entry` = 9300032);

INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300032,0,-10505.896,1024.38439,60.522846,1.110132);

-- Trinket Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300033;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300033, 0, 0, 0, 0, 0, 7104, 0, 0, 0, 'Snazzle', 'Trinkets', 'Buy', 0, 25, 30, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300033;
DELETE FROM `npc_vendor` WHERE (`entry` = 9300033);

INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300033,0,-10509.912,1027.70227,60.522869,0.650674);

-- Clothing: 5193 / 38500c / 639
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 5193);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300032 AND `item` = 5193);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300032, 0, 5193, 0, 0, 0, 0);

-- Weapon: 5191 / 42000c / 639
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5191);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300031 AND `item` = 5191);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300031, 0, 5191, 0, 0, 0, 0);

-- Clothing: 5202 / 38500c / 639
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 5202);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300032 AND `item` = 5202);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300032, 0, 5202, 0, 0, 0, 0);

-- Clothing: 10399 / 38500c / 639
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 10399);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300032 AND `item` = 10399);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300032, 0, 10399, 0, 0, 0, 0);

-- Weapon: 5201 / 42000c / 647
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5201);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300031 AND `item` = 5201);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300031, 0, 5201, 0, 0, 0, 0);

-- Weapon: 7230 / 42000c / 646
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 7230);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300031 AND `item` = 7230);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300031, 0, 7230, 0, 0, 0, 0);

-- Weapon: 5187 / 42000c / 644
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5187);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300031 AND `item` = 5187);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300031, 0, 5187, 0, 0, 0, 0);

-- Weapon: 872 / 42000c / 644
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 872);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300031 AND `item` = 872);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300031, 0, 872, 0, 0, 0, 0);

-- Weapon: 5194 / 42000c / 643
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5194);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300031 AND `item` = 5194);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300031, 0, 5194, 0, 0, 0, 0);

-- Weapon: 5200 / 42000c / 647
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5200);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300031 AND `item` = 5200);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300031, 0, 5200, 0, 0, 0, 0);

-- Clothing: 10403 / 38500c / 647
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 10403);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300032 AND `item` = 10403);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300032, 0, 10403, 0, 0, 0, 0);

-- Weapon: 5198 / 42000c / 645
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5198);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300031 AND `item` = 5198);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300031, 0, 5198, 0, 0, 0, 0);

-- Trinkets/Other: 1156 / 36750c / 1763
UPDATE `item_template` SET `BuyPrice` = 36750 WHERE (`entry` = 1156);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300033 AND `item` = 1156);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300033, 0, 1156, 0, 0, 0, 0);

-- Weapon: 5192 / 42000c / 646
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5192);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300031 AND `item` = 5192);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300031, 0, 5192, 0, 0, 0, 0);

-- Weapon: 5196 / 42000c / 646
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5196);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300031 AND `item` = 5196);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300031, 0, 5196, 0, 0, 0, 0);

-- Clothing: 5195 / 38500c / 643
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 5195);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300032 AND `item` = 5195);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300032, 0, 5195, 0, 0, 0, 0);

-- Weapon: 5197 / 42000c / 645
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5197);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300031 AND `item` = 5197);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300031, 0, 5197, 0, 0, 0, 0);

-- Clothing: 5199 / 38500c / 1763
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 5199);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300032 AND `item` = 5199);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300032, 0, 5199, 0, 0, 0, 0);

-- Weapon: 1937 / 42000c / 642
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 1937);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300031 AND `item` = 1937);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300031, 0, 1937, 0, 0, 0, 0);

-- Weapon: 2169 / 42000c / 642
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 2169);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300031 AND `item` = 2169);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300031, 0, 2169, 0, 0, 0, 0);

-- Weapon: 5443 / 42000c / 3586
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 5443);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300031 AND `item` = 5443);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300031, 0, 5443, 0, 0, 0, 0);

-- Shadowfang Keep
-- Weapon Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300041;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300041, 0, 0, 0, 0, 0, 7106, 0, 0, 0, 'Rixxle', 'Weapons', 'Buy', 0, 25, 30, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300041;
DELETE FROM `npc_vendor` WHERE (`entry` = 9300041);

INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300041,0,-315.94293,1448.59252,31.213396,0.038621);

-- Clothing Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300042;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300042, 0, 0, 0, 0, 0, 7212, 0, 0, 0, 'Zoggit', 'Armour', 'Buy', 0, 25, 30, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300042;
DELETE FROM `npc_vendor` WHERE (`entry` = 9300042);

INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300042,0,-316.53732,1445.32824,31.086363,6.097972);

-- Vendor Home Game Objects
-- tent 01
DELETE FROM `gameobject` WHERE (`guid` = 2500041);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (2500041, 950000, 0, 0, 0, 1, 1, -320.85003, 1451.38818, 30.831896, 6.06263, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- boxes 01
DELETE FROM `gameobject` WHERE (`guid` = 2500044);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (2500044, 950002, 0, 0, 0, 1, 1, -319.94238, 1441.51611, 30.867828, 0.395984, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- Clothing: 6314 / 38500c / 3927
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6314);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300042 AND `item` = 6314);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300042, 0, 6314, 0, 0, 0, 0);

-- Clothing: 3748 / 38500c / 3927
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 3748);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300042 AND `item` = 3748);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300042, 0, 3748, 0, 0, 0, 0);

-- Weapon: 23171 / 42000c / 14682
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 23171);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300041 AND `item` = 23171);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300041, 0, 23171, 0, 0, 0, 0);

-- Clothing: 23173 / 38500c / 14682
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 23173);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300042 AND `item` = 23173);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300042, 0, 23173, 0, 0, 0, 0);

-- Clothing: 6226 / 38500c / 3886
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6226);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300042 AND `item` = 6226);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300042, 0, 6226, 0, 0, 0, 0);

-- Weapon: 6633 / 42000c / 3886
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6633);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300041 AND `item` = 6633);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300041, 0, 6633, 0, 0, 0, 0);

-- Weapon: 1292 / 42000c / 3886
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 1292);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300041 AND `item` = 1292);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300041, 0, 1292, 0, 0, 0, 0);

-- Weapon: 6318 / 42000c / 4279
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6318);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300041 AND `item` = 6318);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300041, 0, 6318, 0, 0, 0, 0);

-- Clothing: 6319 / 38500c / 4279
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6319);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300042 AND `item` = 6319);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300042, 0, 6319, 0, 0, 0, 0);

-- Clothing: 3230 / 38500c / 4274
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 3230);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300042 AND `item` = 3230);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300042, 0, 3230, 0, 0, 0, 0);

-- Clothing: 6340 / 38500c / 4274
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6340);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300042 AND `item` = 6340);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300042, 0, 6340, 0, 0, 0, 0);

-- Clothing: 6642 / 38500c / 3872
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6642);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300042 AND `item` = 6642);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300042, 0, 6642, 0, 0, 0, 0);

-- Weapon: 6641 / 42000c / 3872
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6641);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300041 AND `item` = 6641);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300041, 0, 6641, 0, 0, 0, 0);

-- Weapon: 3191 / 42000c / 4278
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 3191);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300041 AND `item` = 3191);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300041, 0, 3191, 0, 0, 0, 0);

-- Weapon: 6320 / 42000c / 4278
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6320);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300041 AND `item` = 6320);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300041, 0, 6320, 0, 0, 0, 0);

-- Weapon: 6323 / 42000c / 3887
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6323);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300041 AND `item` = 6323);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300041, 0, 6323, 0, 0, 0, 0);

-- Clothing: 6321 / 38500c / 3887
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6321);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300042 AND `item` = 6321);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300042, 0, 6321, 0, 0, 0, 0);

-- Clothing: 5943 / 38500c / 4627
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 5943);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300042 AND `item` = 5943);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300042, 0, 5943, 0, 0, 0, 0);

-- Weapon: 6220 / 42000c / 4275
UPDATE `item_template` SET `BuyPrice` = 42000 WHERE (`entry` = 6220);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300041 AND `item` = 6220);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300041, 0, 6220, 0, 0, 0, 0);

-- Clothing: 6324 / 38500c / 4275
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6324);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300042 AND `item` = 6324);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300042, 0, 6324, 0, 0, 0, 0);

-- Clothing: 6392 / 38500c / 4275
UPDATE `item_template` SET `BuyPrice` = 38500 WHERE (`entry` = 6392);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300042 AND `item` = 6392);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300042, 0, 6392, 0, 0, 0, 0);

-- Razorfen Kraul
-- Weapon Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300051;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300051, 0, 0, 0, 0, 0, 7106, 0, 0, 0, 'Rixxle', 'Weapons', 'Buy', 0, 25, 30, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300051;
DELETE FROM `npc_vendor` WHERE (`entry` = 9300051);

INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300051,1,-315.94293,1448.59252,31.213396,0.038621);

-- Clothing Merchant
DELETE FROM `creature_template` WHERE `entry`= 9300052;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (9300052, 0, 0, 0, 0, 0, 7212, 0, 0, 0, 'Zoggit', 'Armour', 'Buy', 0, 25, 30, 0, 0, 129, 1, 1.14286, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 0);
DELETE FROM `creature` WHERE `id1`=9300052;
DELETE FROM `npc_vendor` WHERE (`entry` = 9300052);

INSERT INTO `creature` (`id1`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES (9300052,1,-316.53732,1445.32824,31.086363,6.097972);

-- Vendor Home Game Objects
-- tent 01
DELETE FROM `gameobject` WHERE (`guid` = 2500051);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (2500051, 950000, 1, 0, 0, 1, 1, -320.85003, 1451.38818, 30.831896, 6.06263, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- boxes 01
DELETE FROM `gameobject` WHERE (`guid` = 2500054);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES (2500054, 950002, 1, 0, 0, 1, 1, -319.94238, 1441.51611, 30.867828, 0.395984, 0, 0, 0, 0, 300, 0, 1, '', NULL, NULL);

-- Weapon: 776 / 49000c / 4512
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 776);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300051 AND `item` = 776);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300051, 0, 776, 0, 0, 0, 0);

-- Clothing: 1488 / 45500c / 4512
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 1488);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300052 AND `item` = 1488);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300052, 0, 1488, 0, 0, 0, 0);

-- Weapon: 1727 / 49000c / 4512
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 1727);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300051 AND `item` = 1727);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300051, 0, 1727, 0, 0, 0, 0);

-- Weapon: 1975 / 49000c / 4512
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 1975);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300051 AND `item` = 1975);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300051, 0, 1975, 0, 0, 0, 0);

-- Weapon: 1976 / 49000c / 4436
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 1976);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300051 AND `item` = 1976);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300051, 0, 1976, 0, 0, 0, 0);

-- Clothing: 1978 / 45500c / 4512
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 1978);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300052 AND `item` = 1978);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300052, 0, 1978, 0, 0, 0, 0);

-- Clothing: 2039 / 45500c / 4512
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 2039);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300052 AND `item` = 2039);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300052, 0, 2039, 0, 0, 0, 0);

-- Clothing: 2264 / 45500c / 4512
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 2264);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300052 AND `item` = 2264);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300052, 0, 2264, 0, 0, 0, 0);

-- Weapon: 2549 / 49000c / 4512
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 2549);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300051 AND `item` = 2549);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300051, 0, 2549, 0, 0, 0, 0);

-- Weapon: 2816 / 49000c / 4428
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 2816);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300051 AND `item` = 2816);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300051, 0, 2816, 0, 0, 0, 0);

-- Clothing: 4438 / 45500c / 4512
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 4438);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300052 AND `item` = 4438);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300052, 0, 4438, 0, 0, 0, 0);

-- Weapon: 6679 / 49000c / 4438
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 6679);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300051 AND `item` = 6679);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300051, 0, 6679, 0, 0, 0, 0);

-- Weapon: 6681 / 49000c / 4424
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 6681);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300051 AND `item` = 6681);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300051, 0, 6681, 0, 0, 0, 0);

-- Clothing: 6682 / 45500c / 4428
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 6682);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300052 AND `item` = 6682);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300052, 0, 6682, 0, 0, 0, 0);

-- Clothing: 6685 / 45500c / 4428
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 6685);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300052 AND `item` = 6685);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300052, 0, 6685, 0, 0, 0, 0);

-- Clothing: 6686 / 45500c / 4420
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 6686);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300052 AND `item` = 6686);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300052, 0, 6686, 0, 0, 0, 0);

-- Weapon: 6687 / 49000c / 4420
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 6687);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300051 AND `item` = 6687);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300051, 0, 6687, 0, 0, 0, 0);

-- Clothing: 6688 / 45500c / 4842
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 6688);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300052 AND `item` = 6688);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300052, 0, 6688, 0, 0, 0, 0);

-- Weapon: 6689 / 49000c / 4842
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 6689);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300051 AND `item` = 6689);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300051, 0, 6689, 0, 0, 0, 0);

-- Clothing: 6690 / 45500c / 4422
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 6690);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300052 AND `item` = 6690);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300052, 0, 6690, 0, 0, 0, 0);

-- Weapon: 6691 / 49000c / 4422
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 6691);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300051 AND `item` = 6691);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300051, 0, 6691, 0, 0, 0, 0);

-- Weapon: 6692 / 49000c / 4421
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 6692);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300051 AND `item` = 6692);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300051, 0, 6692, 0, 0, 0, 0);

-- Clothing: 6693 / 45500c / 4421
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 6693);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300052 AND `item` = 6693);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300052, 0, 6693, 0, 0, 0, 0);

-- Clothing: 6694 / 45500c / 4421
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 6694);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300052 AND `item` = 6694);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300052, 0, 6694, 0, 0, 0, 0);

-- Clothing: 6695 / 45500c / 4425
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 6695);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300052 AND `item` = 6695);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300052, 0, 6695, 0, 0, 0, 0);

-- Weapon: 6696 / 49000c / 4425
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 6696);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300051 AND `item` = 6696);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300051, 0, 6696, 0, 0, 0, 0);

-- Clothing: 6697 / 45500c / 4425
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 6697);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300052 AND `item` = 6697);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300052, 0, 6697, 0, 0, 0, 0);

-- Clothing: 24063 / 45500c / 4436
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 24063);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300052 AND `item` = 24063);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300052, 0, 24063, 0, 0, 0, 0);

-- Clothing: 24064 / 45500c / 4436
UPDATE `item_template` SET `BuyPrice` = 45500 WHERE (`entry` = 24064);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300052 AND `item` = 24064);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300052, 0, 24064, 0, 0, 0, 0);

-- Weapon: 24069 / 49000c / 4436
UPDATE `item_template` SET `BuyPrice` = 49000 WHERE (`entry` = 24069);
DELETE FROM `npc_vendor` WHERE (`entry` = 9300051 AND `item` = 24069);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (9300051, 0, 24069, 0, 0, 0, 0);

