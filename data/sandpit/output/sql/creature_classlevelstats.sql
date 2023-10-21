SET
@level := {level},
@class := {class},
@basehp0 := {basehp0},
@basehp1 := {basehp1},
@basehp2 := {basehp2},
@basemana := {basemana},
@basearmor := {basearmor},
@attackpower := {attackpower},
@rangedattackpower := {rangedattackpower},
@damage_base := {damage_base},
@damage_exp1 := {damage_exp1},
@damage_exp2 := {damage_exp2},
@comment := {comment};

DELETE FROM creature_classlevelstats WHERE
    level=@level AND
    class=@class
;

INSERT INTO creature_classlevelstats (
    level,
    class,
    basehp0,
    basehp1,
    basehp2,
    basemana,
    basearmor,
    attackpower,
    rangedattackpower,
    damage_base,
    damage_exp1,
    damage_exp2,
    comment
)
VALUES (
    @level,
    @class,
    @basehp0,
    @basehp1,
    @basehp2,
    @basemana,
    @basearmor,
    @attackpower,
    @rangedattackpower,
    @damage_base,
    @damage_exp1,
    @damage_exp2,
    @comment
);