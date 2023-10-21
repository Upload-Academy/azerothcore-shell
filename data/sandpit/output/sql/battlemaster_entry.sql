SET
@entry := {entry},
@bg_template := {bg_template};

DELETE FROM battlemaster_entry WHERE
    entry=@entry
;

INSERT INTO battlemaster_entry (
    entry,
    bg_template
)
VALUES (
    @entry,
    @bg_template
);