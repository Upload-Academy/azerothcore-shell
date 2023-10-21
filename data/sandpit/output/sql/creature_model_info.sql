SET
@DisplayID := {displayid},
@BoundingRadius := {boundingradius},
@CombatReach := {combatreach},
@Gender := {gender},
@DisplayID_Other_Gender := {displayid_other_gender};

DELETE FROM creature_model_info WHERE
    DisplayID=@DisplayID
;

INSERT INTO creature_model_info (
    DisplayID,
    BoundingRadius,
    CombatReach,
    Gender,
    DisplayID_Other_Gender
)
VALUES (
    @DisplayID,
    @BoundingRadius,
    @CombatReach,
    @Gender,
    @DisplayID_Other_Gender
);