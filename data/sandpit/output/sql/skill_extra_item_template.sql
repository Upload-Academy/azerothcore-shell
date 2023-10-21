SET
@spellId := {spellid},
@requiredSpecialization := {requiredspecialization},
@additionalCreateChance := {additionalcreatechance},
@additionalMaxNum := {additionalmaxnum};

DELETE FROM skill_extra_item_template WHERE
    spellId=@spellId
;

INSERT INTO skill_extra_item_template (
    spellId,
    requiredSpecialization,
    additionalCreateChance,
    additionalMaxNum
)
VALUES (
    @spellId,
    @requiredSpecialization,
    @additionalCreateChance,
    @additionalMaxNum
);