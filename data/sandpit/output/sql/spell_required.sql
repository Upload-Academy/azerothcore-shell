SET
@spell_id := {spell_id},
@req_spell := {req_spell};

DELETE FROM spell_required WHERE
    spell_id=@spell_id AND
    req_spell=@req_spell
;

INSERT INTO spell_required (
    spell_id,
    req_spell
)
VALUES (
    @spell_id,
    @req_spell
);