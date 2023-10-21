SET
@ID := {id},
@EffectIndex := {effectindex},
@MapID := {mapid},
@PositionX := {positionx},
@PositionY := {positiony},
@PositionZ := {positionz},
@Orientation := {orientation},
@VerifiedBuild := {verifiedbuild};

DELETE FROM spell_target_position WHERE
    ID=@ID AND
    EffectIndex=@EffectIndex
;

INSERT INTO spell_target_position (
    ID,
    EffectIndex,
    MapID,
    PositionX,
    PositionY,
    PositionZ,
    Orientation,
    VerifiedBuild
)
VALUES (
    @ID,
    @EffectIndex,
    @MapID,
    @PositionX,
    @PositionY,
    @PositionZ,
    @Orientation,
    @VerifiedBuild
);