SET
@ID := {id},
@PositionX := {positionx},
@PositionY := {positiony},
@Icon := {icon},
@Flags := {flags},
@Importance := {importance},
@Name := {name};

DELETE FROM points_of_interest WHERE
    ID=@ID
;

INSERT INTO points_of_interest (
    ID,
    PositionX,
    PositionY,
    Icon,
    Flags,
    Importance,
    Name
)
VALUES (
    @ID,
    @PositionX,
    @PositionY,
    @Icon,
    @Flags,
    @Importance,
    @Name
);