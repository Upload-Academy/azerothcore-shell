SET
@entry := {entry},
@ScriptName := {scriptname};

DELETE FROM areatrigger_scripts WHERE
    entry=@entry
;

INSERT INTO areatrigger_scripts (
    entry,
    ScriptName
)
VALUES (
    @entry,
    @ScriptName
);