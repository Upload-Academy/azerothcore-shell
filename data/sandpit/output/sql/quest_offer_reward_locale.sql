SET
@ID := {id},
@locale := {locale},
@RewardText := {rewardtext},
@VerifiedBuild := {verifiedbuild};

DELETE FROM quest_offer_reward_locale WHERE
    ID=@ID AND
    locale=@locale
;

INSERT INTO quest_offer_reward_locale (
    ID,
    locale,
    RewardText,
    VerifiedBuild
)
VALUES (
    @ID,
    @locale,
    @RewardText,
    @VerifiedBuild
);