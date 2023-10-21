SET
@ID := {id},
@Radius := {radius},
@RadiusPerLevel := {radiusperlevel},
@RadiusMax := {radiusmax};

DELETE FROM spellradius_dbc WHERE
    ID=@ID
;

INSERT INTO spellradius_dbc (
    ID,
    Radius,
    RadiusPerLevel,
    RadiusMax
)
VALUES (
    @ID,
    @Radius,
    @RadiusPerLevel,
    @RadiusMax
);