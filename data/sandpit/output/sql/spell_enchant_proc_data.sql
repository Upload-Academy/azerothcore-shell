SET
@entry := {entry},
@customChance := {customchance},
@PPMChance := {ppmchance},
@procEx := {procex},
@attributeMask := {attributemask};

DELETE FROM spell_enchant_proc_data WHERE
    entry=@entry
;

INSERT INTO spell_enchant_proc_data (
    entry,
    customChance,
    PPMChance,
    procEx,
    attributeMask
)
VALUES (
    @entry,
    @customChance,
    @PPMChance,
    @procEx,
    @attributeMask
);