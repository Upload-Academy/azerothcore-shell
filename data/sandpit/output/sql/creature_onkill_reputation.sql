SET
@creature_id := {creature_id},
@RewOnKillRepFaction1 := {rewonkillrepfaction1},
@RewOnKillRepFaction2 := {rewonkillrepfaction2},
@MaxStanding1 := {maxstanding1},
@IsTeamAward1 := {isteamaward1},
@RewOnKillRepValue1 := {rewonkillrepvalue1},
@MaxStanding2 := {maxstanding2},
@IsTeamAward2 := {isteamaward2},
@RewOnKillRepValue2 := {rewonkillrepvalue2},
@TeamDependent := {teamdependent};

DELETE FROM creature_onkill_reputation WHERE
    creature_id=@creature_id
;

INSERT INTO creature_onkill_reputation (
    creature_id,
    RewOnKillRepFaction1,
    RewOnKillRepFaction2,
    MaxStanding1,
    IsTeamAward1,
    RewOnKillRepValue1,
    MaxStanding2,
    IsTeamAward2,
    RewOnKillRepValue2,
    TeamDependent
)
VALUES (
    @creature_id,
    @RewOnKillRepFaction1,
    @RewOnKillRepFaction2,
    @MaxStanding1,
    @IsTeamAward1,
    @RewOnKillRepValue1,
    @MaxStanding2,
    @IsTeamAward2,
    @RewOnKillRepValue2,
    @TeamDependent
);