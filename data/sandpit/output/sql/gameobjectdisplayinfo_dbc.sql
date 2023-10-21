SET
@ID := {id},
@ModelName := {modelname},
@Sound_1 := {sound_1},
@Sound_2 := {sound_2},
@Sound_3 := {sound_3},
@Sound_4 := {sound_4},
@Sound_5 := {sound_5},
@Sound_6 := {sound_6},
@Sound_7 := {sound_7},
@Sound_8 := {sound_8},
@Sound_9 := {sound_9},
@Sound_10 := {sound_10},
@GeoBoxMinX := {geoboxminx},
@GeoBoxMinY := {geoboxminy},
@GeoBoxMinZ := {geoboxminz},
@GeoBoxMaxX := {geoboxmaxx},
@GeoBoxMaxY := {geoboxmaxy},
@GeoBoxMaxZ := {geoboxmaxz},
@ObjectEffectPackageID := {objecteffectpackageid};

DELETE FROM gameobjectdisplayinfo_dbc WHERE
    ID=@ID
;

INSERT INTO gameobjectdisplayinfo_dbc (
    ID,
    ModelName,
    Sound_1,
    Sound_2,
    Sound_3,
    Sound_4,
    Sound_5,
    Sound_6,
    Sound_7,
    Sound_8,
    Sound_9,
    Sound_10,
    GeoBoxMinX,
    GeoBoxMinY,
    GeoBoxMinZ,
    GeoBoxMaxX,
    GeoBoxMaxY,
    GeoBoxMaxZ,
    ObjectEffectPackageID
)
VALUES (
    @ID,
    @ModelName,
    @Sound_1,
    @Sound_2,
    @Sound_3,
    @Sound_4,
    @Sound_5,
    @Sound_6,
    @Sound_7,
    @Sound_8,
    @Sound_9,
    @Sound_10,
    @GeoBoxMinX,
    @GeoBoxMinY,
    @GeoBoxMinZ,
    @GeoBoxMaxX,
    @GeoBoxMaxY,
    @GeoBoxMaxZ,
    @ObjectEffectPackageID
);