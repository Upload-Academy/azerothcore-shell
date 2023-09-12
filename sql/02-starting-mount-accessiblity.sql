-- 02 setup human readable names for key IDs in the DB
-- These are all values for various things throughout the game.

-- 02.1
-- These are all the basics race mounts. The cheap, 60% ones.
SET
@mountAllianceHumanBasic := 2411,
@mountAllianceDwarfBasic := 5864,
@mountAllianceNightElfBasic := 8629,
@mountAllianceGnomeBasic := 13322,
@mountAllianceDraineiBasic := 28481,
@mountHordeOrcBasic := 5665,
@mountHordeUndeadBasic := 13331,
@mountHordeTaurenBasic := 15277,
@mountHordeTrollBasic := 8588,
@mountHordeBloodElfBasic := 29221;

--  02.2
-- These are the riding trainers in each starting zone
SET
@ridingTrainerHumanRandalHunter := 4732,
@ridingTrainerOrcKildar := 4752;

-- 02.3
-- These are the quest IDs for each faction's riding trainer
SET
@ridingTrainerHumanRandalHunterQuest := 90000,
@ridingTrainerOrcKildarQuest := 90001;

-- 03 mount updates for level 10 quest giver/rewarder

-- 03.1 make the mounts usable at level 10
-- Update these basic mounts to be usable at level 1
-- Riding skill 75 will be taught to the player, so leaving
-- that alone here.
UPDATE acore_world.item_template SET RequiredLevel=10 WHERE entry=@mountAllianceHumanBasic;
UPDATE acore_world.item_template SET RequiredLevel=10 WHERE entry=@mountAllianceDwarfBasic;
UPDATE acore_world.item_template SET RequiredLevel=10 WHERE entry=@mountAllianceNightElfBasic;
UPDATE acore_world.item_template SET RequiredLevel=10 WHERE entry=@mountAllianceGnomeBasic;
UPDATE acore_world.item_template SET RequiredLevel=10 WHERE entry=@mountAllianceDraineiBasic;
UPDATE acore_world.item_template SET RequiredLevel=10 WHERE entry=@mountHordeOrcBasic;
UPDATE acore_world.item_template SET RequiredLevel=10 WHERE entry=@mountHordeUndeadBasic;
UPDATE acore_world.item_template SET RequiredLevel=10 WHERE entry=@mountHordeTaurenBasic;
UPDATE acore_world.item_template SET RequiredLevel=10 WHERE entry=@mountHordeTrollBasic;
UPDATE acore_world.item_template SET RequiredLevel=10 WHERE entry=@mountHordeBloodElfBasic;


-- 03.2 update the "spell" to allow it to be bought for 1s at level 10
UPDATE npc_trainer SET MoneyCost=100, ReqLevel=10 WHERE ID=202010 AND SpellID=33388;

-- 03.3 add the quest
-- Notes:
-- * this quest auto-completes. You don't have to do anything when accepting it, it just accepts and then completes, giving you the reward
-- * this means you have to use quest_offer_reward for the gossip text shown because that's the final gossip shown to the player, because the quest basically auto-completes and
--   jumps to the reward page.

-- 03.3.1 Human riding trainer quest
DELETE FROM `quest_template` WHERE (`ID` = @ridingTrainerHumanRandalHunterQuest);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(@ridingTrainerHumanRandalHunterQuest, 0, 10, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @mountAllianceHumanBasic, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'No Time to Waste', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = @ridingTrainerHumanRandalHunterQuest);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(@ridingTrainerHumanRandalHunterQuest, 1, 0, 0, 0, 0, 0, 0, 0, "Looks like you're some sort of great hero that the King has high hopes for. They've ordered me to gift you this mount. I hope this helps, but don't expect riding lessons for free. I have to charge something, great hero or no.", 0);

-- 03.3.2 Orc riding trainer quest
DELETE FROM `quest_template` WHERE (`ID` = @ridingTrainerOrcKildarQuest);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(@ridingTrainerOrcKildarQuest, 0, 10, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5665, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'No Time to Waste', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0);

DELETE FROM `quest_offer_reward` WHERE (`ID` = @ridingTrainerOrcKildarQuest);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(@ridingTrainerOrcKildarQuest, 1, 0, 0, 0, 0, 0, 0, 0, "Looks like you're some sort of great hero that the Warchief has high hopes for. They've ordered me to gift you this mount. I hope this helps, but don't expect riding lessons for free. I have to charge something, great hero or no.", 0);

-- 03.4 add the quest to the "starter area" riding trainers
-- 03.4.1 Human
DELETE FROM `creature_queststarter` WHERE (`quest` = @ridingTrainerHumanRandalHunterQuest) AND (`id` IN (@ridingTrainerHumanRandalHunter));
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@ridingTrainerHumanRandalHunter, @ridingTrainerHumanRandalHunterQuest);
DELETE FROM `creature_questender` WHERE (`quest` = @ridingTrainerHumanRandalHunterQuest) AND (`id` IN (@ridingTrainerHumanRandalHunter));
INSERT INTO `creature_questender` (`id`, `quest`) VALUES(@ridingTrainerHumanRandalHunter, @ridingTrainerHumanRandalHunterQuest);

-- 03.4.2 Orc
DELETE FROM `creature_queststarter` WHERE (`quest` = @ridingTrainerOrcKildarQuest) AND (`id` IN (@ridingTrainerOrcKildar));
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@ridingTrainerOrcKildar, @ridingTrainerOrcKildarQuest);
DELETE FROM `creature_questender` WHERE (`quest` = @ridingTrainerOrcKildarQuest) AND (`id` IN (@ridingTrainerOrcKildar));
INSERT INTO `creature_questender` (`id`, `quest`) VALUES(@ridingTrainerOrcKildar, @ridingTrainerOrcKildarQuest);
