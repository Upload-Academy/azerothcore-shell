SET
@entry := {entry},
@pctMod := {pctmod};

DELETE FROM spell_mixology WHERE
    entry=@entry
;

INSERT INTO spell_mixology (
    entry,
    pctMod
)
VALUES (
    @entry,
    @pctMod
);