SET
@spell := {spell},
@area := {area},
@quest_start := {quest_start},
@quest_end := {quest_end},
@aura_spell := {aura_spell},
@racemask := {racemask},
@gender := {gender},
@autocast := {autocast},
@quest_start_status := {quest_start_status},
@quest_end_status := {quest_end_status};

DELETE FROM spell_area WHERE
    spell=@spell AND
    area=@area AND
    quest_start=@quest_start AND
    aura_spell=@aura_spell AND
    racemask=@racemask AND
    gender=@gender
;

INSERT INTO spell_area (
    spell,
    area,
    quest_start,
    quest_end,
    aura_spell,
    racemask,
    gender,
    autocast,
    quest_start_status,
    quest_end_status
)
VALUES (
    @spell,
    @area,
    @quest_start,
    @quest_end,
    @aura_spell,
    @racemask,
    @gender,
    @autocast,
    @quest_start_status,
    @quest_end_status
);