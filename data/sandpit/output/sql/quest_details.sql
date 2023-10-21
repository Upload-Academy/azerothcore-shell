SET
@ID := {id},
@Emote1 := {emote1},
@Emote2 := {emote2},
@Emote3 := {emote3},
@Emote4 := {emote4},
@EmoteDelay1 := {emotedelay1},
@EmoteDelay2 := {emotedelay2},
@EmoteDelay3 := {emotedelay3},
@EmoteDelay4 := {emotedelay4},
@VerifiedBuild := {verifiedbuild};

DELETE FROM quest_details WHERE
    ID=@ID
;

INSERT INTO quest_details (
    ID,
    Emote1,
    Emote2,
    Emote3,
    Emote4,
    EmoteDelay1,
    EmoteDelay2,
    EmoteDelay3,
    EmoteDelay4,
    VerifiedBuild
)
VALUES (
    @ID,
    @Emote1,
    @Emote2,
    @Emote3,
    @Emote4,
    @EmoteDelay1,
    @EmoteDelay2,
    @EmoteDelay3,
    @EmoteDelay4,
    @VerifiedBuild
);