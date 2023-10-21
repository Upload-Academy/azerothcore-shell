SET
@spellId := {spellid},
@reqSpell := {reqspell},
@reqSkillValue := {reqskillvalue},
@chance := {chance};

DELETE FROM skill_discovery_template WHERE
    spellId=@spellId AND
    reqSpell=@reqSpell
;

INSERT INTO skill_discovery_template (
    spellId,
    reqSpell,
    reqSkillValue,
    chance
)
VALUES (
    @spellId,
    @reqSpell,
    @reqSkillValue,
    @chance
);