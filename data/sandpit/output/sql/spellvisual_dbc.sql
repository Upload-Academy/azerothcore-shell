SET
@ID := {id},
@PrecastKit := {precastkit},
@CastKit := {castkit},
@ImpactKit := {impactkit},
@StateKit := {statekit},
@StateDoneKit := {statedonekit},
@ChannelKit := {channelkit},
@HasMissile := {hasmissile},
@MissileModel := {missilemodel},
@MissilePathType := {missilepathtype},
@MissileDestinationAttachment := {missiledestinationattachment},
@MissileSound := {missilesound},
@AnimEventSoundID := {animeventsoundid},
@Flags := {flags},
@CasterImpactKit := {casterimpactkit},
@TargetImpactKit := {targetimpactkit},
@MissileAttachment := {missileattachment},
@MissileFollowGroundHeight := {missilefollowgroundheight},
@MissileFollowGroundDropSpeed := {missilefollowgrounddropspeed},
@MissileFollowGroundApproach := {missilefollowgroundapproach},
@MissileFollowGroundFlags := {missilefollowgroundflags},
@MissileMotion := {missilemotion},
@MissileTargetingKit := {missiletargetingkit},
@InstantAreaKit := {instantareakit},
@ImpactAreaKit := {impactareakit},
@PersistentAreaKit := {persistentareakit},
@MissileCastOffsetX := {missilecastoffsetx},
@MissileCastOffsetY := {missilecastoffsety},
@MissileCastOffsetZ := {missilecastoffsetz},
@MissileImpactOffsetX := {missileimpactoffsetx},
@MissileImpactOffsetY := {missileimpactoffsety},
@MissileImpactOffsetZ := {missileimpactoffsetz};

DELETE FROM spellvisual_dbc WHERE
    ID=@ID
;

INSERT INTO spellvisual_dbc (
    ID,
    PrecastKit,
    CastKit,
    ImpactKit,
    StateKit,
    StateDoneKit,
    ChannelKit,
    HasMissile,
    MissileModel,
    MissilePathType,
    MissileDestinationAttachment,
    MissileSound,
    AnimEventSoundID,
    Flags,
    CasterImpactKit,
    TargetImpactKit,
    MissileAttachment,
    MissileFollowGroundHeight,
    MissileFollowGroundDropSpeed,
    MissileFollowGroundApproach,
    MissileFollowGroundFlags,
    MissileMotion,
    MissileTargetingKit,
    InstantAreaKit,
    ImpactAreaKit,
    PersistentAreaKit,
    MissileCastOffsetX,
    MissileCastOffsetY,
    MissileCastOffsetZ,
    MissileImpactOffsetX,
    MissileImpactOffsetY,
    MissileImpactOffsetZ
)
VALUES (
    @ID,
    @PrecastKit,
    @CastKit,
    @ImpactKit,
    @StateKit,
    @StateDoneKit,
    @ChannelKit,
    @HasMissile,
    @MissileModel,
    @MissilePathType,
    @MissileDestinationAttachment,
    @MissileSound,
    @AnimEventSoundID,
    @Flags,
    @CasterImpactKit,
    @TargetImpactKit,
    @MissileAttachment,
    @MissileFollowGroundHeight,
    @MissileFollowGroundDropSpeed,
    @MissileFollowGroundApproach,
    @MissileFollowGroundFlags,
    @MissileMotion,
    @MissileTargetingKit,
    @InstantAreaKit,
    @ImpactAreaKit,
    @PersistentAreaKit,
    @MissileCastOffsetX,
    @MissileCastOffsetY,
    @MissileCastOffsetZ,
    @MissileImpactOffsetX,
    @MissileImpactOffsetY,
    @MissileImpactOffsetZ
);