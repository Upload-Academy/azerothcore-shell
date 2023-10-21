SET
@alliance_id := {alliance_id},
@horde_id := {horde_id};

DELETE FROM player_factionchange_achievement WHERE
    alliance_id=@alliance_id AND
    horde_id=@horde_id
;

INSERT INTO player_factionchange_achievement (
    alliance_id,
    horde_id
)
VALUES (
    @alliance_id,
    @horde_id
);