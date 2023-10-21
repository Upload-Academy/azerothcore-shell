SET
@ID := {id},
@LanguageID := {languageid},
@MaleText := {maletext},
@FemaleText := {femaletext},
@EmoteID1 := {emoteid1},
@EmoteID2 := {emoteid2},
@EmoteID3 := {emoteid3},
@EmoteDelay1 := {emotedelay1},
@EmoteDelay2 := {emotedelay2},
@EmoteDelay3 := {emotedelay3},
@SoundEntriesId := {soundentriesid},
@EmotesID := {emotesid},
@Flags := {flags},
@VerifiedBuild := {verifiedbuild};

DELETE FROM broadcast_text WHERE
    ID=@ID
;

INSERT INTO broadcast_text (
    ID,
    LanguageID,
    MaleText,
    FemaleText,
    EmoteID1,
    EmoteID2,
    EmoteID3,
    EmoteDelay1,
    EmoteDelay2,
    EmoteDelay3,
    SoundEntriesId,
    EmotesID,
    Flags,
    VerifiedBuild
)
VALUES (
    @ID,
    @LanguageID,
    @MaleText,
    @FemaleText,
    @EmoteID1,
    @EmoteID2,
    @EmoteID3,
    @EmoteDelay1,
    @EmoteDelay2,
    @EmoteDelay3,
    @SoundEntriesId,
    @EmotesID,
    @Flags,
    @VerifiedBuild
);