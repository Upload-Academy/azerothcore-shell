SET
@entry := {entry},
@pointid := {pointid},
@location_x := {location_x},
@location_y := {location_y},
@location_z := {location_z},
@waittime := {waittime},
@point_comment := {point_comment};

DELETE FROM script_waypoint WHERE
    entry=@entry AND
    pointid=@pointid
;

INSERT INTO script_waypoint (
    entry,
    pointid,
    location_x,
    location_y,
    location_z,
    waittime,
    point_comment
)
VALUES (
    @entry,
    @pointid,
    @location_x,
    @location_y,
    @location_z,
    @waittime,
    @point_comment
);