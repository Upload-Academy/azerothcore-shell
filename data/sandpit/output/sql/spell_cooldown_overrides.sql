SET
@Id := {id},
@RecoveryTime := {recoverytime},
@CategoryRecoveryTime := {categoryrecoverytime},
@StartRecoveryTime := {startrecoverytime},
@StartRecoveryCategory := {startrecoverycategory};

DELETE FROM spell_cooldown_overrides WHERE
    Id=@Id
;

INSERT INTO spell_cooldown_overrides (
    Id,
    RecoveryTime,
    CategoryRecoveryTime,
    StartRecoveryTime,
    StartRecoveryCategory
)
VALUES (
    @Id,
    @RecoveryTime,
    @CategoryRecoveryTime,
    @StartRecoveryTime,
    @StartRecoveryCategory
);