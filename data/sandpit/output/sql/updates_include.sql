SET
@path := {path},
@state := {state};

DELETE FROM updates_include WHERE
    path=@path
;

INSERT INTO updates_include (
    path,
    state
)
VALUES (
    @path,
    @state
);