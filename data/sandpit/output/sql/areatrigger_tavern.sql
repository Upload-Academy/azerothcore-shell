SET
@id := {id},
@name := {name},
@faction := {faction};

DELETE FROM areatrigger_tavern WHERE
    id=@id
;

INSERT INTO areatrigger_tavern (
    id,
    name,
    faction
)
VALUES (
    @id,
    @name,
    @faction
);