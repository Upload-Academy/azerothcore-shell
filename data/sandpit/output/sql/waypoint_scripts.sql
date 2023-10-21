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
@o := {o},
@guid := {guid};

DELETE FROM waypoint_scripts WHERE
    guid=@guid
;

INSERT INTO waypoint_scripts (
    id,
    delay,
    command,
    datalong,
    datalong2,
    dataint,
    x,
    y,
    z,
    o,
    guid
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
    @o,
    @guid
);