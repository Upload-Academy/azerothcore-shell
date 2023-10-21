SET
@ID := {id},
@SkillLine := {skillline},
@Spell := {spell},
@RaceMask := {racemask},
@ClassMask := {classmask},
@ExcludeRace := {excluderace},
@ExcludeClass := {excludeclass},
@MinSkillLineRank := {minskilllinerank},
@SupercededBySpell := {supercededbyspell},
@AcquireMethod := {acquiremethod},
@TrivialSkillLineRankHigh := {trivialskilllinerankhigh},
@TrivialSkillLineRankLow := {trivialskilllineranklow},
@CharacterPoints_1 := {characterpoints_1},
@CharacterPoints_2 := {characterpoints_2};

DELETE FROM skilllineability_dbc WHERE
    ID=@ID
;

INSERT INTO skilllineability_dbc (
    ID,
    SkillLine,
    Spell,
    RaceMask,
    ClassMask,
    ExcludeRace,
    ExcludeClass,
    MinSkillLineRank,
    SupercededBySpell,
    AcquireMethod,
    TrivialSkillLineRankHigh,
    TrivialSkillLineRankLow,
    CharacterPoints_1,
    CharacterPoints_2
)
VALUES (
    @ID,
    @SkillLine,
    @Spell,
    @RaceMask,
    @ClassMask,
    @ExcludeRace,
    @ExcludeClass,
    @MinSkillLineRank,
    @SupercededBySpell,
    @AcquireMethod,
    @TrivialSkillLineRankHigh,
    @TrivialSkillLineRankLow,
    @CharacterPoints_1,
    @CharacterPoints_2
);