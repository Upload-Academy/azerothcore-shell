SET
@dungeonId := {dungeonid},
@maxLevel := {maxlevel},
@firstQuestId := {firstquestid},
@otherQuestId := {otherquestid};

DELETE FROM lfg_dungeon_rewards WHERE
    dungeonId=@dungeonId AND
    maxLevel=@maxLevel
;

INSERT INTO lfg_dungeon_rewards (
    dungeonId,
    maxLevel,
    firstQuestId,
    otherQuestId
)
VALUES (
    @dungeonId,
    @maxLevel,
    @firstQuestId,
    @otherQuestId
);