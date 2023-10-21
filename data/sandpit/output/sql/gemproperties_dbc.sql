SET
@ID := {id},
@Enchant_Id := {enchant_id},
@Maxcount_Inv := {maxcount_inv},
@Maxcount_Item := {maxcount_item},
@Type := {type};

DELETE FROM gemproperties_dbc WHERE
    ID=@ID
;

INSERT INTO gemproperties_dbc (
    ID,
    Enchant_Id,
    Maxcount_Inv,
    Maxcount_Item,
    Type
)
VALUES (
    @ID,
    @Enchant_Id,
    @Maxcount_Inv,
    @Maxcount_Item,
    @Type
);