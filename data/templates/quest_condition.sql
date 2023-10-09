-- Quest conditions
DELETE FROM `conditions` WHERE (`SourceEntry` = @QuestEntry AND `ConditionTypeOrReference` = 27 AND `ConditionValue1` = @QuestMaxLevel AND `ConditionValue2` = 4);
INSERT INTO `conditions` (
    `SourceTypeOrReferenceId`,
    `SourceEntry`,
    `ConditionTypeOrReference`,
    `ConditionTarget`,
    `ConditionValue1`,
    `ConditionValue2`
) VALUES (
    19, -- quest
    @QuestEntry,-- quest id
    27, -- condition to check: player level
    0, -- ignore
    @QuestMaxLevel, -- max level
    @QuestMaxLevelCondition -- <= max level
);
