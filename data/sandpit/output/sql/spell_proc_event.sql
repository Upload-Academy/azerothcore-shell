SET
@entry := {entry},
@SchoolMask := {schoolmask},
@SpellFamilyName := {spellfamilyname},
@SpellFamilyMask0 := {spellfamilymask0},
@SpellFamilyMask1 := {spellfamilymask1},
@SpellFamilyMask2 := {spellfamilymask2},
@procFlags := {procflags},
@procEx := {procex},
@procPhase := {procphase},
@ppmRate := {ppmrate},
@CustomChance := {customchance},
@Cooldown := {cooldown};

DELETE FROM spell_proc_event WHERE
    entry=@entry
;

INSERT INTO spell_proc_event (
    entry,
    SchoolMask,
    SpellFamilyName,
    SpellFamilyMask0,
    SpellFamilyMask1,
    SpellFamilyMask2,
    procFlags,
    procEx,
    procPhase,
    ppmRate,
    CustomChance,
    Cooldown
)
VALUES (
    @entry,
    @SchoolMask,
    @SpellFamilyName,
    @SpellFamilyMask0,
    @SpellFamilyMask1,
    @SpellFamilyMask2,
    @procFlags,
    @procEx,
    @procPhase,
    @ppmRate,
    @CustomChance,
    @Cooldown
);