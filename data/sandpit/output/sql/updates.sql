SET
@name := {name},
@hash := {hash},
@state := {state},
@timestamp := {timestamp},
@speed := {speed};

DELETE FROM updates WHERE
    name=@name
;

INSERT INTO updates (
    name,
    hash,
    state,
    timestamp,
    speed
)
VALUES (
    @name,
    @hash,
    @state,
    @timestamp,
    @speed
);