SET
@faction := {faction},
@quest_rate := {quest_rate},
@quest_daily_rate := {quest_daily_rate},
@quest_weekly_rate := {quest_weekly_rate},
@quest_monthly_rate := {quest_monthly_rate},
@quest_repeatable_rate := {quest_repeatable_rate},
@creature_rate := {creature_rate},
@spell_rate := {spell_rate};

DELETE FROM reputation_reward_rate WHERE
    faction=@faction
;

INSERT INTO reputation_reward_rate (
    faction,
    quest_rate,
    quest_daily_rate,
    quest_weekly_rate,
    quest_monthly_rate,
    quest_repeatable_rate,
    creature_rate,
    spell_rate
)
VALUES (
    @faction,
    @quest_rate,
    @quest_daily_rate,
    @quest_weekly_rate,
    @quest_monthly_rate,
    @quest_repeatable_rate,
    @creature_rate,
    @spell_rate
);