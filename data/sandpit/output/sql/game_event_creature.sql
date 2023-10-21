SET
@eventEntry := {evententry},
@guid := {guid};

DELETE FROM game_event_creature WHERE
    eventEntry=@eventEntry AND
    guid=@guid
;

INSERT INTO game_event_creature (
    eventEntry,
    guid
)
VALUES (
    @eventEntry,
    @guid
);