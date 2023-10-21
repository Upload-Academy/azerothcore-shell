SET
@ID := {id},
@MinPlayersPerTeam := {minplayersperteam},
@MaxPlayersPerTeam := {maxplayersperteam},
@MinLvl := {minlvl},
@MaxLvl := {maxlvl},
@AllianceStartLoc := {alliancestartloc},
@AllianceStartO := {alliancestarto},
@HordeStartLoc := {hordestartloc},
@HordeStartO := {hordestarto},
@StartMaxDist := {startmaxdist},
@Weight := {weight},
@ScriptName := {scriptname},
@Comment := {comment};

DELETE FROM battleground_template WHERE
    ID=@ID
;

INSERT INTO battleground_template (
    ID,
    MinPlayersPerTeam,
    MaxPlayersPerTeam,
    MinLvl,
    MaxLvl,
    AllianceStartLoc,
    AllianceStartO,
    HordeStartLoc,
    HordeStartO,
    StartMaxDist,
    Weight,
    ScriptName,
    Comment
)
VALUES (
    @ID,
    @MinPlayersPerTeam,
    @MaxPlayersPerTeam,
    @MinLvl,
    @MaxLvl,
    @AllianceStartLoc,
    @AllianceStartO,
    @HordeStartLoc,
    @HordeStartO,
    @StartMaxDist,
    @Weight,
    @ScriptName,
    @Comment
);