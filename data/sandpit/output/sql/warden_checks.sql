SET
@id := {id},
@type := {type},
@data := {data},
@str := {str},
@address := {address},
@length := {length},
@result := {result},
@comment := {comment};

DELETE FROM warden_checks WHERE
    id=@id
;

INSERT INTO warden_checks (
    id,
    type,
    data,
    str,
    address,
    length,
    result,
    comment
)
VALUES (
    @id,
    @type,
    @data,
    @str,
    @address,
    @length,
    @result,
    @comment
);