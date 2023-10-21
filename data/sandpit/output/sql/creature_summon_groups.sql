SET
@summonerId := {summonerid},
@summonerType := {summonertype},
@groupId := {groupid},
@entry := {entry},
@position_x := {position_x},
@position_y := {position_y},
@position_z := {position_z},
@orientation := {orientation},
@summonType := {summontype},
@summonTime := {summontime},
@Comment := {comment};

DELETE FROM creature_summon_groups WHERE
;

INSERT INTO creature_summon_groups (
    summonerId,
    summonerType,
    groupId,
    entry,
    position_x,
    position_y,
    position_z,
    orientation,
    summonType,
    summonTime,
    Comment
)
VALUES (
    @summonerId,
    @summonerType,
    @groupId,
    @entry,
    @position_x,
    @position_y,
    @position_z,
    @orientation,
    @summonType,
    @summonTime,
    @Comment
);