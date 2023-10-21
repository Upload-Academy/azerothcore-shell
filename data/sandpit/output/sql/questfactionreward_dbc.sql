SET
@ID := {id},
@Difficulty_1 := {difficulty_1},
@Difficulty_2 := {difficulty_2},
@Difficulty_3 := {difficulty_3},
@Difficulty_4 := {difficulty_4},
@Difficulty_5 := {difficulty_5},
@Difficulty_6 := {difficulty_6},
@Difficulty_7 := {difficulty_7},
@Difficulty_8 := {difficulty_8},
@Difficulty_9 := {difficulty_9},
@Difficulty_10 := {difficulty_10};

DELETE FROM questfactionreward_dbc WHERE
    ID=@ID
;

INSERT INTO questfactionreward_dbc (
    ID,
    Difficulty_1,
    Difficulty_2,
    Difficulty_3,
    Difficulty_4,
    Difficulty_5,
    Difficulty_6,
    Difficulty_7,
    Difficulty_8,
    Difficulty_9,
    Difficulty_10
)
VALUES (
    @ID,
    @Difficulty_1,
    @Difficulty_2,
    @Difficulty_3,
    @Difficulty_4,
    @Difficulty_5,
    @Difficulty_6,
    @Difficulty_7,
    @Difficulty_8,
    @Difficulty_9,
    @Difficulty_10
);