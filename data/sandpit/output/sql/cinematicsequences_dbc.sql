SET
@ID := {id},
@SoundID := {soundid},
@Camera_1 := {camera_1},
@Camera_2 := {camera_2},
@Camera_3 := {camera_3},
@Camera_4 := {camera_4},
@Camera_5 := {camera_5},
@Camera_6 := {camera_6},
@Camera_7 := {camera_7},
@Camera_8 := {camera_8};

DELETE FROM cinematicsequences_dbc WHERE
    ID=@ID
;

INSERT INTO cinematicsequences_dbc (
    ID,
    SoundID,
    Camera_1,
    Camera_2,
    Camera_3,
    Camera_4,
    Camera_5,
    Camera_6,
    Camera_7,
    Camera_8
)
VALUES (
    @ID,
    @SoundID,
    @Camera_1,
    @Camera_2,
    @Camera_3,
    @Camera_4,
    @Camera_5,
    @Camera_6,
    @Camera_7,
    @Camera_8
);