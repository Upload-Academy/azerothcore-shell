SET
@entry := {entry},
@path_id := {path_id},
@mount := {mount},
@bytes1 := {bytes1},
@bytes2 := {bytes2},
@emote := {emote},
@visibilityDistanceType := {visibilitydistancetype},
@auras := {auras};

DELETE FROM creature_template_addon WHERE
    entry=@entry
;

INSERT INTO creature_template_addon (
    entry,
    path_id,
    mount,
    bytes1,
    bytes2,
    emote,
    visibilityDistanceType,
    auras
)
VALUES (
    @entry,
    @path_id,
    @mount,
    @bytes1,
    @bytes2,
    @emote,
    @visibilityDistanceType,
    @auras
);