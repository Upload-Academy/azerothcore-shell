SET
@ID := {id},
@DifficultySpellID_1 := {difficultyspellid_1},
@DifficultySpellID_2 := {difficultyspellid_2},
@DifficultySpellID_3 := {difficultyspellid_3},
@DifficultySpellID_4 := {difficultyspellid_4};

DELETE FROM spelldifficulty_dbc WHERE
    ID=@ID
;

INSERT INTO spelldifficulty_dbc (
    ID,
    DifficultySpellID_1,
    DifficultySpellID_2,
    DifficultySpellID_3,
    DifficultySpellID_4
)
VALUES (
    @ID,
    @DifficultySpellID_1,
    @DifficultySpellID_2,
    @DifficultySpellID_3,
    @DifficultySpellID_4
);