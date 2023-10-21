SET
@ID := {id},
@Text := {text},
@NextPageID := {nextpageid},
@VerifiedBuild := {verifiedbuild};

DELETE FROM page_text WHERE
    ID=@ID
;

INSERT INTO page_text (
    ID,
    Text,
    NextPageID,
    VerifiedBuild
)
VALUES (
    @ID,
    @Text,
    @NextPageID,
    @VerifiedBuild
);