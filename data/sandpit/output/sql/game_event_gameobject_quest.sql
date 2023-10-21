SET
@eventEntry := {evententry},
@id := {id},
@quest := {quest};

DELETE FROM game_event_gameobject_quest WHERE
    eventEntry=@eventEntry AND
    id=@id AND
    quest=@quest
;

INSERT INTO game_event_gameobject_quest (
    eventEntry,
    id,
    quest
)
VALUES (
    @eventEntry,
    @id,
    @quest
);