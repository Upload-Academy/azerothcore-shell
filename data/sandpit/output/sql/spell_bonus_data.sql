SET
@entry := {entry},
@direct_bonus := {direct_bonus},
@dot_bonus := {dot_bonus},
@ap_bonus := {ap_bonus},
@ap_dot_bonus := {ap_dot_bonus},
@comments := {comments};

DELETE FROM spell_bonus_data WHERE
    entry=@entry
;

INSERT INTO spell_bonus_data (
    entry,
    direct_bonus,
    dot_bonus,
    ap_bonus,
    ap_dot_bonus,
    comments
)
VALUES (
    @entry,
    @direct_bonus,
    @dot_bonus,
    @ap_bonus,
    @ap_dot_bonus,
    @comments
);