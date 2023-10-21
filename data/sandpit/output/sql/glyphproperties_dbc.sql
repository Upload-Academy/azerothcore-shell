SET
@ID := {id},
@SpellID := {spellid},
@GlyphSlotFlags := {glyphslotflags},
@SpellIconID := {spelliconid};

DELETE FROM glyphproperties_dbc WHERE
    ID=@ID
;

INSERT INTO glyphproperties_dbc (
    ID,
    SpellID,
    GlyphSlotFlags,
    SpellIconID
)
VALUES (
    @ID,
    @SpellID,
    @GlyphSlotFlags,
    @SpellIconID
);