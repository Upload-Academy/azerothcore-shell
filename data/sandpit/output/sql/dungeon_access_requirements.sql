SET
@dungeon_access_id := {dungeon_access_id},
@requirement_type := {requirement_type},
@requirement_id := {requirement_id},
@requirement_note := {requirement_note},
@faction := {faction},
@priority := {priority},
@leader_only := {leader_only},
@comment := {comment};

DELETE FROM dungeon_access_requirements WHERE
    dungeon_access_id=@dungeon_access_id AND
    requirement_type=@requirement_type AND
    requirement_id=@requirement_id
;

INSERT INTO dungeon_access_requirements (
    dungeon_access_id,
    requirement_type,
    requirement_id,
    requirement_note,
    faction,
    priority,
    leader_only,
    comment
)
VALUES (
    @dungeon_access_id,
    @requirement_type,
    @requirement_id,
    @requirement_note,
    @faction,
    @priority,
    @leader_only,
    @comment
);