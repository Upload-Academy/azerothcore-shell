SET
@ID := {id},
@MapID := {mapid},
@RangeIndex := {rangeindex},
@MinLevel := {minlevel},
@MaxLevel := {maxlevel},
@Difficulty := {difficulty};

DELETE FROM pvpdifficulty_dbc WHERE
    ID=@ID
;

INSERT INTO pvpdifficulty_dbc (
    ID,
    MapID,
    RangeIndex,
    MinLevel,
    MaxLevel,
    Difficulty
)
VALUES (
    @ID,
    @MapID,
    @RangeIndex,
    @MinLevel,
    @MaxLevel,
    @Difficulty
);