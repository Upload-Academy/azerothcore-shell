SET
@guid := {guid},
@pool_entry := {pool_entry},
@chance := {chance},
@description := {description};

DELETE FROM pool_creature WHERE
    guid=@guid
;

INSERT INTO pool_creature (
    guid,
    pool_entry,
    chance,
    description
)
VALUES (
    @guid,
    @pool_entry,
    @chance,
    @description
);