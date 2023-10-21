SET
@ID := {id},
@Base := {base},
@PerLevel := {perlevel},
@Minimum := {minimum};

DELETE FROM spellcasttimes_dbc WHERE
    ID=@ID
;

INSERT INTO spellcasttimes_dbc (
    ID,
    Base,
    PerLevel,
    Minimum
)
VALUES (
    @ID,
    @Base,
    @PerLevel,
    @Minimum
);