SET
@eventEntry := {evententry},
@guid := {guid},
@npcflag := {npcflag};

DELETE FROM game_event_npcflag WHERE
    eventEntry=@eventEntry AND
    guid=@guid
;

INSERT INTO game_event_npcflag (
    eventEntry,
    guid,
    npcflag
)
VALUES (
    @eventEntry,
    @guid,
    @npcflag
);