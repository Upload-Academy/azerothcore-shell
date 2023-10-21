SET
@ID := {id},
@type := {type},
@locale := {locale},
@Greeting := {greeting},
@VerifiedBuild := {verifiedbuild};

DELETE FROM quest_greeting_locale WHERE
    ID=@ID AND
    type=@type AND
    locale=@locale
;

INSERT INTO quest_greeting_locale (
    ID,
    type,
    locale,
    Greeting,
    VerifiedBuild
)
VALUES (
    @ID,
    @type,
    @locale,
    @Greeting,
    @VerifiedBuild
);