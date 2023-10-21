SET
@id := {id},
@quest := {quest};

DELETE FROM areatrigger_involvedrelation WHERE
    id=@id
;

INSERT INTO areatrigger_involvedrelation (
    id,
    quest
)
VALUES (
    @id,
    @quest
);