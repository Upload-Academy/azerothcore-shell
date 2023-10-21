SET
@CreatureEntry := {creatureentry},
@Idx := {idx},
@ItemId := {itemid},
@VerifiedBuild := {verifiedbuild};

DELETE FROM creature_questitem WHERE
    CreatureEntry=@CreatureEntry AND
    Idx=@Idx
;

INSERT INTO creature_questitem (
    CreatureEntry,
    Idx,
    ItemId,
    VerifiedBuild
)
VALUES (
    @CreatureEntry,
    @Idx,
    @ItemId,
    @VerifiedBuild
);