SET
@ID := {id},
@SpellID := {spellid},
@MoneyCost := {moneycost},
@ReqSkillLine := {reqskillline},
@ReqSkillRank := {reqskillrank},
@ReqLevel := {reqlevel},
@ReqSpell := {reqspell};

DELETE FROM npc_trainer WHERE
    ID=@ID AND
    SpellID=@SpellID
;

INSERT INTO npc_trainer (
    ID,
    SpellID,
    MoneyCost,
    ReqSkillLine,
    ReqSkillRank,
    ReqLevel,
    ReqSpell
)
VALUES (
    @ID,
    @SpellID,
    @MoneyCost,
    @ReqSkillLine,
    @ReqSkillRank,
    @ReqLevel,
    @ReqSpell
);