
SET
@Entry := 511000,
@NPCENtry := 512000,
@Flags = 4096, -- 4096 = Daily; 32768 = Weekly
@Level := 5,
@LevelMin := 5, 
@RewardMoney := 25000, 
@Title := "Medical Supplies",
@Description := "We're always in need of medical supplies, even the basic stuff. If you can help us with our efforts, then there's some handsome coin in it for you.",
@AreaDescription := "",
@Details := "Deliver 60 Minor Healing Potion and 60 Heavy Linen Bandage.",
@Complete := "Thank you. These supplies will help the cause.",

@RequiredItem1 := 118,
@RequiredItem1Count := 60,
@Objective1Text := "Fetch 60 Minor Healing Potion",

@RequiredItem2 := 2581,
@RequiredItem2Count := 60,
@Objective2Text := "Fetch 60 Heavy Linen Bandage",

@RequiredItem3 := 0,
@RequiredItem3Count := 0,
@Objective3Text := "",

@RequiredItem4 := 0,
@RequiredItem4Count := 0,
@Objective4Text := "",

@RequiredItem5 := 0,
@RequiredItem5Count := 0,
@Objective5Text := "",

@RequiredItem6 := 0,
@RequiredItem6Count := 0,
@Objective6Text := "";


-- Quest template
DELETE FROM `quest_template` WHERE (`ID` = @Entry);
INSERT INTO `quest_template` (
    `ID`,
    `QuestType`,
    `QuestLevel`,
    `MinLevel`,
    `QuestSortID`,
    `QuestInfoID`,
    `SuggestedGroupNum`,
    `RequiredFactionId1`,
    `RequiredFactionId2`,
    `RequiredFactionValue1`,
    `RequiredFactionValue2`,
    `RewardNextQuest`,
    `RewardXPDifficulty`,
    `RewardMoney`,
    `RewardMoneyDifficulty`,
    `RewardBonusMoney`,
    `RewardDisplaySpell`,
    `RewardSpell`,
    `RewardHonor`,
    `RewardKillHonor`,
    `StartItem`,
    `Flags`,
    `RequiredPlayerKills`,
    `RewardItem1`,
    `RewardAmount1`,
    `RewardItem2`,
    `RewardAmount2`,
    `RewardItem3`,
    `RewardAmount3`,
    `RewardItem4`,
    `RewardAmount4`,
    `ItemDrop1`,
    `ItemDropQuantity1`,
    `ItemDrop2`,
    `ItemDropQuantity2`,
    `ItemDrop3`,
    `ItemDropQuantity3`,
    `ItemDrop4`,
    `ItemDropQuantity4`,
    `RewardChoiceItemID1`,
    `RewardChoiceItemQuantity1`,
    `RewardChoiceItemID2`,
    `RewardChoiceItemQuantity2`,
    `RewardChoiceItemID3`,
    `RewardChoiceItemQuantity3`,
    `RewardChoiceItemID4`,
    `RewardChoiceItemQuantity4`,
    `RewardChoiceItemID5`,
    `RewardChoiceItemQuantity5`,
    `RewardChoiceItemID6`,
    `RewardChoiceItemQuantity6`,
    `POIContinent`,
    `POIx`,
    `POIy`,
    `POIPriority`,
    `RewardTitle`,
    `RewardTalents`,
    `RewardArenaPoints`,
    `RewardFactionID1`,
    `RewardFactionValue1`,
    `RewardFactionOverride1`,
    `RewardFactionID2`,
    `RewardFactionValue2`,
    `RewardFactionOverride2`,
    `RewardFactionID3`,
    `RewardFactionValue3`,
    `RewardFactionOverride3`,
    `RewardFactionID4`,
    `RewardFactionValue4`,
    `RewardFactionOverride4`,
    `RewardFactionID5`,
    `RewardFactionValue5`,
    `RewardFactionOverride5`,
    `TimeAllowed`,
    `AllowableRaces`,
    `LogTitle`,
    `LogDescription`,
    `QuestDescription`,
    `AreaDescription`,
    `QuestCompletionLog`,
    `RequiredNpcOrGo1`,
    `RequiredNpcOrGo2`,
    `RequiredNpcOrGo3`,
    `RequiredNpcOrGo4`,
    `RequiredNpcOrGoCount1`,
    `RequiredNpcOrGoCount2`,
    `RequiredNpcOrGoCount3`,
    `RequiredNpcOrGoCount4`,
    `RequiredItemId1`,
    `RequiredItemId2`,
    `RequiredItemId3`,
    `RequiredItemId4`,
    `RequiredItemId5`,
    `RequiredItemId6`,
    `RequiredItemCount1`,
    `RequiredItemCount2`,
    `RequiredItemCount3`,
    `RequiredItemCount4`,
    `RequiredItemCount5`,
    `RequiredItemCount6`,
    `Unknown0`,
    `ObjectiveText1`,
    `ObjectiveText2`,
    `ObjectiveText3`,
    `ObjectiveText4`,
    `VerifiedBuild`
 ) VALUES (
    @Entry,  -- ID
    2,  -- QuestType
    @Level,  -- QuestLevel
    @LevelMin,  -- MinLevel
    0,  -- QuestSortID
    0,  -- QuestInfoID
    0,  -- SuggestedGroupNum
    0,  -- RequiredFactionId1
    0,  -- RequiredFactionId2
    0,  -- RequiredFactionValue1
    0,  -- RequiredFactionValue2
    0,  -- RewardNextQuest
    0,  -- RewardXPDifficulty
    @RewardMoney,  -- RewardMoney
    0,  -- RewardMoneyDifficulty
    0,  -- RewardBonusMoney
    0,  -- RewardDisplaySpell
    0,  -- RewardSpell
    0,  -- RewardHonor
    0,  -- RewardKillHonor
    0,  -- StartItem
    @Flags,  -- Flags
    0,  -- RequiredPlayerKills
    0,  -- RewardItem1
    0,  -- RewardAmount1
    0,  -- RewardItem2
    0,  -- RewardAmount2
    0,  -- RewardItem3
    0,  -- RewardAmount3
    0,  -- RewardItem4
    0,  -- RewardAmount4
    0,  -- ItemDrop1
    0,  -- ItemDropQuantity1
    0,  -- ItemDrop2
    0,  -- ItemDropQuantity2
    0,  -- ItemDrop3
    0,  -- ItemDropQuantity3
    0,  -- ItemDrop4
    0,  -- ItemDropQuantity4
    0,  -- RewardChoiceItemID1
    0,  -- RewardChoiceItemQuantity1
    0,  -- RewardChoiceItemID2
    0,  -- RewardChoiceItemQuantity2
    0,  -- RewardChoiceItemID3
    0,  -- RewardChoiceItemQuantity3
    0,  -- RewardChoiceItemID4
    0,  -- RewardChoiceItemQuantity4
    0,  -- RewardChoiceItemID5
    0,  -- RewardChoiceItemQuantity5
    0,  -- RewardChoiceItemID6
    0,  -- RewardChoiceItemQuantity6
    0,  -- POIContinent
    0,  -- POIx
    0,  -- POIy
    0,  -- POIPriority
    0,  -- RewardTitle
    0,  -- RewardTalents
    0,  -- RewardArenaPoints
    0,  -- RewardFactionID1
    0,  -- RewardFactionValue1
    0,  -- RewardFactionOverride1
    0,  -- RewardFactionID2
    0,  -- RewardFactionValue2
    0,  -- RewardFactionOverride2
    0,  -- RewardFactionID3
    0,  -- RewardFactionValue3
    0,  -- RewardFactionOverride3
    0,  -- RewardFactionID4
    0,  -- RewardFactionValue4
    0,  -- RewardFactionOverride4
    0,  -- RewardFactionID5
    0,  -- RewardFactionValue5
    0,  -- RewardFactionOverride5
    0,  -- TimeAllowed
    0,  -- AllowableRaces
    @Title,  -- LogTitle
    @Details,  -- LogDescription
    @Description,  -- QuestDescription
    @AreaDescription,  -- AreaDescription
    @Complete,  -- QuestCompletionLog
    0,  -- RequiredNpcOrGo1
    0,  -- RequiredNpcOrGo2
    0,  -- RequiredNpcOrGo3
    0,  -- RequiredNpcOrGo4
    0,  -- RequiredNpcOrGoCount1
    0,  -- RequiredNpcOrGoCount2
    0,  -- RequiredNpcOrGoCount3
    0,  -- RequiredNpcOrGoCount4
    @RequiredItem1,  -- RequiredItemId1
    @RequiredItem2,  -- RequiredItemId2
    @RequiredItem3,  -- RequiredItemId3
    @RequiredItem4,  -- RequiredItemId4
    @RequiredItem5,  -- RequiredItemId5
    @RequiredItem6,  -- RequiredItemId6
    @RequiredItem1Count,  -- RequiredItemCount1
    @RequiredItem2Count,  -- RequiredItemCount2
    @RequiredItem3Count,  -- RequiredItemCount3
    @RequiredItem4Count,  -- RequiredItemCount4
    @RequiredItem5Count,  -- RequiredItemCount5
    @RequiredItem6Count,  -- RequiredItemCount6
    0,  -- Unknown0
    @Objective1Text,  -- ObjectiveText1
    @Objective2Text,  -- ObjectiveText2
    @Objective3Text,  -- ObjectiveText3
    @Objective4Text, -- ObjectiveText4
    0 -- VerifiedBuild
);

SET
@QuestEntry = 511000,
@NPCEntry = 512000;

DELETE FROM `creature_queststarter` WHERE (`quest` = @QuestEntry) AND (`id` IN (@NPCEntry));
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@NPCEntry, @QuestEntry);

SET
@QuestEntry = 511000,
@NPCEntry = 512000;

DELETE FROM `creature_questender` WHERE (`quest` = @QuestEntry) AND (`id` IN (@NPCEntry));
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@NPCEntry, @QuestEntry);

SET @Entry := 511000, @SpecialFlags := 1;
DELETE FROM `quest_template_addon` WHERE (`ID` = @Entry);
INSERT INTO `quest_template_addon` (`ID`, `SpecialFlags`) VALUES (@Entry, @SpecialFlags);

SET
@Entry := 511000,
@EmoteOnComplete := 0,
@EmoteOnIncomplete := 0,
@CompleteText := "Thank you. These supplies will help the cause.";

DELETE FROM `quest_request_items` WHERE (`ID` = @Entry);
INSERT INTO `quest_request_items` (
    `ID`,
    `EmoteOnComplete`,
    `EmoteOnIncomplete`,
    `CompletionText`
) VALUES (
    @Entry,
    @EmoteOnComplete,
    @EmoteOnIncomplete,
    @Complete
);

SET
@Entry := 511000,
@Emote1 := 0,
@Emote2 := 0,
@Emote3 := 0,
@Emote4 := 0,
@EmoteDelay1 := 0,
@EmoteDelay2 := 0,
@EmoteDelay3 := 0,
@EmoteDelay4 := 0,
@RewardText := "Thank you. These supplies will help the cause.";

DELETE FROM `quest_offer_reward` WHERE (`ID` = @Entry);
INSERT INTO `quest_offer_reward` (
    `ID`,
    `Emote1`,
    `Emote2`,
    `Emote3`,
    `Emote4`,
    `EmoteDelay1`,
    `EmoteDelay2`,
    `EmoteDelay3`,
    `EmoteDelay4`,
    `RewardText`
) VALUES (
    @Entry,
    @Emote1,
    @Emote2,
    @Emote3,
    @Emote4,
    @EmoteDelay1,
    @EmoteDelay2,
    @EmoteDelay3,
    @EmoteDelay4,
    @RewardText
);

SET
@SourceEntry := 511000,
@SourceTypeOrReferenceId := 19,
@ConditionTypeOrReference := 27,
@ConditionTarget := 0,
@ConditionValue1 := 15,
@ConditionValue2 := 4;

-- Quest conditions
DELETE FROM `conditions` WHERE (
    `SourceEntry` = @QuestEntry AND
    `ConditionTypeOrReference` = @ConditionTypeOrReference AND
    `ConditionValue1` = @ConditionValue1 AND
    `ConditionValue2` = @ConditionValue2
);

INSERT INTO `conditions` (
    `SourceTypeOrReferenceId`,
    `SourceEntry`,
    `ConditionTypeOrReference`,
    `ConditionTarget`,
    `ConditionValue1`,
    `ConditionValue2`
) VALUES (
    @SourceTypeOrReferenceId,   -- SourceTypeOrReferenceId
    @SourceEntry,               -- SourceEntry
    @ConditionTypeOrReference,  -- ConditionTypeOrReference
    @ConditionTarget,           -- ConditionTarget
    @ConditionValue1,           -- ConditionValue1
    @ConditionValue2            -- ConditionValue2
);

SET
@Entry := 511001,
@NPCENtry := 512000,
@Flags = 4096, -- 4096 = Daily; 32768 = Weekly
@Level := 5,
@LevelMin := 5, 
@RewardMoney := 2500, 
@Title := "More Medical Supplies",
@Description := "We're always in need of medical supplies, especially the good stuff. If you can help us with our efforts, then there's some handsome coin in it for you.",
@AreaDescription := "",
@Details := "Deliver 60 Minor Healing Potion and 60 Heavy Linen Bandage.",
@Complete := "Thank you. These supplies will help the cause.",

@RequiredItem1 := 118,
@RequiredItem1Count := 60,
@Objective1Text := "Fetch 60 Minor Healing Potion",

@RequiredItem2 := 2581,
@RequiredItem2Count := 60,
@Objective2Text := "Fetch 60 Heavy Linen Bandage",

@RequiredItem3 := 0,
@RequiredItem3Count := 0,
@Objective3Text := "",

@RequiredItem4 := 0,
@RequiredItem4Count := 0,
@Objective4Text := "",

@RequiredItem5 := 0,
@RequiredItem5Count := 0,
@Objective5Text := "",

@RequiredItem6 := 0,
@RequiredItem6Count := 0,
@Objective6Text := "";


-- Quest template
DELETE FROM `quest_template` WHERE (`ID` = @Entry);
INSERT INTO `quest_template` (
    `ID`,
    `QuestType`,
    `QuestLevel`,
    `MinLevel`,
    `QuestSortID`,
    `QuestInfoID`,
    `SuggestedGroupNum`,
    `RequiredFactionId1`,
    `RequiredFactionId2`,
    `RequiredFactionValue1`,
    `RequiredFactionValue2`,
    `RewardNextQuest`,
    `RewardXPDifficulty`,
    `RewardMoney`,
    `RewardMoneyDifficulty`,
    `RewardBonusMoney`,
    `RewardDisplaySpell`,
    `RewardSpell`,
    `RewardHonor`,
    `RewardKillHonor`,
    `StartItem`,
    `Flags`,
    `RequiredPlayerKills`,
    `RewardItem1`,
    `RewardAmount1`,
    `RewardItem2`,
    `RewardAmount2`,
    `RewardItem3`,
    `RewardAmount3`,
    `RewardItem4`,
    `RewardAmount4`,
    `ItemDrop1`,
    `ItemDropQuantity1`,
    `ItemDrop2`,
    `ItemDropQuantity2`,
    `ItemDrop3`,
    `ItemDropQuantity3`,
    `ItemDrop4`,
    `ItemDropQuantity4`,
    `RewardChoiceItemID1`,
    `RewardChoiceItemQuantity1`,
    `RewardChoiceItemID2`,
    `RewardChoiceItemQuantity2`,
    `RewardChoiceItemID3`,
    `RewardChoiceItemQuantity3`,
    `RewardChoiceItemID4`,
    `RewardChoiceItemQuantity4`,
    `RewardChoiceItemID5`,
    `RewardChoiceItemQuantity5`,
    `RewardChoiceItemID6`,
    `RewardChoiceItemQuantity6`,
    `POIContinent`,
    `POIx`,
    `POIy`,
    `POIPriority`,
    `RewardTitle`,
    `RewardTalents`,
    `RewardArenaPoints`,
    `RewardFactionID1`,
    `RewardFactionValue1`,
    `RewardFactionOverride1`,
    `RewardFactionID2`,
    `RewardFactionValue2`,
    `RewardFactionOverride2`,
    `RewardFactionID3`,
    `RewardFactionValue3`,
    `RewardFactionOverride3`,
    `RewardFactionID4`,
    `RewardFactionValue4`,
    `RewardFactionOverride4`,
    `RewardFactionID5`,
    `RewardFactionValue5`,
    `RewardFactionOverride5`,
    `TimeAllowed`,
    `AllowableRaces`,
    `LogTitle`,
    `LogDescription`,
    `QuestDescription`,
    `AreaDescription`,
    `QuestCompletionLog`,
    `RequiredNpcOrGo1`,
    `RequiredNpcOrGo2`,
    `RequiredNpcOrGo3`,
    `RequiredNpcOrGo4`,
    `RequiredNpcOrGoCount1`,
    `RequiredNpcOrGoCount2`,
    `RequiredNpcOrGoCount3`,
    `RequiredNpcOrGoCount4`,
    `RequiredItemId1`,
    `RequiredItemId2`,
    `RequiredItemId3`,
    `RequiredItemId4`,
    `RequiredItemId5`,
    `RequiredItemId6`,
    `RequiredItemCount1`,
    `RequiredItemCount2`,
    `RequiredItemCount3`,
    `RequiredItemCount4`,
    `RequiredItemCount5`,
    `RequiredItemCount6`,
    `Unknown0`,
    `ObjectiveText1`,
    `ObjectiveText2`,
    `ObjectiveText3`,
    `ObjectiveText4`,
    `VerifiedBuild`
 ) VALUES (
    @Entry,  -- ID
    2,  -- QuestType
    @Level,  -- QuestLevel
    @LevelMin,  -- MinLevel
    0,  -- QuestSortID
    0,  -- QuestInfoID
    0,  -- SuggestedGroupNum
    0,  -- RequiredFactionId1
    0,  -- RequiredFactionId2
    0,  -- RequiredFactionValue1
    0,  -- RequiredFactionValue2
    0,  -- RewardNextQuest
    0,  -- RewardXPDifficulty
    @RewardMoney,  -- RewardMoney
    0,  -- RewardMoneyDifficulty
    0,  -- RewardBonusMoney
    0,  -- RewardDisplaySpell
    0,  -- RewardSpell
    0,  -- RewardHonor
    0,  -- RewardKillHonor
    0,  -- StartItem
    @Flags,  -- Flags
    0,  -- RequiredPlayerKills
    0,  -- RewardItem1
    0,  -- RewardAmount1
    0,  -- RewardItem2
    0,  -- RewardAmount2
    0,  -- RewardItem3
    0,  -- RewardAmount3
    0,  -- RewardItem4
    0,  -- RewardAmount4
    0,  -- ItemDrop1
    0,  -- ItemDropQuantity1
    0,  -- ItemDrop2
    0,  -- ItemDropQuantity2
    0,  -- ItemDrop3
    0,  -- ItemDropQuantity3
    0,  -- ItemDrop4
    0,  -- ItemDropQuantity4
    0,  -- RewardChoiceItemID1
    0,  -- RewardChoiceItemQuantity1
    0,  -- RewardChoiceItemID2
    0,  -- RewardChoiceItemQuantity2
    0,  -- RewardChoiceItemID3
    0,  -- RewardChoiceItemQuantity3
    0,  -- RewardChoiceItemID4
    0,  -- RewardChoiceItemQuantity4
    0,  -- RewardChoiceItemID5
    0,  -- RewardChoiceItemQuantity5
    0,  -- RewardChoiceItemID6
    0,  -- RewardChoiceItemQuantity6
    0,  -- POIContinent
    0,  -- POIx
    0,  -- POIy
    0,  -- POIPriority
    0,  -- RewardTitle
    0,  -- RewardTalents
    0,  -- RewardArenaPoints
    0,  -- RewardFactionID1
    0,  -- RewardFactionValue1
    0,  -- RewardFactionOverride1
    0,  -- RewardFactionID2
    0,  -- RewardFactionValue2
    0,  -- RewardFactionOverride2
    0,  -- RewardFactionID3
    0,  -- RewardFactionValue3
    0,  -- RewardFactionOverride3
    0,  -- RewardFactionID4
    0,  -- RewardFactionValue4
    0,  -- RewardFactionOverride4
    0,  -- RewardFactionID5
    0,  -- RewardFactionValue5
    0,  -- RewardFactionOverride5
    0,  -- TimeAllowed
    0,  -- AllowableRaces
    @Title,  -- LogTitle
    @Details,  -- LogDescription
    @Description,  -- QuestDescription
    @AreaDescription,  -- AreaDescription
    @Complete,  -- QuestCompletionLog
    0,  -- RequiredNpcOrGo1
    0,  -- RequiredNpcOrGo2
    0,  -- RequiredNpcOrGo3
    0,  -- RequiredNpcOrGo4
    0,  -- RequiredNpcOrGoCount1
    0,  -- RequiredNpcOrGoCount2
    0,  -- RequiredNpcOrGoCount3
    0,  -- RequiredNpcOrGoCount4
    @RequiredItem1,  -- RequiredItemId1
    @RequiredItem2,  -- RequiredItemId2
    @RequiredItem3,  -- RequiredItemId3
    @RequiredItem4,  -- RequiredItemId4
    @RequiredItem5,  -- RequiredItemId5
    @RequiredItem6,  -- RequiredItemId6
    @RequiredItem1Count,  -- RequiredItemCount1
    @RequiredItem2Count,  -- RequiredItemCount2
    @RequiredItem3Count,  -- RequiredItemCount3
    @RequiredItem4Count,  -- RequiredItemCount4
    @RequiredItem5Count,  -- RequiredItemCount5
    @RequiredItem6Count,  -- RequiredItemCount6
    0,  -- Unknown0
    @Objective1Text,  -- ObjectiveText1
    @Objective2Text,  -- ObjectiveText2
    @Objective3Text,  -- ObjectiveText3
    @Objective4Text, -- ObjectiveText4
    0 -- VerifiedBuild
);

SET
@QuestEntry = 511001,
@NPCEntry = 512000;

DELETE FROM `creature_queststarter` WHERE (`quest` = @QuestEntry) AND (`id` IN (@NPCEntry));
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@NPCEntry, @QuestEntry);

SET
@QuestEntry = 511001,
@NPCEntry = 512000;

DELETE FROM `creature_questender` WHERE (`quest` = @QuestEntry) AND (`id` IN (@NPCEntry));
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@NPCEntry, @QuestEntry);

SET @Entry := 511001, @SpecialFlags := 1;
DELETE FROM `quest_template_addon` WHERE (`ID` = @Entry);
INSERT INTO `quest_template_addon` (`ID`, `SpecialFlags`) VALUES (@Entry, @SpecialFlags);

SET
@Entry := 511001,
@EmoteOnComplete := 0,
@EmoteOnIncomplete := 0,
@CompleteText := "Thank you. These supplies will help the cause.";

DELETE FROM `quest_request_items` WHERE (`ID` = @Entry);
INSERT INTO `quest_request_items` (
    `ID`,
    `EmoteOnComplete`,
    `EmoteOnIncomplete`,
    `CompletionText`
) VALUES (
    @Entry,
    @EmoteOnComplete,
    @EmoteOnIncomplete,
    @Complete
);

SET
@Entry := 511001,
@Emote1 := 0,
@Emote2 := 0,
@Emote3 := 0,
@Emote4 := 0,
@EmoteDelay1 := 0,
@EmoteDelay2 := 0,
@EmoteDelay3 := 0,
@EmoteDelay4 := 0,
@RewardText := "Thank you. These supplies will help the cause.";

DELETE FROM `quest_offer_reward` WHERE (`ID` = @Entry);
INSERT INTO `quest_offer_reward` (
    `ID`,
    `Emote1`,
    `Emote2`,
    `Emote3`,
    `Emote4`,
    `EmoteDelay1`,
    `EmoteDelay2`,
    `EmoteDelay3`,
    `EmoteDelay4`,
    `RewardText`
) VALUES (
    @Entry,
    @Emote1,
    @Emote2,
    @Emote3,
    @Emote4,
    @EmoteDelay1,
    @EmoteDelay2,
    @EmoteDelay3,
    @EmoteDelay4,
    @RewardText
);

SET
@SourceEntry := 511001,
@SourceTypeOrReferenceId := 19,
@ConditionTypeOrReference := 27,
@ConditionTarget := 0,
@ConditionValue1 := 15,
@ConditionValue2 := 3;

-- Quest conditions
DELETE FROM `conditions` WHERE (
    `SourceEntry` = @QuestEntry AND
    `ConditionTypeOrReference` = @ConditionTypeOrReference AND
    `ConditionValue1` = @ConditionValue1 AND
    `ConditionValue2` = @ConditionValue2
);

INSERT INTO `conditions` (
    `SourceTypeOrReferenceId`,
    `SourceEntry`,
    `ConditionTypeOrReference`,
    `ConditionTarget`,
    `ConditionValue1`,
    `ConditionValue2`
) VALUES (
    @SourceTypeOrReferenceId,   -- SourceTypeOrReferenceId
    @SourceEntry,               -- SourceEntry
    @ConditionTypeOrReference,  -- ConditionTypeOrReference
    @ConditionTarget,           -- ConditionTarget
    @ConditionValue1,           -- ConditionValue1
    @ConditionValue2            -- ConditionValue2
);

SET
@SourceEntry := 511001,
@SourceTypeOrReferenceId := 19,
@ConditionTypeOrReference := 27,
@ConditionTarget := 0,
@ConditionValue1 := 25,
@ConditionValue2 := 4;

-- Quest conditions
DELETE FROM `conditions` WHERE (
    `SourceEntry` = @QuestEntry AND
    `ConditionTypeOrReference` = @ConditionTypeOrReference AND
    `ConditionValue1` = @ConditionValue1 AND
    `ConditionValue2` = @ConditionValue2
);

INSERT INTO `conditions` (
    `SourceTypeOrReferenceId`,
    `SourceEntry`,
    `ConditionTypeOrReference`,
    `ConditionTarget`,
    `ConditionValue1`,
    `ConditionValue2`
) VALUES (
    @SourceTypeOrReferenceId,   -- SourceTypeOrReferenceId
    @SourceEntry,               -- SourceEntry
    @ConditionTypeOrReference,  -- ConditionTypeOrReference
    @ConditionTarget,           -- ConditionTarget
    @ConditionValue1,           -- ConditionValue1
    @ConditionValue2            -- ConditionValue2
);
