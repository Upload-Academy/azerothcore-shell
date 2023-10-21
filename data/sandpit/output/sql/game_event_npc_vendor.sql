SET
@eventEntry := {evententry},
@guid := {guid},
@slot := {slot},
@item := {item},
@maxcount := {maxcount},
@incrtime := {incrtime},
@ExtendedCost := {extendedcost};

DELETE FROM game_event_npc_vendor WHERE
    guid=@guid AND
    item=@item
;

INSERT INTO game_event_npc_vendor (
    eventEntry,
    guid,
    slot,
    item,
    maxcount,
    incrtime,
    ExtendedCost
)
VALUES (
    @eventEntry,
    @guid,
    @slot,
    @item,
    @maxcount,
    @incrtime,
    @ExtendedCost
);