
SET
@SourceTypeOrReferenceId := {SourceTypeOrReferenceId},
@SourceEntry := {SourceEntry},
@ConditionTypeOrReference := {ConditionTypeOrReference},
@ConditionTarget := {ConditionTarget},
@ConditionValue1 := {ConditionValue1},
@ConditionValue2 := {ConditionValue2};

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
    @SourceTypeOrReferenceId,   -- SourceTypeOrReferenceId
    @SourceEntry,               -- SourceEntry
    @ConditionTypeOrReference,  -- ConditionTypeOrReference
    @ConditionTarget,           -- ConditionTarget
    @ConditionValue1,           -- ConditionValue1
    @ConditionValue2            -- ConditionValue2
);
