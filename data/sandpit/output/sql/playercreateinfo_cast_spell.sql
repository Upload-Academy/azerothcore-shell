SET
@raceMask := {racemask},
@classMask := {classmask},
@spell := {spell},
@note := {note};

DELETE FROM playercreateinfo_cast_spell WHERE
;

INSERT INTO playercreateinfo_cast_spell (
    raceMask,
    classMask,
    spell,
    note
)
VALUES (
    @raceMask,
    @classMask,
    @spell,
    @note
);