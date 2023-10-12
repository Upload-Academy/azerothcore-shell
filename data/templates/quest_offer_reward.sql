
SET
@Entry := {Entry},
@Emote1 := {Emote1},
@Emote2 := {Emote2},
@Emote3 := {Emote3},
@Emote4 := {Emote4},
@EmoteDelay1 := {EmoteDelay1},
@EmoteDelay2 := {EmoteDelay2},
@EmoteDelay3 := {EmoteDelay3},
@EmoteDelay4 := {EmoteDelay4},
@RewardText := "{RewardText}";

DELETE FROM `quest_offer_reward` WHERE (`ID` = @Entry);
INSERT INTO `quest_offer_reward` (
    `ID`,
    `Emote1`,
    `Emote2`,
    `Emote3`,
    `Emote4`,
    `EmoteDelay1`,
    `EmoteDelay2`,
    `EmoteDelay3`,
    `EmoteDelay4`,
    `RewardText`
) VALUES (
    @Entry,
    @Emote1,
    @Emote2,
    @Emote3,
    @Emote4,
    @EmoteDelay1,
    @EmoteDelay2,
    @EmoteDelay3,
    @EmoteDelay4,
    @RewardText
);
