
SET
@Entry := {Entry},
@Map := {Map},
@X := {X},
@Y := {Y},
@Z := {Z},
@Orientation := {Orientation};

DELETE FROM `creature` WHERE `id1`=@Entry;
INSERT INTO `creature` (
    `id1`,
    `map`,
    `position_x`,
    `position_y`,
    `position_z`,
    `orientation`
)
VALUES (
    @Entry,
    @Map,
    @X,
    @Y,
    @Z,
    @Orientation
);
