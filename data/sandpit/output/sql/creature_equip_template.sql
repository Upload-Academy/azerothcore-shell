SET
@CreatureID := {creatureid},
@ID := {id},
@ItemID1 := {itemid1},
@ItemID2 := {itemid2},
@ItemID3 := {itemid3},
@VerifiedBuild := {verifiedbuild};

DELETE FROM creature_equip_template WHERE
    CreatureID=@CreatureID AND
    ID=@ID
;

INSERT INTO creature_equip_template (
    CreatureID,
    ID,
    ItemID1,
    ItemID2,
    ItemID3,
    VerifiedBuild
)
VALUES (
    @CreatureID,
    @ID,
    @ItemID1,
    @ItemID2,
    @ItemID3,
    @VerifiedBuild
);