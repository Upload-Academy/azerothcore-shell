SET
@eventEntry := {evententry},
@id := {id},
@quest := {quest};

DELETE FROM game_event_creature_quest WHERE
    id=@id AND
    quest=@quest
;

INSERT INTO game_event_creature_quest (
    eventEntry,
    id,
    quest
)
VALUES (
    @eventEntry,
    @id,
    @quest
);