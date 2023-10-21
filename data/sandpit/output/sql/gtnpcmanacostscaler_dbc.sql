SET
@ID := {id},
@Data := {data};

DELETE FROM gtnpcmanacostscaler_dbc WHERE
    ID=@ID
;

INSERT INTO gtnpcmanacostscaler_dbc (
    ID,
    Data
)
VALUES (
    @ID,
    @Data
);