SET
@id := {id},
@point := {point},
@position_x := {position_x},
@position_y := {position_y},
@position_z := {position_z},
@orientation := {orientation},
@delay := {delay},
@move_type := {move_type},
@action := {action},
@action_chance := {action_chance},
@wpguid := {wpguid};

DELETE FROM waypoint_data WHERE
    id=@id AND
    point=@point
;

INSERT INTO waypoint_data (
    id,
    point,
    position_x,
    position_y,
    position_z,
    orientation,
    delay,
    move_type,
    action,
    action_chance,
    wpguid
)
VALUES (
    @id,
    @point,
    @position_x,
    @position_y,
    @position_z,
    @orientation,
    @delay,
    @move_type,
    @action,
    @action_chance,
    @wpguid
);