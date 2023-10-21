SET
@id := {id},
@position_x := {position_x},
@position_y := {position_y},
@position_z := {position_z},
@orientation := {orientation},
@map := {map},
@name := {name};

DELETE FROM game_tele WHERE
    id=@id
;

INSERT INTO game_tele (
    id,
    position_x,
    position_y,
    position_z,
    orientation,
    map,
    name
)
VALUES (
    @id,
    @position_x,
    @position_y,
    @position_z,
    @orientation,
    @map,
    @name
);