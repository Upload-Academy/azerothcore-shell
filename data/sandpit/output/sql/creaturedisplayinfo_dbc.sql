SET
@ID := {id},
@ModelID := {modelid},
@SoundID := {soundid},
@ExtendedDisplayInfoID := {extendeddisplayinfoid},
@CreatureModelScale := {creaturemodelscale},
@CreatureModelAlpha := {creaturemodelalpha},
@TextureVariation_1 := {texturevariation_1},
@TextureVariation_2 := {texturevariation_2},
@TextureVariation_3 := {texturevariation_3},
@PortraitTextureName := {portraittexturename},
@BloodLevel := {bloodlevel},
@BloodID := {bloodid},
@NPCSoundID := {npcsoundid},
@ParticleColorID := {particlecolorid},
@CreatureGeosetData := {creaturegeosetdata},
@ObjectEffectPackageID := {objecteffectpackageid};

DELETE FROM creaturedisplayinfo_dbc WHERE
    ID=@ID
;

INSERT INTO creaturedisplayinfo_dbc (
    ID,
    ModelID,
    SoundID,
    ExtendedDisplayInfoID,
    CreatureModelScale,
    CreatureModelAlpha,
    TextureVariation_1,
    TextureVariation_2,
    TextureVariation_3,
    PortraitTextureName,
    BloodLevel,
    BloodID,
    NPCSoundID,
    ParticleColorID,
    CreatureGeosetData,
    ObjectEffectPackageID
)
VALUES (
    @ID,
    @ModelID,
    @SoundID,
    @ExtendedDisplayInfoID,
    @CreatureModelScale,
    @CreatureModelAlpha,
    @TextureVariation_1,
    @TextureVariation_2,
    @TextureVariation_3,
    @PortraitTextureName,
    @BloodLevel,
    @BloodID,
    @NPCSoundID,
    @ParticleColorID,
    @CreatureGeosetData,
    @ObjectEffectPackageID
);