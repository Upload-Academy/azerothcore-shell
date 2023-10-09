
-- Augments/hijacks Alliance Vanguard to produce dailies and weeklies
-- in every major city and some major towns

use acore_world;

-- (Generic) Alliance Vanguard NPC
SET
@NPCEntry := 9211000,
@ModelID1 := 21754, -- four different models for some variation
@ModelID2 := 21755,
@ModelID3 := 21756,
@ModelID4 := 21757,
@Name := "Vanguard Agent",
@Subname := "Alliance Vanguard Quartermaster",
@MinLevel := 77,
@MaxLevel := 80,
@Faction := 1891,
@NPCFlag := 3,
@Rank := 0,
@Type := 7,  -- Human
@RunSpeed := 1.14286;

DELETE FROM `creature_template` WHERE `entry` IN (
    @NPCEntry+1,
    @NPCEntry+2,
    @NPCEntry+3
);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@NPCEntry+1, 0, 0, 0, 0, 0, @ModelID1, @ModelID2, @ModelID3, @ModelID4, @Name, @Subname, NULL, @MinLevel, @MaxLevel, 0, 2, @Faction, @NPCFlag, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1250, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@NPCEntry+2, 0, 0, 0, 0, 0, @ModelID1, @ModelID2, @ModelID3, @ModelID4, @Name, @Subname, NULL, @MinLevel, @MaxLevel, 0, 2, @Faction, @NPCFlag, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1250, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@NPCEntry+3, 0, 0, 0, 0, 0, @ModelID1, @ModelID2, @ModelID3, @ModelID4, @Name, @Subname, NULL, @MinLevel, @MaxLevel, 0, 2, @Faction, @NPCFlag, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1250, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

-- Spawn points
SET -- Stormwind #1
@X := -8562.104492,
@Y := 709.038513,
@Z := 103.520973,
@Orientation := 2.248944;

DELETE FROM `creature` WHERE (`guid` = @NPCEntry+1 AND `id1` = @NPCEntry+1);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(@NPCEntry+1, @NPCEntry+1, 0, 0, 0, 0, 0, 1, 1, 1, @X, @Y, @Z, @Orientation, 610, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, NULL);

SET -- Stormwind #2
@X := -8564.754883, 
@Y := 707.545959, 
@Z := 103.521019, 
@Orientation := 1.831123;

DELETE FROM `creature` WHERE (`guid` = @NPCEntry+2 AND `id1` = @NPCEntry+2);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(@NPCEntry+2, @NPCEntry+2, 0, 0, 0, 0, 0, 1, 1, 1, @X, @Y, @Z, @Orientation, 610, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, NULL);

SET -- Stormwind #3
@X := -8570.877930,
@Y := 710.083313,
@Z := 103.722351,
@Orientation := 0.510682;

DELETE FROM `creature` WHERE (`guid` = @NPCEntry+3 AND `id1` = @NPCEntry+3);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(@NPCEntry+3, @NPCEntry+3, 0, 0, 0, 0, 0, 1, 1, 1, @X, @Y, @Z, @Orientation, 610, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, NULL);

-- Level 1-10 Daily: Medical
SET
-- Common across all quests
@QuestEntry := 9111000,
@Flags = 4096, -- Daily
-- @Flags = 32768, -- Weekly

-- Unique across quests
@EntryStep := 1,
@QuestLevel := 5,
@QuestLevelMin := 5, 
@RewardMoney := 3500, 
@QuestTitle := 'Gather for the Guild',
@QuestDescription := "Hail, adventurer! The guild has put out a call for supplies. We're in dire need of 60 Minor Healing Potion and 60 Heavy Linen Bandage. Will you aid us in this task? Your efforts shall not go unrewarded.",
@QuestDetails := "Bring the Cartographer some 60 Minor Healing Potion and 60 Heavy Linen Bandage.",
@QuestComplete := "Ah, splendid work! The guild is in your debt. Here's your well-deserved reward.",
@DailyItem1 := 118,
@DailyItem1Count := 60,
@QuestObjective1Text := "Fetch 60 Minor Healing Potion",
@DailyItem2 := 2581,
@DailyItem2Count := 60,
@QuestObjective2Text := "Fetch 60 Heavy Linen Bandage";

-- Quest template
DELETE FROM `quest_template` WHERE (`ID` = @QuestEntry+1);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES (@QuestEntry+1, 2, @QuestLevel, @QuestLevelMin, 0, 0, 0, 0, 0, 0, 0, 0, 0, @RewardMoney, 0, 0, 0, 0, 0, 0, 0, @Flags, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @QuestTitle, @QuestDetails, @QuestDescription, '', @QuestComplete, 0, 0, 0, 0, 0, 0, 0, 0, @DailyItem1, @DailyItem2, 0, 0, 0, 0, @DailyItem1Count, @DailyItem2Count, 0, 0, 0, 0, 0, @QuestObjective1Text, @QuestObjective2Text, '', '', 0);

-- Set the quest to repeatable
DELETE FROM `quest_template_addon` WHERE (`ID` = @QuestEntry+@EntryStep);
INSERT INTO `quest_template_addon` (`ID`, `SpecialFlags`) VALUES (@QuestEntry+@EntryStep, 1);

-- Quest's requested items
DELETE FROM `quest_request_items` WHERE (`ID` = @QuestEntry+@EntryStep);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES (@QuestEntry+@EntryStep, 0, 0, @QuestComplete, 0);

-- Quest's rewards
DELETE FROM `quest_offer_reward` WHERE (`ID` = @QuestEntry+@EntryStep);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES (@QuestEntry+@EntryStep, 0, 0, 0, 0, 0, 0, 0, 0, @QuestComplete, 0);

-- Quest conditions
SET @MaxLevel := 10;
DELETE FROM `conditions` WHERE (`SourceEntry` = @QuestEntry+@EntryStep AND `ConditionTypeOrReference` = 27 AND `ConditionValue1` = @MaxLevel AND `ConditionValue2` = 4);
INSERT INTO `conditions` (
    `SourceTypeOrReferenceId`,
    `SourceEntry`,
    `ConditionTypeOrReference`,
    `ConditionTarget`,
    `ConditionValue1`,
    `ConditionValue2`
) VALUES (
    19, -- quest
    @QuestEntry+@EntryStep,-- quest id
    27, -- condition to check: player level
    0, -- ignore
    @MaxLevel, -- max level
    4 -- <= max level
);

-- Assign quests to NPCs
DELETE FROM `creature_queststarter` WHERE (`quest` = @QuestEntry+@EntryStep) AND (`id` IN (@NPCEntry+1));
DELETE FROM `creature_questender` WHERE (`quest` = @QuestEntry+@EntryStep) AND (`id` IN (@NPCEntry+1));
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@NPCEntry+1, @QuestEntry+@EntryStep);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@NPCEntry+1, @QuestEntry+@EntryStep);

-- Level 15-25 Daily: Medical
SET
@EntryStep := 2,
@QuestLevel := 20,
@QuestLevelMin := 15, 
@RewardMoney := 7500, 
@QuestTitle := 'Gather for the Guild',
@QuestDescription := "Hail, adventurer! The guild has put out a call for supplies. We're in dire need of 60 Greater Healing Potion and 60 Heavy Wool Bandage. Will you aid us in this task? Your efforts shall not go unrewarded.",
@QuestDetails := "Bring the Cartographer some 60 Greater Healing Potion and 60 Heavy Wool Bandage.",
@QuestComplete := "Ah, splendid work! The guild is in your debt. Here's your well-deserved reward.",
@DailyItem1 := 1710,
@DailyItem1Count := 60,
@QuestObjective1Text := "Fetch 60 Greater Healing Potion",
@DailyItem2 := 3531,
@DailyItem2Count := 60,
@QuestObjective2Text := "Fetch 60 Heavy Wool Bandage";

-- Quest template
DELETE FROM `quest_template` WHERE (`ID` = @QuestEntry+@EntryStep);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES (@QuestEntry+@EntryStep, 2, @QuestLevel, @QuestLevelMin, 0, 0, 0, 0, 0, 0, 0, 0, 0, @RewardMoney, 0, 0, 0, 0, 0, 0, 0, @Flags, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @QuestTitle, @QuestDetails, @QuestDescription, '', @QuestComplete, 0, 0, 0, 0, 0, 0, 0, 0, @DailyItem1, @DailyItem2, 0, 0, 0, 0, @DailyItem1Count, @DailyItem2Count, 0, 0, 0, 0, 0, @QuestObjective1Text, @QuestObjective2Text, '', '', 0);

-- Set the quest to repeatable
DELETE FROM `quest_template_addon` WHERE (`ID` = @QuestEntry+@EntryStep);
INSERT INTO `quest_template_addon` (`ID`, `SpecialFlags`) VALUES (@QuestEntry+@EntryStep, 1);

-- Quest's requested items
DELETE FROM `quest_request_items` WHERE (`ID` = @QuestEntry+@EntryStep);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES (@QuestEntry+@EntryStep, 0, 0, @QuestComplete, 0);

-- Quest's rewards
DELETE FROM `quest_offer_reward` WHERE (`ID` = @QuestEntry+@EntryStep);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES (@QuestEntry+@EntryStep, 0, 0, 0, 0, 0, 0, 0, 0, @QuestComplete, 0);

-- Quest conditions
SET @MaxLevel := 25;
DELETE FROM `conditions` WHERE (`SourceEntry` = @QuestEntry+@EntryStep AND `ConditionTypeOrReference` = 27 AND `ConditionValue1` = @MaxLevel AND `ConditionValue2` = 4);
INSERT INTO `conditions` (
    `SourceTypeOrReferenceId`,
    `SourceEntry`,
    `ConditionTypeOrReference`,
    `ConditionTarget`,
    `ConditionValue1`,
    `ConditionValue2`
) VALUES (
    19, -- quest
    @QuestEntry+@EntryStep,-- quest id
    27, -- condition to check: player level
    0, -- ignore
    @MaxLevel, -- max level
    4 -- <= max level
);

-- Assign quests to NPCs
DELETE FROM `creature_queststarter` WHERE (`quest` = @QuestEntry+@EntryStep) AND (`id` IN (@NPCEntry+1));
DELETE FROM `creature_questender` WHERE (`quest` = @QuestEntry+@EntryStep) AND (`id` IN (@NPCEntry+1));
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@NPCEntry+1, @QuestEntry+@EntryStep);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@NPCEntry+1, @QuestEntry+@EntryStep);
