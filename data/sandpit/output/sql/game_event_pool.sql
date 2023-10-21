SET
@eventEntry := {evententry},
@pool_entry := {pool_entry};

DELETE FROM game_event_pool WHERE
    pool_entry=@pool_entry
;

INSERT INTO game_event_pool (
    eventEntry,
    pool_entry
)
VALUES (
    @eventEntry,
    @pool_entry
);