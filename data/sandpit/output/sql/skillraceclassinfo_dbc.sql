SET
@ID := {id},
@SkillID := {skillid},
@RaceMask := {racemask},
@ClassMask := {classmask},
@Flags := {flags},
@MinLevel := {minlevel},
@SkillTierID := {skilltierid},
@SkillCostIndex := {skillcostindex};

DELETE FROM skillraceclassinfo_dbc WHERE
    ID=@ID
;

INSERT INTO skillraceclassinfo_dbc (
    ID,
    SkillID,
    RaceMask,
    ClassMask,
    Flags,
    MinLevel,
    SkillTierID,
    SkillCostIndex
)
VALUES (
    @ID,
    @SkillID,
    @RaceMask,
    @ClassMask,
    @Flags,
    @MinLevel,
    @SkillTierID,
    @SkillCostIndex
);