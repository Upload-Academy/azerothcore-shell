SET
@name := {name},
@security := {security},
@help := {help};

DELETE FROM command WHERE
    name=@name
;

INSERT INTO command (
    name,
    security,
    help
)
VALUES (
    @name,
    @security,
    @help
);