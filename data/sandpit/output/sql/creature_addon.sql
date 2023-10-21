SET
@guid := {guid},
@path_id := {path_id},
@mount := {mount},
@bytes1 := {bytes1},
@bytes2 := {bytes2},
@emote := {emote},
@visibilityDistanceType := {visibilitydistancetype},
@auras := {auras};

DELETE FROM creature_addon WHERE
    guid=@guid
;

INSERT INTO creature_addon (
    guid,
    path_id,
    mount,
    bytes1,
    bytes2,
    emote,
    visibilityDistanceType,
    auras
)
VALUES (
    @guid,
    @path_id,
    @mount,
    @bytes1,
    @bytes2,
    @emote,
    @visibilityDistanceType,
    @auras
);