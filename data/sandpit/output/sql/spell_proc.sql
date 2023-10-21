SET
@SpellId := {spellid},
@SchoolMask := {schoolmask},
@SpellFamilyName := {spellfamilyname},
@SpellFamilyMask0 := {spellfamilymask0},
@SpellFamilyMask1 := {spellfamilymask1},
@SpellFamilyMask2 := {spellfamilymask2},
@ProcFlags := {procflags},
@SpellTypeMask := {spelltypemask},
@SpellPhaseMask := {spellphasemask},
@HitMask := {hitmask},
@AttributesMask := {attributesmask},
@ProcsPerMinute := {procsperminute},
@Chance := {chance},
@Cooldown := {cooldown},
@Charges := {charges};

DELETE FROM spell_proc WHERE
    SpellId=@SpellId
;

INSERT INTO spell_proc (
    SpellId,
    SchoolMask,
    SpellFamilyName,
    SpellFamilyMask0,
    SpellFamilyMask1,
    SpellFamilyMask2,
    ProcFlags,
    SpellTypeMask,
    SpellPhaseMask,
    HitMask,
    AttributesMask,
    ProcsPerMinute,
    Chance,
    Cooldown,
    Charges
)
VALUES (
    @SpellId,
    @SchoolMask,
    @SpellFamilyName,
    @SpellFamilyMask0,
    @SpellFamilyMask1,
    @SpellFamilyMask2,
    @ProcFlags,
    @SpellTypeMask,
    @SpellPhaseMask,
    @HitMask,
    @AttributesMask,
    @ProcsPerMinute,
    @Chance,
    @Cooldown,
    @Charges
);