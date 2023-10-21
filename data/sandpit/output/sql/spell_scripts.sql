SET
@id := {id},
@effIndex := {effindex},
@delay := {delay},
@command := {command},
@datalong := {datalong},
@datalong2 := {datalong2},
@dataint := {dataint},
@x := {x},
@y := {y},
@z := {z},
@o := {o};

DELETE FROM spell_scripts WHERE
;

INSERT INTO spell_scripts (
    id,
    effIndex,
    delay,
    command,
    datalong,
    datalong2,
    dataint,
    x,
    y,
    z,
    o
)
VALUES (
    @id,
    @effIndex,
    @delay,
    @command,
    @datalong,
    @datalong2,
    @dataint,
    @x,
    @y,
    @z,
    @o
);