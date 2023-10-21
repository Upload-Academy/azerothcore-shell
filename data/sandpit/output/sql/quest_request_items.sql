SET
@ID := {id},
@EmoteOnComplete := {emoteoncomplete},
@EmoteOnIncomplete := {emoteonincomplete},
@CompletionText := {completiontext},
@VerifiedBuild := {verifiedbuild};

DELETE FROM quest_request_items WHERE
    ID=@ID
;

INSERT INTO quest_request_items (
    ID,
    EmoteOnComplete,
    EmoteOnIncomplete,
    CompletionText,
    VerifiedBuild
)
VALUES (
    @ID,
    @EmoteOnComplete,
    @EmoteOnIncomplete,
    @CompletionText,
    @VerifiedBuild
);