SET
@spellId := {spellid},
@requiredSpecialization := {requiredspecialization},
@perfectCreateChance := {perfectcreatechance},
@perfectItemType := {perfectitemtype};

DELETE FROM skill_perfect_item_template WHERE
    spellId=@spellId
;

INSERT INTO skill_perfect_item_template (
    spellId,
    requiredSpecialization,
    perfectCreateChance,
    perfectItemType
)
VALUES (
    @spellId,
    @requiredSpecialization,
    @perfectCreateChance,
    @perfectItemType
);