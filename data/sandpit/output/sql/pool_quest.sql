SET
@entry := {entry},
@pool_entry := {pool_entry},
@description := {description};

DELETE FROM pool_quest WHERE
    entry=@entry
;

INSERT INTO pool_quest (
    entry,
    pool_entry,
    description
)
VALUES (
    @entry,
    @pool_entry,
    @description
);