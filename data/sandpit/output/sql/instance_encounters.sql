SET
@entry := {entry},
@creditType := {credittype},
@creditEntry := {creditentry},
@lastEncounterDungeon := {lastencounterdungeon},
@comment := {comment};

DELETE FROM instance_encounters WHERE
    entry=@entry
;

INSERT INTO instance_encounters (
    entry,
    creditType,
    creditEntry,
    lastEncounterDungeon,
    comment
)
VALUES (
    @entry,
    @creditType,
    @creditEntry,
    @lastEncounterDungeon,
    @comment
);