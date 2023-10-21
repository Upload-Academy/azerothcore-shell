SET
@Level := {level},
@Experience := {experience};

DELETE FROM player_xp_for_level WHERE
    Level=@Level
;

INSERT INTO player_xp_for_level (
    Level,
    Experience
)
VALUES (
    @Level,
    @Experience
);