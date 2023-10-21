SET
@CreatureID := {creatureid},
@Index := {index},
@Spell := {spell},
@VerifiedBuild := {verifiedbuild};

DELETE FROM creature_template_spell WHERE
    CreatureID=@CreatureID AND
    Index=@Index
;

INSERT INTO creature_template_spell (
    CreatureID,
    Index,
    Spell,
    VerifiedBuild
)
VALUES (
    @CreatureID,
    @Index,
    @Spell,
    @VerifiedBuild
);