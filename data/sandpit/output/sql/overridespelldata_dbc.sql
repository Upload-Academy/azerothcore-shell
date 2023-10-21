SET
@ID := {id},
@Spells_1 := {spells_1},
@Spells_2 := {spells_2},
@Spells_3 := {spells_3},
@Spells_4 := {spells_4},
@Spells_5 := {spells_5},
@Spells_6 := {spells_6},
@Spells_7 := {spells_7},
@Spells_8 := {spells_8},
@Spells_9 := {spells_9},
@Spells_10 := {spells_10},
@Flags := {flags};

DELETE FROM overridespelldata_dbc WHERE
    ID=@ID
;

INSERT INTO overridespelldata_dbc (
    ID,
    Spells_1,
    Spells_2,
    Spells_3,
    Spells_4,
    Spells_5,
    Spells_6,
    Spells_7,
    Spells_8,
    Spells_9,
    Spells_10,
    Flags
)
VALUES (
    @ID,
    @Spells_1,
    @Spells_2,
    @Spells_3,
    @Spells_4,
    @Spells_5,
    @Spells_6,
    @Spells_7,
    @Spells_8,
    @Spells_9,
    @Spells_10,
    @Flags
);