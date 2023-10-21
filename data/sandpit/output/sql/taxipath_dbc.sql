SET
@ID := {id},
@FromTaxiNode := {fromtaxinode},
@ToTaxiNode := {totaxinode},
@Cost := {cost};

DELETE FROM taxipath_dbc WHERE
    ID=@ID
;

INSERT INTO taxipath_dbc (
    ID,
    FromTaxiNode,
    ToTaxiNode,
    Cost
)
VALUES (
    @ID,
    @FromTaxiNode,
    @ToTaxiNode,
    @Cost
);