SET
@ID := {id},
@Map := {map},
@x := {x},
@y := {y},
@z := {z},
@Comment := {comment};

DELETE FROM game_graveyard WHERE
    ID=@ID
;

INSERT INTO game_graveyard (
    ID,
    Map,
    x,
    y,
    z,
    Comment
)
VALUES (
    @ID,
    @Map,
    @x,
    @y,
    @z,
    @Comment
);