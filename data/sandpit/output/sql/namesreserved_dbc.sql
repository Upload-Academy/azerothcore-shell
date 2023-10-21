SET
@ID := {id},
@Pattern := {pattern},
@LanguagueID := {languagueid};

DELETE FROM namesreserved_dbc WHERE
    ID=@ID
;

INSERT INTO namesreserved_dbc (
    ID,
    Pattern,
    LanguagueID
)
VALUES (
    @ID,
    @Pattern,
    @LanguagueID
);