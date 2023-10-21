SET
@racemask := {racemask},
@classmask := {classmask},
@Spell := {spell},
@Note := {note};

DELETE FROM playercreateinfo_spell_custom WHERE
    racemask=@racemask AND
    classmask=@classmask AND
    Spell=@Spell
;

INSERT INTO playercreateinfo_spell_custom (
    racemask,
    classmask,
    Spell,
    Note
)
VALUES (
    @racemask,
    @classmask,
    @Spell,
    @Note
);