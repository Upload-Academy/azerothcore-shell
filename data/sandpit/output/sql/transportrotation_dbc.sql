SET
@ID := {id},
@GameObjectsID := {gameobjectsid},
@TimeIndex := {timeindex},
@RotX := {rotx},
@RotY := {roty},
@RotZ := {rotz},
@RotW := {rotw};

DELETE FROM transportrotation_dbc WHERE
    ID=@ID
;

INSERT INTO transportrotation_dbc (
    ID,
    GameObjectsID,
    TimeIndex,
    RotX,
    RotY,
    RotZ,
    RotW
)
VALUES (
    @ID,
    @GameObjectsID,
    @TimeIndex,
    @RotX,
    @RotY,
    @RotZ,
    @RotW
);