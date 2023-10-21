SET
@ID := {id},
@locale := {locale},
@Name := {name},
@Description := {description},
@VerifiedBuild := {verifiedbuild};

DELETE FROM item_template_locale WHERE
    ID=@ID AND
    locale=@locale
;

INSERT INTO item_template_locale (
    ID,
    locale,
    Name,
    Description,
    VerifiedBuild
)
VALUES (
    @ID,
    @locale,
    @Name,
    @Description,
    @VerifiedBuild
);