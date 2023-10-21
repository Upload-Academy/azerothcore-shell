SET
@ID := {id},
@locale := {locale},
@MaleText := {maletext},
@FemaleText := {femaletext},
@VerifiedBuild := {verifiedbuild};

DELETE FROM broadcast_text_locale WHERE
    ID=@ID AND
    locale=@locale
;

INSERT INTO broadcast_text_locale (
    ID,
    locale,
    MaleText,
    FemaleText,
    VerifiedBuild
)
VALUES (
    @ID,
    @locale,
    @MaleText,
    @FemaleText,
    @VerifiedBuild
);