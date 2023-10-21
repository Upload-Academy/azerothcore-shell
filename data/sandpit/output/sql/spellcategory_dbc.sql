SET
@ID := {id},
@Flags := {flags};

DELETE FROM spellcategory_dbc WHERE
    ID=@ID
;

INSERT INTO spellcategory_dbc (
    ID,
    Flags
)
VALUES (
    @ID,
    @Flags
);