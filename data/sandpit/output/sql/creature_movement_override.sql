SET
@SpawnId := {spawnid},
@Ground := {ground},
@Swim := {swim},
@Flight := {flight},
@Rooted := {rooted},
@Chase := {chase},
@Random := {random},
@InteractionPauseTimer := {interactionpausetimer};

DELETE FROM creature_movement_override WHERE
    SpawnId=@SpawnId
;

INSERT INTO creature_movement_override (
    SpawnId,
    Ground,
    Swim,
    Flight,
    Rooted,
    Chase,
    Random,
    InteractionPauseTimer
)
VALUES (
    @SpawnId,
    @Ground,
    @Swim,
    @Flight,
    @Rooted,
    @Chase,
    @Random,
    @InteractionPauseTimer
);