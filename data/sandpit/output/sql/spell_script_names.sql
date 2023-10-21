SET
@spell_id := {spell_id},
@ScriptName := {scriptname};

DELETE FROM spell_script_names WHERE
    spell_id=@spell_id AND
    ScriptName=@ScriptName
;

INSERT INTO spell_script_names (
    spell_id,
    ScriptName
)
VALUES (
    @spell_id,
    @ScriptName
);