SET
@spell_id := {spell_id},
@attributes := {attributes};

DELETE FROM spell_custom_attr WHERE
    spell_id=@spell_id
;

INSERT INTO spell_custom_attr (
    spell_id,
    attributes
)
VALUES (
    @spell_id,
    @attributes
);