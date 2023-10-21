SET
@entry := {entry},
@locale := {locale},
@name := {name},
@castBarCaption := {castbarcaption},
@VerifiedBuild := {verifiedbuild};

DELETE FROM gameobject_template_locale WHERE
    entry=@entry AND
    locale=@locale
;

INSERT INTO gameobject_template_locale (
    entry,
    locale,
    name,
    castBarCaption,
    VerifiedBuild
)
VALUES (
    @entry,
    @locale,
    @name,
    @castBarCaption,
    @VerifiedBuild
);