SET
@ID := {id},
@Name := {name},
@target_map := {target_map},
@target_position_x := {target_position_x},
@target_position_y := {target_position_y},
@target_position_z := {target_position_z},
@target_orientation := {target_orientation};

DELETE FROM areatrigger_teleport WHERE
    ID=@ID
;

INSERT INTO areatrigger_teleport (
    ID,
    Name,
    target_map,
    target_position_x,
    target_position_y,
    target_position_z,
    target_orientation
)
VALUES (
    @ID,
    @Name,
    @target_map,
    @target_position_x,
    @target_position_y,
    @target_position_z,
    @target_orientation
);