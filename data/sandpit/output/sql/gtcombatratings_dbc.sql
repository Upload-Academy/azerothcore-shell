SET
@ID := {id},
@Data := {data};

DELETE FROM gtcombatratings_dbc WHERE
    ID=@ID
;

INSERT INTO gtcombatratings_dbc (
    ID,
    Data
)
VALUES (
    @ID,
    @Data
);