SET
@CreatureId := {creatureid},
@Ground := {ground},
@Swim := {swim},
@Flight := {flight},
@Rooted := {rooted},
@Chase := {chase},
@Random := {random},
@InteractionPauseTimer := {interactionpausetimer};

DELETE FROM creature_template_movement WHERE
    CreatureId=@CreatureId
;

INSERT INTO creature_template_movement (
    CreatureId,
    Ground,
    Swim,
    Flight,
    Rooted,
    Chase,
    Random,
    InteractionPauseTimer
)
VALUES (
    @CreatureId,
    @Ground,
    @Swim,
    @Flight,
    @Rooted,
    @Chase,
    @Random,
    @InteractionPauseTimer
);