
SET
@Entry := {Entry},
@NPCENtry := {NPCEntry},
@Flags = {Flags}, -- 4096 = Daily; 32768 = Weekly
@Level := {Level},
@LevelMin := {LevelMin}, 
@RewardMoney := {RewardMoney}, 
@Title := "{Title}",
@Description := "{Description}",
@AreaDescription := "{AreaDescription}",
@Details := "{Details}",
@Complete := "{Complete}",

@RequiredItem1 := {RequiredItem1},
@RequiredItem1Count := {RequiredItem1Count},
@Objective1Text := "{Objective1Text}",

@RequiredItem2 := {RequiredItem2},
@RequiredItem2Count := {RequiredItem2Count},
@Objective2Text := "{Objective2Text}",

@RequiredItem3 := {RequiredItem3},
@RequiredItem3Count := {RequiredItem3Count},
@Objective3Text := "{Objective3Text}",

@RequiredItem4 := {RequiredItem4},
@RequiredItem4Count := {RequiredItem4Count},
@Objective4Text := "{Objective4Text}",

@RequiredItem5 := {RequiredItem5},
@RequiredItem5Count := {RequiredItem5Count},
@Objective5Text := "{Objective5Text}",

@RequiredItem6 := {RequiredItem6},
@RequiredItem6Count := {RequiredItem6Count},
@Objective6Text := "{Objective6Text}";


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
