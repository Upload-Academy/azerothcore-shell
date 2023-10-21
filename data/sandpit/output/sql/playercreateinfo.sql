SET
@race := {race},
@class := {class},
@map := {map},
@zone := {zone},
@position_x := {position_x},
@position_y := {position_y},
@position_z := {position_z},
@orientation := {orientation};

DELETE FROM playercreateinfo WHERE
    race=@race AND
    class=@class
;

INSERT INTO playercreateinfo (
    race,
    class,
    map,
    zone,
    position_x,
    position_y,
    position_z,
    orientation
)
VALUES (
    @race,
    @class,
    @map,
    @zone,
    @position_x,
    @position_y,
    @position_z,
    @orientation
);