SET
@eventEntry := {evententry},
@season := {season};

DELETE FROM game_event_arena_seasons WHERE
    eventEntry=@eventEntry AND
    season=@season
;

INSERT INTO game_event_arena_seasons (
    eventEntry,
    season
)
VALUES (
    @eventEntry,
    @season
);