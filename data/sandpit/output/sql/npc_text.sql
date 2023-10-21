SET
@ID := {id},
@text0_0 := {text0_0},
@text0_1 := {text0_1},
@BroadcastTextID0 := {broadcasttextid0},
@lang0 := {lang0},
@Probability0 := {probability0},
@em0_0 := {em0_0},
@em0_1 := {em0_1},
@em0_2 := {em0_2},
@em0_3 := {em0_3},
@em0_4 := {em0_4},
@em0_5 := {em0_5},
@text1_0 := {text1_0},
@text1_1 := {text1_1},
@BroadcastTextID1 := {broadcasttextid1},
@lang1 := {lang1},
@Probability1 := {probability1},
@em1_0 := {em1_0},
@em1_1 := {em1_1},
@em1_2 := {em1_2},
@em1_3 := {em1_3},
@em1_4 := {em1_4},
@em1_5 := {em1_5},
@text2_0 := {text2_0},
@text2_1 := {text2_1},
@BroadcastTextID2 := {broadcasttextid2},
@lang2 := {lang2},
@Probability2 := {probability2},
@em2_0 := {em2_0},
@em2_1 := {em2_1},
@em2_2 := {em2_2},
@em2_3 := {em2_3},
@em2_4 := {em2_4},
@em2_5 := {em2_5},
@text3_0 := {text3_0},
@text3_1 := {text3_1},
@BroadcastTextID3 := {broadcasttextid3},
@lang3 := {lang3},
@Probability3 := {probability3},
@em3_0 := {em3_0},
@em3_1 := {em3_1},
@em3_2 := {em3_2},
@em3_3 := {em3_3},
@em3_4 := {em3_4},
@em3_5 := {em3_5},
@text4_0 := {text4_0},
@text4_1 := {text4_1},
@BroadcastTextID4 := {broadcasttextid4},
@lang4 := {lang4},
@Probability4 := {probability4},
@em4_0 := {em4_0},
@em4_1 := {em4_1},
@em4_2 := {em4_2},
@em4_3 := {em4_3},
@em4_4 := {em4_4},
@em4_5 := {em4_5},
@text5_0 := {text5_0},
@text5_1 := {text5_1},
@BroadcastTextID5 := {broadcasttextid5},
@lang5 := {lang5},
@Probability5 := {probability5},
@em5_0 := {em5_0},
@em5_1 := {em5_1},
@em5_2 := {em5_2},
@em5_3 := {em5_3},
@em5_4 := {em5_4},
@em5_5 := {em5_5},
@text6_0 := {text6_0},
@text6_1 := {text6_1},
@BroadcastTextID6 := {broadcasttextid6},
@lang6 := {lang6},
@Probability6 := {probability6},
@em6_0 := {em6_0},
@em6_1 := {em6_1},
@em6_2 := {em6_2},
@em6_3 := {em6_3},
@em6_4 := {em6_4},
@em6_5 := {em6_5},
@text7_0 := {text7_0},
@text7_1 := {text7_1},
@BroadcastTextID7 := {broadcasttextid7},
@lang7 := {lang7},
@Probability7 := {probability7},
@em7_0 := {em7_0},
@em7_1 := {em7_1},
@em7_2 := {em7_2},
@em7_3 := {em7_3},
@em7_4 := {em7_4},
@em7_5 := {em7_5},
@VerifiedBuild := {verifiedbuild};

DELETE FROM npc_text WHERE
    ID=@ID
;

INSERT INTO npc_text (
    ID,
    text0_0,
    text0_1,
    BroadcastTextID0,
    lang0,
    Probability0,
    em0_0,
    em0_1,
    em0_2,
    em0_3,
    em0_4,
    em0_5,
    text1_0,
    text1_1,
    BroadcastTextID1,
    lang1,
    Probability1,
    em1_0,
    em1_1,
    em1_2,
    em1_3,
    em1_4,
    em1_5,
    text2_0,
    text2_1,
    BroadcastTextID2,
    lang2,
    Probability2,
    em2_0,
    em2_1,
    em2_2,
    em2_3,
    em2_4,
    em2_5,
    text3_0,
    text3_1,
    BroadcastTextID3,
    lang3,
    Probability3,
    em3_0,
    em3_1,
    em3_2,
    em3_3,
    em3_4,
    em3_5,
    text4_0,
    text4_1,
    BroadcastTextID4,
    lang4,
    Probability4,
    em4_0,
    em4_1,
    em4_2,
    em4_3,
    em4_4,
    em4_5,
    text5_0,
    text5_1,
    BroadcastTextID5,
    lang5,
    Probability5,
    em5_0,
    em5_1,
    em5_2,
    em5_3,
    em5_4,
    em5_5,
    text6_0,
    text6_1,
    BroadcastTextID6,
    lang6,
    Probability6,
    em6_0,
    em6_1,
    em6_2,
    em6_3,
    em6_4,
    em6_5,
    text7_0,
    text7_1,
    BroadcastTextID7,
    lang7,
    Probability7,
    em7_0,
    em7_1,
    em7_2,
    em7_3,
    em7_4,
    em7_5,
    VerifiedBuild
)
VALUES (
    @ID,
    @text0_0,
    @text0_1,
    @BroadcastTextID0,
    @lang0,
    @Probability0,
    @em0_0,
    @em0_1,
    @em0_2,
    @em0_3,
    @em0_4,
    @em0_5,
    @text1_0,
    @text1_1,
    @BroadcastTextID1,
    @lang1,
    @Probability1,
    @em1_0,
    @em1_1,
    @em1_2,
    @em1_3,
    @em1_4,
    @em1_5,
    @text2_0,
    @text2_1,
    @BroadcastTextID2,
    @lang2,
    @Probability2,
    @em2_0,
    @em2_1,
    @em2_2,
    @em2_3,
    @em2_4,
    @em2_5,
    @text3_0,
    @text3_1,
    @BroadcastTextID3,
    @lang3,
    @Probability3,
    @em3_0,
    @em3_1,
    @em3_2,
    @em3_3,
    @em3_4,
    @em3_5,
    @text4_0,
    @text4_1,
    @BroadcastTextID4,
    @lang4,
    @Probability4,
    @em4_0,
    @em4_1,
    @em4_2,
    @em4_3,
    @em4_4,
    @em4_5,
    @text5_0,
    @text5_1,
    @BroadcastTextID5,
    @lang5,
    @Probability5,
    @em5_0,
    @em5_1,
    @em5_2,
    @em5_3,
    @em5_4,
    @em5_5,
    @text6_0,
    @text6_1,
    @BroadcastTextID6,
    @lang6,
    @Probability6,
    @em6_0,
    @em6_1,
    @em6_2,
    @em6_3,
    @em6_4,
    @em6_5,
    @text7_0,
    @text7_1,
    @BroadcastTextID7,
    @lang7,
    @Probability7,
    @em7_0,
    @em7_1,
    @em7_2,
    @em7_3,
    @em7_4,
    @em7_5,
    @VerifiedBuild
);