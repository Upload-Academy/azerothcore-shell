SET
@Class := {class},
@Level := {level},
@BaseHP := {basehp},
@BaseMana := {basemana},
@Strength := {strength},
@Agility := {agility},
@Stamina := {stamina},
@Intellect := {intellect},
@Spirit := {spirit};

DELETE FROM player_class_stats WHERE
    Class=@Class AND
    Level=@Level
;

INSERT INTO player_class_stats (
    Class,
    Level,
    BaseHP,
    BaseMana,
    Strength,
    Agility,
    Stamina,
    Intellect,
    Spirit
)
VALUES (
    @Class,
    @Level,
    @BaseHP,
    @BaseMana,
    @Strength,
    @Agility,
    @Stamina,
    @Intellect,
    @Spirit
);