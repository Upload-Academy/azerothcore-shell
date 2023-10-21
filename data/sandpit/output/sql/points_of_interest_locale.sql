SET
@ID := {id},
@locale := {locale},
@Name := {name},
@VerifiedBuild := {verifiedbuild};

DELETE FROM points_of_interest_locale WHERE
    ID=@ID AND
    locale=@locale
;

INSERT INTO points_of_interest_locale (
    ID,
    locale,
    Name,
    VerifiedBuild
)
VALUES (
    @ID,
    @locale,
    @Name,
    @VerifiedBuild
);