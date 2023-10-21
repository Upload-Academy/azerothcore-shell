SET
@ID := {id},
@Cost := {cost};

DELETE FROM stableslotprices_dbc WHERE
    ID=@ID
;

INSERT INTO stableslotprices_dbc (
    ID,
    Cost
)
VALUES (
    @ID,
    @Cost
);