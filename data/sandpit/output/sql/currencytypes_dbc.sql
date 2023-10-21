SET
@ID := {id},
@ItemID := {itemid},
@CategoryID := {categoryid},
@BitIndex := {bitindex};

DELETE FROM currencytypes_dbc WHERE
    ID=@ID
;

INSERT INTO currencytypes_dbc (
    ID,
    ItemID,
    CategoryID,
    BitIndex
)
VALUES (
    @ID,
    @ItemID,
    @CategoryID,
    @BitIndex
);