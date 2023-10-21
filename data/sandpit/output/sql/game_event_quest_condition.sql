SET
@eventEntry := {evententry},
@quest := {quest},
@condition_id := {condition_id},
@num := {num};

DELETE FROM game_event_quest_condition WHERE
    quest=@quest
;

INSERT INTO game_event_quest_condition (
    eventEntry,
    quest,
    condition_id,
    num
)
VALUES (
    @eventEntry,
    @quest,
    @condition_id,
    @num
);