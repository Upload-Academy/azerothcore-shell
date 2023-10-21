SET
@ID := {id},
@GhostZone := {ghostzone},
@Faction := {faction},
@Comment := {comment};

DELETE FROM graveyard_zone WHERE
    ID=@ID AND
    GhostZone=@GhostZone
;

INSERT INTO graveyard_zone (
    ID,
    GhostZone,
    Faction,
    Comment
)
VALUES (
    @ID,
    @GhostZone,
    @Faction,
    @Comment
);