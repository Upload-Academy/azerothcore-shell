SET
@ID := {id},
@Data := {data};

DELETE FROM gtoctregenhp_dbc WHERE
    ID=@ID
;

INSERT INTO gtoctregenhp_dbc (
    ID,
    Data
)
VALUES (
    @ID,
    @Data
);