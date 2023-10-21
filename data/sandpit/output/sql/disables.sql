SET
@sourceType := {sourcetype},
@entry := {entry},
@flags := {flags},
@params_0 := {params_0},
@params_1 := {params_1},
@comment := {comment};

DELETE FROM disables WHERE
    sourceType=@sourceType AND
    entry=@entry
;

INSERT INTO disables (
    sourceType,
    entry,
    flags,
    params_0,
    params_1,
    comment
)
VALUES (
    @sourceType,
    @entry,
    @flags,
    @params_0,
    @params_1,
    @comment
);