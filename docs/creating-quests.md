# Creating Quests

This is how various quests can be created via SQL.

## Dailies

```sql
-- All the SET statements are used to configure the quests
-- Daily Quest #1: fetch items
SET
@QuestLevel := 5,
@QuestLevelMin := 3, 
@RewardMoney := 500, 
@Flags = 4096,
@QuestTitle := 'I need me ale!',
@QuestDescription := "Ah, lad, ye've come at th' right time! Listen close, for I've got a quest o' utmost importance. Y'see, I'm workin' on me maps an' calculations, but a dwarf cannae think straight without proper sustenance. That's where ye come in. Head to th' local tavern an' fetch me a keg o' their finest ale, an' ye'll have to hunt for some boar ribs, will ye? There'll be silver in it for ye, an' ye'll earn th' eternal gratitude of a dwarven scholar. So, what say ye, are ye up fer th' task?",
@QuestDetails := "Bring the Cartographer some 10 Cheap Beers and 10 Crag Boar Ribs.",
@QuestComplete := "Ah, ye've done it, lad! Yer success warms me dwarven heart! Th' ale's flowin' an' th' ribs are cookin', thanks t' ye. Take this silver, ye've more than earned it!",
@DailyItem1 := 19222,
@DailyItem1Count := 10,
@DailyItem2 := 2886,
@DailyItem2Count := 10,
@QuestObjective1Text := "Fetch 10 Cheap Beers",
@QuestObjective2Text := "Hunt 10 Crag Boar Ribs";

-- First delete the quest if it already exists.
DELETE FROM `quest_template` WHERE (`ID` = @Entry+1);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES (@Entry+1, 2, @QuestLevel, @QuestLevelMin, 0, 0, 0, 0, 0, 0, 0, 0, 0, @RewardMoney, 0, 0, 0, 0, 0, 0, 0, @Flags, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @QuestTitle, @QuestDetails, @QuestDescription, '', @QuestComplete, 0, 0, 0, 0, 0, 0, 0, 0, @DailyItem1, @DailyItem2, 0, 0, 0, 0, @DailyItem1Count, @DailyItem2Count, 0, 0, 0, 0, 0, @QuestObjective1Text, @QuestObjective2Text, '', '', 0);
DELETE FROM `quest_request_items` WHERE (`ID` = @Entry+1);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES (@Entry+1, 4, 0, @QuestComplete, 0);
DELETE FROM `quest_offer_reward` WHERE (`ID` = @Entry+1);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES (@Entry+1, 4, 0, 0, 0, 0, 0, 0, 0, @QuestComplete, 0);
DELETE FROM `creature_queststarter` WHERE (`quest` = @Entry+1) AND (`id` IN (@Entry+1));
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@Entry+1, @Entry+1);
DELETE FROM `creature_questender` WHERE (`quest` = @Entry+1) AND (`id` IN (@Entry+1));
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@Entry+1, @Entry+1);
```

-- Daily Quest #2: kill beasts
SET @QuestLevel := 5, @QuestLevelMin := 3, @RewardMoney := 500, @Flags = 4096;
SET @QuestTitle := 'Silence the Roars for Restful Slumbers';
SET @QuestDescription := "Ah, there ye are! Now, listen up, lad. Between th' black bears an' th' snow leopards makin' a racket, a dwarf can't catch a wink o' sleep. They prowl too close to me abode, an' it's high time someone did somethin' 'bout it. I need ye t' go out there an' put down, let's say, ten o' each. It's a tough ask, I know, but there'll be silver waitin' fer ye. Will ye give a dwarf some peace?";
SET @QuestDetails := "Eliminate 10 Snow Tracker Wolf and 10 Juvenile Snow Leopards that are disturbing a dwarf's sleep.";
SET @QuestComplete := "Ye've done it! Finally, silence reigns, an' I can rest me eyes. Here's yer well-earned silver, lad. Ye've got me eternal gratitude.";
SET @QuestObjective1Text := "Kill Juvenile Snow Leopards";
SET @QuestObjective2Text := "Kill Snow Tracker Wolves";
SET @DailyGameObject1 := 1199; -- Juvenile Snow Leopard
SET @DailyGameObject1Count := 10;
SET @DailyGameObject2 := 1138; -- Snow Tracker Wolf
SET @DailyGameObject2Count := 10;
DELETE FROM `quest_template` WHERE (`ID` = @Entry+2);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES (@Entry+2, 2, @QuestLevel, @QuestLevelMin, 0, 0, 0, 0, 0, 0, 0, 0, 0, @RewardMoney, 0, 0, 0, 0, 0, 0, 0, @Flags, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @QuestTitle, @QuestDetails, @QuestDescription, '', @QuestComplete, @DailyGameObject1, @DailyGameObject2, 0, 0, @DailyGameObject1Count, @DailyGameObject2Count, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @QuestObjective1Text, @QuestObjective2Text, '', '', 0);
DELETE FROM `quest_offer_reward` WHERE (`ID` = @Entry+2);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES (@Entry+2, 2, 0, 0, 0, 0, 0, 0, 0, @QuestComplete, 0);
DELETE FROM `quest_request_items` WHERE (`ID` = @Entry+2);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES (@Entry+2, 2, 0, @QuestComplete, 0);
DELETE FROM `creature_queststarter` WHERE (`quest` = @Entry+2) AND (`id` IN (@Entry+1));
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@Entry+1, @Entry+2);
DELETE FROM `creature_questender` WHERE (`quest` = @Entry+2) AND (`id` IN (@Entry+1));
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@Entry+1, @Entry+2);