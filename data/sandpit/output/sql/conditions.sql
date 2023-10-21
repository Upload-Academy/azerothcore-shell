SET
@SourceTypeOrReferenceId := {sourcetypeorreferenceid},
@SourceGroup := {sourcegroup},
@SourceEntry := {sourceentry},
@SourceId := {sourceid},
@ElseGroup := {elsegroup},
@ConditionTypeOrReference := {conditiontypeorreference},
@ConditionTarget := {conditiontarget},
@ConditionValue1 := {conditionvalue1},
@ConditionValue2 := {conditionvalue2},
@ConditionValue3 := {conditionvalue3},
@NegativeCondition := {negativecondition},
@ErrorType := {errortype},
@ErrorTextId := {errortextid},
@ScriptName := {scriptname},
@Comment := {comment};

DELETE FROM conditions WHERE
    SourceTypeOrReferenceId=@SourceTypeOrReferenceId AND
    SourceGroup=@SourceGroup AND
    SourceEntry=@SourceEntry AND
    SourceId=@SourceId AND
    ElseGroup=@ElseGroup AND
    ConditionTypeOrReference=@ConditionTypeOrReference AND
    ConditionTarget=@ConditionTarget AND
    ConditionValue1=@ConditionValue1 AND
    ConditionValue2=@ConditionValue2 AND
    ConditionValue3=@ConditionValue3
;

INSERT INTO conditions (
    SourceTypeOrReferenceId,
    SourceGroup,
    SourceEntry,
    SourceId,
    ElseGroup,
    ConditionTypeOrReference,
    ConditionTarget,
    ConditionValue1,
    ConditionValue2,
    ConditionValue3,
    NegativeCondition,
    ErrorType,
    ErrorTextId,
    ScriptName,
    Comment
)
VALUES (
    @SourceTypeOrReferenceId,
    @SourceGroup,
    @SourceEntry,
    @SourceId,
    @ElseGroup,
    @ConditionTypeOrReference,
    @ConditionTarget,
    @ConditionValue1,
    @ConditionValue2,
    @ConditionValue3,
    @NegativeCondition,
    @ErrorType,
    @ErrorTextId,
    @ScriptName,
    @Comment
);