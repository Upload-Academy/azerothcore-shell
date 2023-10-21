SET
@QuestID := {questid},
@Idx1 := {idx1},
@Idx2 := {idx2},
@X := {x},
@Y := {y},
@VerifiedBuild := {verifiedbuild};

DELETE FROM quest_poi_points WHERE
    QuestID=@QuestID AND
    Idx1=@Idx1 AND
    Idx2=@Idx2
;

INSERT INTO quest_poi_points (
    QuestID,
    Idx1,
    Idx2,
    X,
    Y,
    VerifiedBuild
)
VALUES (
    @QuestID,
    @Idx1,
    @Idx2,
    @X,
    @Y,
    @VerifiedBuild
);