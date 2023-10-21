SET
@ID := {id},
@ClassID := {classid},
@SubclassID := {subclassid},
@Sound_Override_Subclassid := {sound_override_subclassid},
@Material := {material},
@DisplayInfoID := {displayinfoid},
@InventoryType := {inventorytype},
@SheatheType := {sheathetype};

DELETE FROM item_dbc WHERE
    ID=@ID
;

INSERT INTO item_dbc (
    ID,
    ClassID,
    SubclassID,
    Sound_Override_Subclassid,
    Material,
    DisplayInfoID,
    InventoryType,
    SheatheType
)
VALUES (
    @ID,
    @ClassID,
    @SubclassID,
    @Sound_Override_Subclassid,
    @Material,
    @DisplayInfoID,
    @InventoryType,
    @SheatheType
);