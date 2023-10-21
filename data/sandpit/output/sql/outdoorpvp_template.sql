SET
@TypeId := {typeid},
@ScriptName := {scriptname},
@comment := {comment};

DELETE FROM outdoorpvp_template WHERE
    TypeId=@TypeId
;

INSERT INTO outdoorpvp_template (
    TypeId,
    ScriptName,
    comment
)
VALUES (
    @TypeId,
    @ScriptName,
    @comment
);