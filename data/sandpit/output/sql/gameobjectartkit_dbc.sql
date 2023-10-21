SET
@ID := {id},
@Texture_1 := {texture_1},
@Texture_2 := {texture_2},
@Texture_3 := {texture_3},
@Attach_Model_1 := {attach_model_1},
@Attach_Model_2 := {attach_model_2},
@Attach_Model_3 := {attach_model_3},
@Attach_Model_4 := {attach_model_4};

DELETE FROM gameobjectartkit_dbc WHERE
    ID=@ID
;

INSERT INTO gameobjectartkit_dbc (
    ID,
    Texture_1,
    Texture_2,
    Texture_3,
    Attach_Model_1,
    Attach_Model_2,
    Attach_Model_3,
    Attach_Model_4
)
VALUES (
    @ID,
    @Texture_1,
    @Texture_2,
    @Texture_3,
    @Attach_Model_1,
    @Attach_Model_2,
    @Attach_Model_3,
    @Attach_Model_4
);