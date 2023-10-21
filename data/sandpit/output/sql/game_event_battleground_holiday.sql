SET
@eventEntry := {evententry},
@bgflag := {bgflag};

DELETE FROM game_event_battleground_holiday WHERE
    eventEntry=@eventEntry
;

INSERT INTO game_event_battleground_holiday (
    eventEntry,
    bgflag
)
VALUES (
    @eventEntry,
    @bgflag
);