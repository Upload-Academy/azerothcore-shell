
-- this SQL creates NPCs we can use in quests and more.
-- 
-- These are simply made to "exist" and be available for future use.
-- The items aren't made visible by these SQL statements.

-- SET @BaseEntry := 960000;

-- SET
-- @Entry := @BaseEntry+1,
-- @ModelID1 := 4845,
-- @ModelID2 := 4846,
-- @ModelID3 := 4847,
-- @ModelID4 := 4848,
-- @Name := "Elirenna",
-- @Subname := NULL,
-- @MinLevel := 40,
-- @MaxLevel := 43,
-- @Faction := 79,
-- @NPCFlag := 2,
-- @Rank := 0,
-- @Type := 7,  -- Human
-- @RunSpeed := 1.14286;
-- DELETE FROM `creature_template` WHERE (`entry` = @Entry);
-- INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
-- (@Entry, 0, 0, 0, 0, 0, @ModelID1, @ModelID2, @ModelID3, @ModelID4, @Name, NULL, NULL, @MinLevel, @MaxLevel, 0, @Faction, 35, 0, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1250, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

-- DELETE FROM `creature_template` WHERE (`entry` = 6086);
-- INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
-- (@Entry, 0, 0, 0, 0, 0, @ModelID1, @ModelID2, @ModelID3, @ModelID4, @Name, @Subname, NULL, @MinLevel, @MaxLevel, 0, @Faction, @NPCFlag, @Rank, @RunSpeed, 1, 1, 18, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 6086, 0, 0, 0, 0, 0, '', 1, 1, 2, 1, 1, 1, 0, 0, 1, 0, 0, 65536, '', 12340);
