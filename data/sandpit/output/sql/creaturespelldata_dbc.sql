SET
@ID := {id},
@Spells_1 := {spells_1},
@Spells_2 := {spells_2},
@Spells_3 := {spells_3},
@Spells_4 := {spells_4},
@Availability_1 := {availability_1},
@Availability_2 := {availability_2},
@Availability_3 := {availability_3},
@Availability_4 := {availability_4};

DELETE FROM creaturespelldata_dbc WHERE
    ID=@ID
;

INSERT INTO creaturespelldata_dbc (
    ID,
    Spells_1,
    Spells_2,
    Spells_3,
    Spells_4,
    Availability_1,
    Availability_2,
    Availability_3,
    Availability_4
)
VALUES (
    @ID,
    @Spells_1,
    @Spells_2,
    @Spells_3,
    @Spells_4,
    @Availability_1,
    @Availability_2,
    @Availability_3,
    @Availability_4
);