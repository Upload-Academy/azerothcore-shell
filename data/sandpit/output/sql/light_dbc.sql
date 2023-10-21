SET
@ID := {id},
@ContinentID := {continentid},
@X := {x},
@Y := {y},
@Z := {z},
@FalloffStart := {falloffstart},
@FalloffEnd := {falloffend},
@LightParamsID_1 := {lightparamsid_1},
@LightParamsID_2 := {lightparamsid_2},
@LightParamsID_3 := {lightparamsid_3},
@LightParamsID_4 := {lightparamsid_4},
@LightParamsID_5 := {lightparamsid_5},
@LightParamsID_6 := {lightparamsid_6},
@LightParamsID_7 := {lightparamsid_7},
@LightParamsID_8 := {lightparamsid_8};

DELETE FROM light_dbc WHERE
    ID=@ID
;

INSERT INTO light_dbc (
    ID,
    ContinentID,
    X,
    Y,
    Z,
    FalloffStart,
    FalloffEnd,
    LightParamsID_1,
    LightParamsID_2,
    LightParamsID_3,
    LightParamsID_4,
    LightParamsID_5,
    LightParamsID_6,
    LightParamsID_7,
    LightParamsID_8
)
VALUES (
    @ID,
    @ContinentID,
    @X,
    @Y,
    @Z,
    @FalloffStart,
    @FalloffEnd,
    @LightParamsID_1,
    @LightParamsID_2,
    @LightParamsID_3,
    @LightParamsID_4,
    @LightParamsID_5,
    @LightParamsID_6,
    @LightParamsID_7,
    @LightParamsID_8
);