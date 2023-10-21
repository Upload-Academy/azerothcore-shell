SET
@entry := {entry},
@locale := {locale},
@Name := {name},
@Title := {title},
@VerifiedBuild := {verifiedbuild};

DELETE FROM creature_template_locale WHERE
    entry=@entry AND
    locale=@locale
;

INSERT INTO creature_template_locale (
    entry,
    locale,
    Name,
    Title,
    VerifiedBuild
)
VALUES (
    @entry,
    @locale,
    @Name,
    @Title,
    @VerifiedBuild
);