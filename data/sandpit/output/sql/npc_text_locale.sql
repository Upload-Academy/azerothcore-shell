SET
@ID := {id},
@Locale := {locale},
@Text0_0 := {text0_0},
@Text0_1 := {text0_1},
@Text1_0 := {text1_0},
@Text1_1 := {text1_1},
@Text2_0 := {text2_0},
@Text2_1 := {text2_1},
@Text3_0 := {text3_0},
@Text3_1 := {text3_1},
@Text4_0 := {text4_0},
@Text4_1 := {text4_1},
@Text5_0 := {text5_0},
@Text5_1 := {text5_1},
@Text6_0 := {text6_0},
@Text6_1 := {text6_1},
@Text7_0 := {text7_0},
@Text7_1 := {text7_1};

DELETE FROM npc_text_locale WHERE
    ID=@ID AND
    Locale=@Locale
;

INSERT INTO npc_text_locale (
    ID,
    Locale,
    Text0_0,
    Text0_1,
    Text1_0,
    Text1_1,
    Text2_0,
    Text2_1,
    Text3_0,
    Text3_1,
    Text4_0,
    Text4_1,
    Text5_0,
    Text5_1,
    Text6_0,
    Text6_1,
    Text7_0,
    Text7_1
)
VALUES (
    @ID,
    @Locale,
    @Text0_0,
    @Text0_1,
    @Text1_0,
    @Text1_1,
    @Text2_0,
    @Text2_1,
    @Text3_0,
    @Text3_1,
    @Text4_0,
    @Text4_1,
    @Text5_0,
    @Text5_1,
    @Text6_0,
    @Text6_1,
    @Text7_0,
    @Text7_1
);