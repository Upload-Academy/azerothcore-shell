SET
@Race := {race},
@Strength := {strength},
@Agility := {agility},
@Stamina := {stamina},
@Intellect := {intellect},
@Spirit := {spirit};

DELETE FROM player_race_stats WHERE
    Race=@Race
;

INSERT INTO player_race_stats (
    Race,
    Strength,
    Agility,
    Stamina,
    Intellect,
    Spirit
)
VALUES (
    @Race,
    @Strength,
    @Agility,
    @Stamina,
    @Intellect,
    @Spirit
);