SET
@guid := {guid},
@pool_entry := {pool_entry},
@chance := {chance},
@description := {description};

DELETE FROM pool_gameobject WHERE
    guid=@guid
;

INSERT INTO pool_gameobject (
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