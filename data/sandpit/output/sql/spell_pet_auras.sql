SET
@spell := {spell},
@effectId := {effectid},
@pet := {pet},
@aura := {aura};

DELETE FROM spell_pet_auras WHERE
    spell=@spell AND
    effectId=@effectId AND
    pet=@pet
;

INSERT INTO spell_pet_auras (
    spell,
    effectId,
    pet,
    aura
)
VALUES (
    @spell,
    @effectId,
    @pet,
    @aura
);