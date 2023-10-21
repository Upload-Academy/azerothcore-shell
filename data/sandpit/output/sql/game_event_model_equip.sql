SET
@eventEntry := {evententry},
@guid := {guid},
@modelid := {modelid},
@equipment_id := {equipment_id};

DELETE FROM game_event_model_equip WHERE
    guid=@guid
;

INSERT INTO game_event_model_equip (
    eventEntry,
    guid,
    modelid,
    equipment_id
)
VALUES (
    @eventEntry,
    @guid,
    @modelid,
    @equipment_id
);