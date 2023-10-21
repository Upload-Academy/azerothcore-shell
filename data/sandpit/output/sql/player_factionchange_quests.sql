SET
@alliance_id := {alliance_id},
@horde_id := {horde_id};

DELETE FROM player_factionchange_quests WHERE
    alliance_id=@alliance_id AND
    horde_id=@horde_id
;

INSERT INTO player_factionchange_quests (
    alliance_id,
    horde_id
)
VALUES (
    @alliance_id,
    @horde_id
);