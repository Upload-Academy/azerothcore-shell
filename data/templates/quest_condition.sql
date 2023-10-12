
SET
@SourceEntry := {SourceEntry},
@SourceTypeOrReferenceId := {SourceTypeOrReferenceId},
@ConditionTypeOrReference := {ConditionTypeOrReference},
@ConditionTarget := {ConditionTarget},
@ConditionValue1 := {ConditionValue1},
@ConditionValue2 := {ConditionValue2};

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
