SET
@entry := {entry},
@skill := {skill};

DELETE FROM skill_fishing_base_level WHERE
    entry=@entry
;

INSERT INTO skill_fishing_base_level (
    entry,
    skill
)
VALUES (
    @entry,
    @skill
);