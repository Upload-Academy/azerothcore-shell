SET
@leaderGUID := {leaderguid},
@memberGUID := {memberguid},
@dist := {dist},
@angle := {angle},
@groupAI := {groupai},
@point_1 := {point_1},
@point_2 := {point_2};

DELETE FROM creature_formations WHERE
    memberGUID=@memberGUID
;

INSERT INTO creature_formations (
    leaderGUID,
    memberGUID,
    dist,
    angle,
    groupAI,
    point_1,
    point_2
)
VALUES (
    @leaderGUID,
    @memberGUID,
    @dist,
    @angle,
    @groupAI,
    @point_1,
    @point_2
);