SET
@pool_id := {pool_id},
@mother_pool := {mother_pool},
@chance := {chance},
@description := {description};

DELETE FROM pool_pool WHERE
    pool_id=@pool_id
;

INSERT INTO pool_pool (
    pool_id,
    mother_pool,
    chance,
    description
)
VALUES (
    @pool_id,
    @mother_pool,
    @chance,
    @description
);