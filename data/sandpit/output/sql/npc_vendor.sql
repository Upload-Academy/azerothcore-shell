SET
@entry := {entry},
@slot := {slot},
@item := {item},
@maxcount := {maxcount},
@incrtime := {incrtime},
@ExtendedCost := {extendedcost},
@VerifiedBuild := {verifiedbuild};

DELETE FROM npc_vendor WHERE
    entry=@entry AND
    item=@item AND
    ExtendedCost=@ExtendedCost
;

INSERT INTO npc_vendor (
    entry,
    slot,
    item,
    maxcount,
    incrtime,
    ExtendedCost,
    VerifiedBuild
)
VALUES (
    @entry,
    @slot,
    @item,
    @maxcount,
    @incrtime,
    @ExtendedCost,
    @VerifiedBuild
);