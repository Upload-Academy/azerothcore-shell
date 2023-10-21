SET
@first_spell_id := {first_spell_id},
@spell_id := {spell_id},
@rank := {rank};

DELETE FROM spell_ranks WHERE
    first_spell_id=@first_spell_id AND
    rank=@rank
;

INSERT INTO spell_ranks (
    first_spell_id,
    spell_id,
    rank
)
VALUES (
    @first_spell_id,
    @spell_id,
    @rank
);