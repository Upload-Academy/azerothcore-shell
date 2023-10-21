SET
@spell_trigger := {spell_trigger},
@spell_effect := {spell_effect},
@type := {type},
@comment := {comment};

DELETE FROM spell_linked_spell WHERE
    spell_trigger=@spell_trigger AND
    spell_effect=@spell_effect AND
    type=@type
;

INSERT INTO spell_linked_spell (
    spell_trigger,
    spell_effect,
    type,
    comment
)
VALUES (
    @spell_trigger,
    @spell_effect,
    @type,
    @comment
);