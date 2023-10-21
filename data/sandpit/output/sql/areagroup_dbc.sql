SET
@ID := {id},
@AreaID_1 := {areaid_1},
@AreaID_2 := {areaid_2},
@AreaID_3 := {areaid_3},
@AreaID_4 := {areaid_4},
@AreaID_5 := {areaid_5},
@AreaID_6 := {areaid_6},
@NextAreaID := {nextareaid};

DELETE FROM areagroup_dbc WHERE
    ID=@ID
;

INSERT INTO areagroup_dbc (
    ID,
    AreaID_1,
    AreaID_2,
    AreaID_3,
    AreaID_4,
    AreaID_5,
    AreaID_6,
    NextAreaID
)
VALUES (
    @ID,
    @AreaID_1,
    @AreaID_2,
    @AreaID_3,
    @AreaID_4,
    @AreaID_5,
    @AreaID_6,
    @NextAreaID
);