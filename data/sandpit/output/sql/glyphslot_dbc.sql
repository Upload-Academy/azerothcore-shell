SET
@ID := {id},
@Type := {type},
@Tooltip := {tooltip};

DELETE FROM glyphslot_dbc WHERE
    ID=@ID
;

INSERT INTO glyphslot_dbc (
    ID,
    Type,
    Tooltip
)
VALUES (
    @ID,
    @Type,
    @Tooltip
);