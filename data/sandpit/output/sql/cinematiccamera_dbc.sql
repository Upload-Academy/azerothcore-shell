SET
@ID := {id},
@model := {model},
@soundEntry := {soundentry},
@locationX := {locationx},
@locationY := {locationy},
@locationZ := {locationz},
@rotation := {rotation};

DELETE FROM cinematiccamera_dbc WHERE
    ID=@ID
;

INSERT INTO cinematiccamera_dbc (
    ID,
    model,
    soundEntry,
    locationX,
    locationY,
    locationZ,
    rotation
)
VALUES (
    @ID,
    @model,
    @soundEntry,
    @locationX,
    @locationY,
    @locationZ,
    @rotation
);