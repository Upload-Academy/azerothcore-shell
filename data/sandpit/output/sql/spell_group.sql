SET
@id := {id},
@spell_id := {spell_id},
@special_flag := {special_flag};

DELETE FROM spell_group WHERE
    id=@id AND
    spell_id=@spell_id
;

INSERT INTO spell_group (
    id,
    spell_id,
    special_flag
)
VALUES (
    @id,
    @spell_id,
    @special_flag
);