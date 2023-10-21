SET
@entry := {entry},
@max_limit := {max_limit},
@description := {description};

DELETE FROM pool_template WHERE
    entry=@entry
;

INSERT INTO pool_template (
    entry,
    max_limit,
    description
)
VALUES (
    @entry,
    @max_limit,
    @description
);