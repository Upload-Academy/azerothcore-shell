SET
@id := {id},
@delay := {delay},
@command := {command},
@datalong := {datalong},
@datalong2 := {datalong2},
@dataint := {dataint},
@x := {x},
@y := {y},
@z := {z},
@o := {o};

DELETE FROM event_scripts WHERE
;

INSERT INTO event_scripts (
    id,
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