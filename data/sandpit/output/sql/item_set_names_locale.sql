SET
@ID := {id},
@locale := {locale},
@Name := {name},
@VerifiedBuild := {verifiedbuild};

DELETE FROM item_set_names_locale WHERE
    ID=@ID AND
    locale=@locale
;

INSERT INTO item_set_names_locale (
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