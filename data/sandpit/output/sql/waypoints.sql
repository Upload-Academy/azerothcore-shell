SET
@entry := {entry},
@pointid := {pointid},
@position_x := {position_x},
@position_y := {position_y},
@position_z := {position_z},
@orientation := {orientation},
@delay := {delay},
@point_comment := {point_comment};

DELETE FROM waypoints WHERE
    entry=@entry AND
    pointid=@pointid
;

INSERT INTO waypoints (
    entry,
    pointid,
    position_x,
    position_y,
    position_z,
    orientation,
    delay,
    point_comment
)
VALUES (
    @entry,
    @pointid,
    @position_x,
    @position_y,
    @position_z,
    @orientation,
    @delay,
    @point_comment
);