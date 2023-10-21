SET
@eventEntry := {evententry},
@guid := {guid};

DELETE FROM game_event_gameobject WHERE
    eventEntry=@eventEntry AND
    guid=@guid
;

INSERT INTO game_event_gameobject (
    eventEntry,
    guid
)
VALUES (
    @eventEntry,
    @guid
);