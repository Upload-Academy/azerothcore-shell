SET
@eventEntry := {evententry},
@prerequisite_event := {prerequisite_event};

DELETE FROM game_event_prerequisite WHERE
    eventEntry=@eventEntry AND
    prerequisite_event=@prerequisite_event
;

INSERT INTO game_event_prerequisite (
    eventEntry,
    prerequisite_event
)
VALUES (
    @eventEntry,
    @prerequisite_event
);