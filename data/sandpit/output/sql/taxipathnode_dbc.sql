SET
@ID := {id},
@PathID := {pathid},
@NodeIndex := {nodeindex},
@ContinentID := {continentid},
@LocX := {locx},
@LocY := {locy},
@LocZ := {locz},
@Flags := {flags},
@Delay := {delay},
@ArrivalEventID := {arrivaleventid},
@DepartureEventID := {departureeventid};

DELETE FROM taxipathnode_dbc WHERE
    ID=@ID
;

INSERT INTO taxipathnode_dbc (
    ID,
    PathID,
    NodeIndex,
    ContinentID,
    LocX,
    LocY,
    LocZ,
    Flags,
    Delay,
    ArrivalEventID,
    DepartureEventID
)
VALUES (
    @ID,
    @PathID,
    @NodeIndex,
    @ContinentID,
    @LocX,
    @LocY,
    @LocZ,
    @Flags,
    @Delay,
    @ArrivalEventID,
    @DepartureEventID
);