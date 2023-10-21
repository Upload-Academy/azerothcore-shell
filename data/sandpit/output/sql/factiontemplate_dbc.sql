SET
@ID := {id},
@Faction := {faction},
@Flags := {flags},
@FactionGroup := {factiongroup},
@FriendGroup := {friendgroup},
@EnemyGroup := {enemygroup},
@Enemies_1 := {enemies_1},
@Enemies_2 := {enemies_2},
@Enemies_3 := {enemies_3},
@Enemies_4 := {enemies_4},
@Friend_1 := {friend_1},
@Friend_2 := {friend_2},
@Friend_3 := {friend_3},
@Friend_4 := {friend_4};

DELETE FROM factiontemplate_dbc WHERE
    ID=@ID
;

INSERT INTO factiontemplate_dbc (
    ID,
    Faction,
    Flags,
    FactionGroup,
    FriendGroup,
    EnemyGroup,
    Enemies_1,
    Enemies_2,
    Enemies_3,
    Enemies_4,
    Friend_1,
    Friend_2,
    Friend_3,
    Friend_4
)
VALUES (
    @ID,
    @Faction,
    @Flags,
    @FactionGroup,
    @FriendGroup,
    @EnemyGroup,
    @Enemies_1,
    @Enemies_2,
    @Enemies_3,
    @Enemies_4,
    @Friend_1,
    @Friend_2,
    @Friend_3,
    @Friend_4
);