SET
@faction := {faction},
@faction1 := {faction1},
@rate_1 := {rate_1},
@rank_1 := {rank_1},
@faction2 := {faction2},
@rate_2 := {rate_2},
@rank_2 := {rank_2},
@faction3 := {faction3},
@rate_3 := {rate_3},
@rank_3 := {rank_3},
@faction4 := {faction4},
@rate_4 := {rate_4},
@rank_4 := {rank_4};

DELETE FROM reputation_spillover_template WHERE
    faction=@faction
;

INSERT INTO reputation_spillover_template (
    faction,
    faction1,
    rate_1,
    rank_1,
    faction2,
    rate_2,
    rank_2,
    faction3,
    rate_3,
    rank_3,
    faction4,
    rate_4,
    rank_4
)
VALUES (
    @faction,
    @faction1,
    @rate_1,
    @rank_1,
    @faction2,
    @rate_2,
    @rank_2,
    @faction3,
    @rate_3,
    @rank_3,
    @faction4,
    @rate_4,
    @rank_4
);