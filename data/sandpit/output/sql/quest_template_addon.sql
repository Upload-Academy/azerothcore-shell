SET
@ID := {id},
@MaxLevel := {maxlevel},
@AllowableClasses := {allowableclasses},
@SourceSpellID := {sourcespellid},
@PrevQuestID := {prevquestid},
@NextQuestID := {nextquestid},
@ExclusiveGroup := {exclusivegroup},
@RewardMailTemplateID := {rewardmailtemplateid},
@RewardMailDelay := {rewardmaildelay},
@RequiredSkillID := {requiredskillid},
@RequiredSkillPoints := {requiredskillpoints},
@RequiredMinRepFaction := {requiredminrepfaction},
@RequiredMaxRepFaction := {requiredmaxrepfaction},
@RequiredMinRepValue := {requiredminrepvalue},
@RequiredMaxRepValue := {requiredmaxrepvalue},
@ProvidedItemCount := {provideditemcount},
@SpecialFlags := {specialflags};

DELETE FROM quest_template_addon WHERE
    ID=@ID
;

INSERT INTO quest_template_addon (
    ID,
    MaxLevel,
    AllowableClasses,
    SourceSpellID,
    PrevQuestID,
    NextQuestID,
    ExclusiveGroup,
    RewardMailTemplateID,
    RewardMailDelay,
    RequiredSkillID,
    RequiredSkillPoints,
    RequiredMinRepFaction,
    RequiredMaxRepFaction,
    RequiredMinRepValue,
    RequiredMaxRepValue,
    ProvidedItemCount,
    SpecialFlags
)
VALUES (
    @ID,
    @MaxLevel,
    @AllowableClasses,
    @SourceSpellID,
    @PrevQuestID,
    @NextQuestID,
    @ExclusiveGroup,
    @RewardMailTemplateID,
    @RewardMailDelay,
    @RequiredSkillID,
    @RequiredSkillPoints,
    @RequiredMinRepFaction,
    @RequiredMaxRepFaction,
    @RequiredMinRepValue,
    @RequiredMaxRepValue,
    @ProvidedItemCount,
    @SpecialFlags
);