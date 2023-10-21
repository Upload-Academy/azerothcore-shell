SET
@ID := {id},
@TransportID := {transportid},
@TimeIndex := {timeindex},
@PosX := {posx},
@PosY := {posy},
@PosZ := {posz},
@SequenceID := {sequenceid};

DELETE FROM transportanimation_dbc WHERE
    ID=@ID
;

INSERT INTO transportanimation_dbc (
    ID,
    TransportID,
    TimeIndex,
    PosX,
    PosY,
    PosZ,
    SequenceID
)
VALUES (
    @ID,
    @TransportID,
    @TimeIndex,
    @PosX,
    @PosY,
    @PosZ,
    @SequenceID
);