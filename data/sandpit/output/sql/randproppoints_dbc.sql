SET
@ID := {id},
@Epic_1 := {epic_1},
@Epic_2 := {epic_2},
@Epic_3 := {epic_3},
@Epic_4 := {epic_4},
@Epic_5 := {epic_5},
@Superior_1 := {superior_1},
@Superior_2 := {superior_2},
@Superior_3 := {superior_3},
@Superior_4 := {superior_4},
@Superior_5 := {superior_5},
@Good_1 := {good_1},
@Good_2 := {good_2},
@Good_3 := {good_3},
@Good_4 := {good_4},
@Good_5 := {good_5};

DELETE FROM randproppoints_dbc WHERE
    ID=@ID
;

INSERT INTO randproppoints_dbc (
    ID,
    Epic_1,
    Epic_2,
    Epic_3,
    Epic_4,
    Epic_5,
    Superior_1,
    Superior_2,
    Superior_3,
    Superior_4,
    Superior_5,
    Good_1,
    Good_2,
    Good_3,
    Good_4,
    Good_5
)
VALUES (
    @ID,
    @Epic_1,
    @Epic_2,
    @Epic_3,
    @Epic_4,
    @Epic_5,
    @Superior_1,
    @Superior_2,
    @Superior_3,
    @Superior_4,
    @Superior_5,
    @Good_1,
    @Good_2,
    @Good_3,
    @Good_4,
    @Good_5
);