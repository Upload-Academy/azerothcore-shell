SET
@ID := {id},
@Pattern := {pattern},
@LanguagueID := {languagueid};

DELETE FROM namesprofanity_dbc WHERE
    ID=@ID
;

INSERT INTO namesprofanity_dbc (
    ID,
    Pattern,
    LanguagueID
)
VALUES (
    @ID,
    @Pattern,
    @LanguagueID
);