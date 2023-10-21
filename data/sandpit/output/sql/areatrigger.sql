SET
@entry := {entry},
@map := {map},
@x := {x},
@y := {y},
@z := {z},
@radius := {radius},
@length := {length},
@width := {width},
@height := {height},
@orientation := {orientation};

DELETE FROM areatrigger WHERE
    entry=@entry
;

INSERT INTO areatrigger (
    entry,
    map,
    x,
    y,
    z,
    radius,
    length,
    width,
    height,
    orientation
)
VALUES (
    @entry,
    @map,
    @x,
    @y,
    @z,
    @radius,
    @length,
    @width,
    @height,
    @orientation
);