SET
@ID := {id},
@locale := {locale},
@Text := {text},
@VerifiedBuild := {verifiedbuild};

DELETE FROM page_text_locale WHERE
    ID=@ID AND
    locale=@locale
;

INSERT INTO page_text_locale (
    ID,
    locale,
    Text,
    VerifiedBuild
)
VALUES (
    @ID,
    @locale,
    @Text,
    @VerifiedBuild
);