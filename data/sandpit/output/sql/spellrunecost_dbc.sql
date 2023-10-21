SET
@ID := {id},
@Blood := {blood},
@Unholy := {unholy},
@Frost := {frost},
@RunicPower := {runicpower};

DELETE FROM spellrunecost_dbc WHERE
    ID=@ID
;

INSERT INTO spellrunecost_dbc (
    ID,
    Blood,
    Unholy,
    Frost,
    RunicPower
)
VALUES (
    @ID,
    @Blood,
    @Unholy,
    @Frost,
    @RunicPower
);