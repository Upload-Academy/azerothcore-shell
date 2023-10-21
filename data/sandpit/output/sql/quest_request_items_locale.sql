SET
@ID := {id},
@locale := {locale},
@CompletionText := {completiontext},
@VerifiedBuild := {verifiedbuild};

DELETE FROM quest_request_items_locale WHERE
    ID=@ID AND
    locale=@locale
;

INSERT INTO quest_request_items_locale (
    ID,
    locale,
    CompletionText,
    VerifiedBuild
)
VALUES (
    @ID,
    @locale,
    @CompletionText,
    @VerifiedBuild
);