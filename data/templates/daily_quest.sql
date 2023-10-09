-- 
-- Setup a Daily Quest
-- daily_quest.sql
-- 

SET
@QuestEntry := {QuestEntry},
@NPCENtry := {NPCEntry},
@Flags = 4096, -- Daily; 32768 = Weekly
@QuestLevel := {QuestLevel},
@QuestLevelMin := {QuestLevelMin}, 
@RewardMoney := {RewardMoney}, 
@QuestTitle := "{QuestTitle}",
@QuestDescription := "{QuestDescription}",
@QuestDetails := "{QuestDetails}",
@QuestComplete := "{QuestComplete}",
@DailyItem1 := {DailyItem1},
@DailyItem1Count := {DailyItem1Count},
@QuestObjective1Text := "{QuestObjective1Text}",
@DailyItem2 := {DailyItem2},
@DailyItem2Count := {DailyItem2Count},
@QuestObjective2Text := "{QuestObjective2Text}";
@DailyItem3 := {DailyItem3},
@DailyItem3Count := {DailyItem3Count},
@QuestObjective3Text := "{QuestObjective3Text}",
@DailyItem4 := {DailyItem4},
@DailyItem4Count := {DailyItem4Count},
@QuestObjective4Text := "{QuestObjective4Text}",
@QuestMaxLevel := {QuestMaxLevel};

-- Quest template
DELETE FROM `quest_template` WHERE (`ID` = @QuestEntry);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES (@QuestEntry, 2, @QuestLevel, @QuestLevelMin, 0, 0, 0, 0, 0, 0, 0, 0, 0, @RewardMoney, 0, 0, 0, 0, 0, 0, 0, @Flags, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @QuestTitle, @QuestDetails, @QuestDescription, '', @QuestComplete, 0, 0, 0, 0, 0, 0, 0, 0, @DailyItem1, @DailyItem2, 0, 0, 0, 0, @DailyItem1Count, @DailyItem2Count, @DailyItem3Count, @DailyItem4Count, 0, 0, 0, @QuestObjective1Text, @QuestObjective2Text, @QuestObjective3Text, @QuestObjective4Text, 0);

-- Set the quest to repeatable
DELETE FROM `quest_template_addon` WHERE (`ID` = @QuestEntry);
INSERT INTO `quest_template_addon` (`ID`, `SpecialFlags`) VALUES (@QuestEntry, 1);

-- Quest's requested items
DELETE FROM `quest_request_items` WHERE (`ID` = @QuestEntry);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES (@QuestEntry, 0, 0, @QuestComplete, 0);

-- Quest's rewards
DELETE FROM `quest_offer_reward` WHERE (`ID` = @QuestEntry);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES (@QuestEntry, 0, 0, 0, 0, 0, 0, 0, 0, @QuestComplete, 0);
