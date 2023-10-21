SET
@criteria_id := {criteria_id},
@type := {type},
@value1 := {value1},
@value2 := {value2},
@ScriptName := {scriptname};

DELETE FROM achievement_criteria_data WHERE
    criteria_id=@criteria_id AND
    type=@type
;

INSERT INTO achievement_criteria_data (
    criteria_id,
    type,
    value1,
    value2,
    ScriptName
)
VALUES (
    @criteria_id,
    @type,
    @value1,
    @value2,
    @ScriptName
);