SET
@guid := {guid},
@entry := {entry},
@name := {name},
@ScriptName := {scriptname};

DELETE FROM transports WHERE
    guid=@guid
;

INSERT INTO transports (
    guid,
    entry,
    name,
    ScriptName
)
VALUES (
    @guid,
    @entry,
    @name,
    @ScriptName
);