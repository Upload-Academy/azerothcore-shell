SET
@dungeonId := {dungeonid},
@name := {name},
@position_x := {position_x},
@position_y := {position_y},
@position_z := {position_z},
@orientation := {orientation},
@VerifiedBuild := {verifiedbuild};

DELETE FROM lfg_dungeon_template WHERE
    dungeonId=@dungeonId
;

INSERT INTO lfg_dungeon_template (
    dungeonId,
    name,
    position_x,
    position_y,
    position_z,
    orientation,
    VerifiedBuild
)
VALUES (
    @dungeonId,
    @name,
    @position_x,
    @position_y,
    @position_z,
    @orientation,
    @VerifiedBuild
);