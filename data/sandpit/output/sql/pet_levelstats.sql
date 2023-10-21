SET
@creature_entry := {creature_entry},
@level := {level},
@hp := {hp},
@mana := {mana},
@armor := {armor},
@str := {str},
@agi := {agi},
@sta := {sta},
@inte := {inte},
@spi := {spi},
@min_dmg := {min_dmg},
@max_dmg := {max_dmg};

DELETE FROM pet_levelstats WHERE
    creature_entry=@creature_entry AND
    level=@level
;

INSERT INTO pet_levelstats (
    creature_entry,
    level,
    hp,
    mana,
    armor,
    str,
    agi,
    sta,
    inte,
    spi,
    min_dmg,
    max_dmg
)
VALUES (
    @creature_entry,
    @level,
    @hp,
    @mana,
    @armor,
    @str,
    @agi,
    @sta,
    @inte,
    @spi,
    @min_dmg,
    @max_dmg
);