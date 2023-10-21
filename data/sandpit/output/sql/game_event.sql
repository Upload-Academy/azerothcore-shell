SET
@eventEntry := {evententry},
@start_time := {start_time},
@end_time := {end_time},
@occurence := {occurence},
@length := {length},
@holiday := {holiday},
@holidayStage := {holidaystage},
@description := {description},
@world_event := {world_event},
@announce := {announce};

DELETE FROM game_event WHERE
    eventEntry=@eventEntry
;

INSERT INTO game_event (
    eventEntry,
    start_time,
    end_time,
    occurence,
    length,
    holiday,
    holidayStage,
    description,
    world_event,
    announce
)
VALUES (
    @eventEntry,
    @start_time,
    @end_time,
    @occurence,
    @length,
    @holiday,
    @holidayStage,
    @description,
    @world_event,
    @announce
);