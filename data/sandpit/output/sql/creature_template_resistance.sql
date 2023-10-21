SET
@CreatureID := {creatureid},
@School := {school},
@Resistance := {resistance},
@VerifiedBuild := {verifiedbuild};

DELETE FROM creature_template_resistance WHERE
    CreatureID=@CreatureID AND
    School=@School
;

INSERT INTO creature_template_resistance (
    CreatureID,
    School,
    Resistance,
    VerifiedBuild
)
VALUES (
    @CreatureID,
    @School,
    @Resistance,
    @VerifiedBuild
);