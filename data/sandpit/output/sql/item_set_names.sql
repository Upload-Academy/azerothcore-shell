SET
@entry := {entry},
@name := {name},
@InventoryType := {inventorytype},
@VerifiedBuild := {verifiedbuild};

DELETE FROM item_set_names WHERE
    entry=@entry
;

INSERT INTO item_set_names (
    entry,
    name,
    InventoryType,
    VerifiedBuild
)
VALUES (
    @entry,
    @name,
    @InventoryType,
    @VerifiedBuild
);