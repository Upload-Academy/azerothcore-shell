SET
@Level := {level},
@Money0 := {money0},
@Money1 := {money1},
@Money2 := {money2},
@Money3 := {money3},
@Money4 := {money4},
@Money5 := {money5},
@Money6 := {money6},
@Money7 := {money7},
@Money8 := {money8},
@Money9 := {money9};

DELETE FROM quest_money_reward WHERE
    Level=@Level
;

INSERT INTO quest_money_reward (
    Level,
    Money0,
    Money1,
    Money2,
    Money3,
    Money4,
    Money5,
    Money6,
    Money7,
    Money8,
    Money9
)
VALUES (
    @Level,
    @Money0,
    @Money1,
    @Money2,
    @Money3,
    @Money4,
    @Money5,
    @Money6,
    @Money7,
    @Money8,
    @Money9
);