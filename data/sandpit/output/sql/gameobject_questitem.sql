SET
@GameObjectEntry := {gameobjectentry},
@Idx := {idx},
@ItemId := {itemid},
@VerifiedBuild := {verifiedbuild};

DELETE FROM gameobject_questitem WHERE
    GameObjectEntry=@GameObjectEntry AND
    Idx=@Idx
;

INSERT INTO gameobject_questitem (
    GameObjectEntry,
    Idx,
    ItemId,
    VerifiedBuild
)
VALUES (
    @GameObjectEntry,
    @Idx,
    @ItemId,
    @VerifiedBuild
);