SET
@ID := {id},
@HonorPoints := {honorpoints},
@ArenaPoints := {arenapoints},
@ArenaBracket := {arenabracket},
@ItemID_1 := {itemid_1},
@ItemID_2 := {itemid_2},
@ItemID_3 := {itemid_3},
@ItemID_4 := {itemid_4},
@ItemID_5 := {itemid_5},
@ItemCount_1 := {itemcount_1},
@ItemCount_2 := {itemcount_2},
@ItemCount_3 := {itemcount_3},
@ItemCount_4 := {itemcount_4},
@ItemCount_5 := {itemcount_5},
@RequiredArenaRating := {requiredarenarating},
@ItemPurchaseGroup := {itempurchasegroup};

DELETE FROM itemextendedcost_dbc WHERE
    ID=@ID
;

INSERT INTO itemextendedcost_dbc (
    ID,
    HonorPoints,
    ArenaPoints,
    ArenaBracket,
    ItemID_1,
    ItemID_2,
    ItemID_3,
    ItemID_4,
    ItemID_5,
    ItemCount_1,
    ItemCount_2,
    ItemCount_3,
    ItemCount_4,
    ItemCount_5,
    RequiredArenaRating,
    ItemPurchaseGroup
)
VALUES (
    @ID,
    @HonorPoints,
    @ArenaPoints,
    @ArenaBracket,
    @ItemID_1,
    @ItemID_2,
    @ItemID_3,
    @ItemID_4,
    @ItemID_5,
    @ItemCount_1,
    @ItemCount_2,
    @ItemCount_3,
    @ItemCount_4,
    @ItemCount_5,
    @RequiredArenaRating,
    @ItemPurchaseGroup
);