SET
@ID := {id},
@Cost := {cost};

DELETE FROM bankbagslotprices_dbc WHERE
    ID=@ID
;

INSERT INTO bankbagslotprices_dbc (
    ID,
    Cost
)
VALUES (
    @ID,
    @Cost
);