SET
@eventEntry := {evententry},
@condition_id := {condition_id},
@req_num := {req_num},
@max_world_state_field := {max_world_state_field},
@done_world_state_field := {done_world_state_field},
@description := {description};

DELETE FROM game_event_condition WHERE
    eventEntry=@eventEntry AND
    condition_id=@condition_id
;

INSERT INTO game_event_condition (
    eventEntry,
    condition_id,
    req_num,
    max_world_state_field,
    done_world_state_field,
    description
)
VALUES (
    @eventEntry,
    @condition_id,
    @req_num,
    @max_world_state_field,
    @done_world_state_field,
    @description
);