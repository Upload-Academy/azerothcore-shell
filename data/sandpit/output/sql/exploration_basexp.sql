SET
@level := {level},
@basexp := {basexp};

DELETE FROM exploration_basexp WHERE
    level=@level
;

INSERT INTO exploration_basexp (
    level,
    basexp
)
VALUES (
    @level,
    @basexp
);