SET
@QuestID := {questid},
@id := {id},
@ObjectiveIndex := {objectiveindex},
@MapID := {mapid},
@WorldMapAreaId := {worldmapareaid},
@Floor := {floor},
@Priority := {priority},
@Flags := {flags},
@VerifiedBuild := {verifiedbuild};

DELETE FROM quest_poi WHERE
    QuestID=@QuestID AND
    id=@id
;

INSERT INTO quest_poi (
    QuestID,
    id,
    ObjectiveIndex,
    MapID,
    WorldMapAreaId,
    Floor,
    Priority,
    Flags,
    VerifiedBuild
)
VALUES (
    @QuestID,
    @id,
    @ObjectiveIndex,
    @MapID,
    @WorldMapAreaId,
    @Floor,
    @Priority,
    @Flags,
    @VerifiedBuild
);