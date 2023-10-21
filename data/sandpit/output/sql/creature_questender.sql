SET
@id := {id},
@quest := {quest};

DELETE FROM creature_questender WHERE
    id=@id AND
    quest=@quest
;

INSERT INTO creature_questender (
    id,
    quest
)
VALUES (
    @id,
    @quest
);