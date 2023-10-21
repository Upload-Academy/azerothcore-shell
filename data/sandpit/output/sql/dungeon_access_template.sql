SET
@id := {id},
@map_id := {map_id},
@difficulty := {difficulty},
@min_level := {min_level},
@max_level := {max_level},
@min_avg_item_level := {min_avg_item_level},
@comment := {comment};

DELETE FROM dungeon_access_template WHERE
    id=@id
;

INSERT INTO dungeon_access_template (
    id,
    map_id,
    difficulty,
    min_level,
    max_level,
    min_avg_item_level,
    comment
)
VALUES (
    @id,
    @map_id,
    @difficulty,
    @min_level,
    @max_level,
    @min_avg_item_level,
    @comment
);