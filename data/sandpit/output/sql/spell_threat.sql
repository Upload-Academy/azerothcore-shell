SET
@entry := {entry},
@flatMod := {flatmod},
@pctMod := {pctmod},
@apPctMod := {appctmod};

DELETE FROM spell_threat WHERE
    entry=@entry
;

INSERT INTO spell_threat (
    entry,
    flatMod,
    pctMod,
    apPctMod
)
VALUES (
    @entry,
    @flatMod,
    @pctMod,
    @apPctMod
);