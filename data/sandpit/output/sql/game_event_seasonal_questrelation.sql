SET
@questId := {questid},
@eventEntry := {evententry};

DELETE FROM game_event_seasonal_questrelation WHERE
    questId=@questId AND
    eventEntry=@eventEntry
;

INSERT INTO game_event_seasonal_questrelation (
    questId,
    eventEntry
)
VALUES (
    @questId,
    @eventEntry
);