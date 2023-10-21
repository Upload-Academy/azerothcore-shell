SET
@entry := {entry},
@faction := {faction},
@flags := {flags},
@mingold := {mingold},
@maxgold := {maxgold},
@artkit0 := {artkit0},
@artkit1 := {artkit1},
@artkit2 := {artkit2},
@artkit3 := {artkit3};

DELETE FROM gameobject_template_addon WHERE
    entry=@entry
;

INSERT INTO gameobject_template_addon (
    entry,
    faction,
    flags,
    mingold,
    maxgold,
    artkit0,
    artkit1,
    artkit2,
    artkit3
)
VALUES (
    @entry,
    @faction,
    @flags,
    @mingold,
    @maxgold,
    @artkit0,
    @artkit1,
    @artkit2,
    @artkit3
);